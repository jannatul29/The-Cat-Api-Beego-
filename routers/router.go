package routers

import (
	"myproject/controllers"

	beego "github.com/beego/beego/v2/server/web"
)

func init() {
	beego.Router("/", &controllers.MainController{})
}
func init() {
	beego.Router("/cat", &controllers.CatController{})
}

func init() {
	beego.Router("/cato", &controllers.CatogeryController{})
}
