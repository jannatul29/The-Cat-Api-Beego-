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
type Data3 []struct {
	Id   string    `json:"id"`
	Name string `json:"name"`
}

func (c *MainController) Get() {
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.Data["Img"] = "https://cdn2.thecatapi.com/images/7a5.jpg"
	c.TplName = "index.tpl"
}

func (c *CatogeryController) Get() {
	req2 := httplib.Get("https://api.thecatapi.com/v1/categories")
	req2.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	resp2, err21 := req2.Response()
	if err21 != nil {
		log.Fatal(err21)
	}
	var Category Data2
	body2, _ := ioutil.ReadAll(resp2.Body)
	//var Catogery Data2
	err21 = json.Unmarshal(body2, &Category)
	c.Data["json"] = &Category
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
	req1 := httplib.Get("https://api.thecatapi.com/v1/breeds")
	req1.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	resp1, err20 := req1.Response()
	if err20 != nil {
		log.Fatal(err20)
	}
	var Bd Data3
	body1, _ := ioutil.ReadAll(resp1.Body)
	err20 = json.Unmarshal(body1, &Bd)
	c.Data["B"] = &Bd


	req2 := httplib.Get("https://api.thecatapi.com/v1/categories")
	req2.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	resp2, err21 := req2.Response()
	if err21 != nil {
		log.Fatal(err21)
	}
	var Category Data2
	body2, _ := ioutil.ReadAll(resp2.Body)
	err21 = json.Unmarshal(body2, &Category)
	c.Data["C"] = &Category


	page := c.GetString("page")
	limit := c.GetString("limit")
	breed := c.GetString("breed_id")
	mime := c.GetString("mime_types")
	order := c.GetString("order")
	category := c.GetString("category_ids")
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
	} else {
		mydata := []byte(limit)
		err1 := ioutil.WriteFile("myfile.data", mydata, 0777)
		if err1 != nil {
			fmt.Println(err1)
		}
	}

	// // if limit == "" {
	// // 	limit = lim
	// // } else{
	// // 	lim = string(limit)
	// // }
	// // fmt.Print("----------------------------")
	// fmt.Println(string(limit))
	// fmt.Println(string(lim))

	var brd = ""
	if breed == "" {
		data1, err3 := ioutil.ReadFile("breed.data")
		if err3 != nil {
			fmt.Println(err3)
		}
		fmt.Print("----------------------------")
		fmt.Print(string(data1))
		brd = string(data1)
		breed = brd
	} else {
		mydata1 := []byte(breed)
		err3 := ioutil.WriteFile("breed.data", mydata1, 0777)
		if err3 != nil {
			fmt.Println(err3)
		}
	}

	var mm = ""
	if mime == "" {
		data2, err4 := ioutil.ReadFile("mime.data")
		if err4 != nil {
			fmt.Println(err4)
		}
		fmt.Print("----------------------------")
		fmt.Print(string(data2))
		mm = string(data2)
		mime = mm
	} else {
		mydata2 := []byte(mime)
		err4 := ioutil.WriteFile("mime.data", mydata2, 0777)
		if err4 != nil {
			fmt.Println(err4)
		}
	}

	var ordr = ""
	if order == "" {
		data3, err5 := ioutil.ReadFile("order.data")
		if err5 != nil {
			fmt.Println(err5)
		}
		fmt.Print("----------------------------")
		fmt.Print(string(data3))
		ordr = string(data3)
		order = ordr
	} else {
		mydata3 := []byte(order)
		err5 := ioutil.WriteFile("order.data", mydata3, 0777)
		if err5 != nil {
			fmt.Println(err5)
		}
	}

	req := httplib.Get("https://api.thecatapi.com/v1/images/search")
	req.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	// req.Param("limit", "6")
	// req.Param("page", "3")
	// req.Param("breed", "Abyssinian")
	req.Param("limit", "9")
	req.Param("page", page)
	req.Param("breed_id", breed)
	req.Param("mime_types", mime)
	req.Param("order", order)
	req.Param("category_ids", category)
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

	for i := 0; i < len(F); i++ {
		fmt.Println(F[i].Url)
	}
	c.Data["F"] = &F
	c.TplName = "index.tpl"
}
