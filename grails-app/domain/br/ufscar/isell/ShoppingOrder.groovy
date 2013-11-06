package br.ufscar.isell

class ShoppingOrder {

    Client client
    Date createdAt = new Date()

    static hasMany = [ products: Product, payments: Payment ]
    static belongsTo = Product

    static constraints = {
    }
}
