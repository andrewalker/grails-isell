class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'MainPage', action: 'index')
        "/admin"(view: '/admin/login')
        "500"(view:'/error')
	}
}
