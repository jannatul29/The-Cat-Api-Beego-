package controllers

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"

	"github.com/beego/beego/v2/client/httplib"
	beego "github.com/beego/beego/v2/server/web"
)

type MainController struct {
	beego.Controller
}
type CatController struct {
	beego.Controller
}
type CatogeryController struct {
	beego.Controller
}

type Data1 []struct {
	ID         string `json:"id"`
	Url        string `json:"url"`
	Width      string `json:"width"`
	Height     string `json:"height"`
	Mime_type  string `json:"mime_type"`
	Entities   string `json:"entities"`
	Breeds     string `json:"breeds"`
	Animals    string `json:"animals"`
	Categories string `json:"categories"`
}

type Data2 []struct {
	Id   int    `json:"id"`
	Name string `json:"name"`
}

func (c *MainController) Get() {
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.Data["Img"] = "https://cdn2.thecatapi.com/images/7a5.jpg"
	c.TplName = "index.tpl"
}

func (c *CatogeryController) Get() {
	req := httplib.Get("https://api.thecatapi.com/v1/categories")
	req.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	resp, err := req.Response()
	if err != nil {
		log.Fatal(err)
	}
	var Catogery Data2
	body, _ := ioutil.ReadAll(resp.Body)
	//var Catogery Data2
	err = json.Unmarshal(body, &Catogery)
	c.Data["json"] = &Catogery
	c.ServeJSON()
	//req := httplib.Get("https://api.thecatapi.com/v1/breeds")

	// req := httplib.Get("https://api.thecatapi.com/v1/categories")
	// req.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	// //resp, err := req.String()
	// resp, err := req.Response()
	// if err != nil {
	// 	log.Fatal(err)
	// }
	// var result Data2
	// //json.Unmarshal([]byte(resp), &result)
	// body, _ := ioutil.ReadAll(resp.Body)
	// err = json.Unmarshal(body, &result)
	// c.Data["json"] = &result
	// c.ServeJSON()

}

func (c *CatController) Get() {
	page := c.GetString("page")
	limit := c.GetString("limit")
	breed := c.GetString("breed_id")
	mime := c.GetString("mime_types")
	order := c.GetString("order")
	var lim = ""
	if limit == "" {
		data, err2 := ioutil.ReadFile("myfile.data")
    	if err2 != nil {
        	fmt.Println(err2)
    	}
		fmt.Print("----------------------------")
    	fmt.Print(string(data))
		lim = string(data)
		limit = lim
	} else{
		mydata := []byte(limit)
   		err1 := ioutil.WriteFile("myfile.data", mydata, 0777)
    	if err1 != nil {
        	fmt.Println(err1)
    	}
	}

	// if limit == "" {
	// 	limit = lim
	// } else{
	// 	lim = string(limit)
	// }
	// fmt.Print("----------------------------")
	fmt.Println(string(limit))
	fmt.Println(string(lim))

	req := httplib.Get("https://api.thecatapi.com/v1/images/search")
	req.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	// req.Param("limit", "6")
	// req.Param("page", "3")
	// req.Param("breed", "Abyssinian")
	req.Param("limit", limit)
	req.Param("page", page)
	req.Param("breed_id", breed)
	req.Param("mime_types", mime)
	req.Param("order", order)
	//resp, err := req.Response()
	resp, err := req.Response()
	if err != nil {
		log.Fatal(err)
	}
	// if resp != nil {
	// 	fmt.Println("notfound")
	// } else {
	// 	body, _ := ioutil.ReadAll(resp.Body)
	// 	var F Data1
	// 	err = json.Unmarshal(body, &F)
	// 	//c.Data["F"] = &F
	// }
	body, _ := ioutil.ReadAll(resp.Body)

	var F Data1

	err = json.Unmarshal(body, &F)

	//fmt.Printf("%+v", f[0].Body)

	for i := 0; i < len(F); i++ {
		fmt.Println(F[i].Url)
	}

	// mydata := []byte(limit)
    // err1 := ioutil.WriteFile("myfile.data", mydata, 0777)
    // if err1 != nil {
    //     fmt.Println(err1)
    // }
	// data, err2 := ioutil.ReadFile("myfile.data")
    // if err2 != nil {
    //     fmt.Println(err2)
    // }
	// fmt.Print("----------------------------")
    // fmt.Print(string(data))


	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.Data["Img"] = F[0].Url
	c.Data["F"] = &F
	c.TplName = "index.tpl"
}
