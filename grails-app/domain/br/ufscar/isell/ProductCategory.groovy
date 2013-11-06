package br.ufscar.isell

class ProductCategory {

    String name

    static hasMany = [ products: Product ]

    static constraints = {
        name blank: false
    }

    String toString() {
        return this.name;
    }
}
