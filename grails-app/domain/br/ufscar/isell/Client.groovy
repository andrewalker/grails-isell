package br.ufscar.isell

class Client {

    String firstName
    String lastName
    String address
    String city
    String state
    String email
    String telephone
    String cpf

    static hasMany = [ orders: ShoppingOrder ]

    static constraints = {
        firstName blank: false
        lastName blank: false
        email blank: false, unique: true
        cpf blank: false, unique: true
    }

    String toString() {
        return this.firstName + ' ' + this.lastName;
    }
}
