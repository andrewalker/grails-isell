class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view: '/mainPage/index')
        "/admin"(view: '/admin/login')
        "500"(view:'/error')
	}
}
