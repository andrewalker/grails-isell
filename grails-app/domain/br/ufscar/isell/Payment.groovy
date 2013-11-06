package br.ufscar.isell

class Payment {

    Date started_at = new Date()
    Date confirmed_at
    String status
    String comments

    static belongsTo = ShoppingOrder

    static constraints = {
    }
}
