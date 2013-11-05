package br.ufscar.isell

class Payment {

    Date started_at
    Date confirmed_at
    String status
    String comments

    static belongsTo = Order

    static constraints = {
    }
}
