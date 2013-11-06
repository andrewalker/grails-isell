package br.ufscar.isell

class Product {

    ProductCategory category
    String name
    Float price
    Integer year
    Integer amountInStock
    String description

    static hasMany = [ orders: ShoppingOrder ]

    static constraints = {
        name blank: false
    }
}
