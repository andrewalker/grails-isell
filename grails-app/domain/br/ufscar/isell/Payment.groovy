package br.ufscar.isell

class Payment {

    Date startedAt = new Date()
    Date confirmedAt
    String status
    String comments

    static belongsTo = ShoppingOrder

    static constraints = {
    }
}
