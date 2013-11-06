package br.ufscar.isell

class Product {

    ProductCategory category
    String name
    Float price
    Integer year
    Integer amount_in_stock
    String description

    static hasMany = [ orders: ShoppingOrder ]

    static constraints = {
        name blank: false
    }
}
