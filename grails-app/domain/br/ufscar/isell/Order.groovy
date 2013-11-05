package br.ufscar.isell

class Order {

    Date when

    static hasMany = [ products: Product, payments: Payment ]
    static belongsTo = [ client: Client ]

    static constraints = {
    }
}
