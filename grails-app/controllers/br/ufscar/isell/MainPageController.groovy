package br.ufscar.isell

class MainPageController {

	def index() {
		respond Product.list(params), model:[productInstanceCount: Product.count()]
	}
}
