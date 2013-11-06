package br.ufscar.isell

class Product {

    String name
    Float price
    Integer year
    Integer amount_in_stock
    String description

    static hasMany = [ categories: ProductCategory, orders: ShoppingOrder ]

    static constraints = {
        name blank: false
    }
}
