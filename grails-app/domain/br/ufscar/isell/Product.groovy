package br.ufscar.isell

class Product {

    ProductCategory category
    String name
    Float price
    Integer year
    Integer amountInStock
    String description

    

    static constraints = {
        name blank: false
    }

    static mapping = {
        description type: 'text'
    }

    String toString() {
        return this.name;
    }
}
