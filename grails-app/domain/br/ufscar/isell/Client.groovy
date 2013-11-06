package br.ufscar.isell

class Client {

    String first_name
    String last_name
    String address
    String city
    String state
    String email
    String telephone
    String cpf

    static hasMany = [ orders: ShoppingOrders ]

    static constraints = {
        first_name blank: false
        last_name blank: false
        email blank: false, unique: true
        cpf blank: false, unique: true
    }
}
