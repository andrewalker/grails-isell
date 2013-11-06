package br.ufscar.isell

class ShoppingOrder {

    Client client
    Date createdAt = new Date()

    static hasMany = [ products: Product, payments: Payment ]
    static belongsTo = Product

    static constraints = {
    }

    String toString() {
        return this.client + ' - ' + this.createdAt.format('dd/MM/yyyy')
    }
}
