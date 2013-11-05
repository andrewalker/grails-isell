package br.ufscar.isell

class ProductCategory {

    String name

    static belongsTo = [ product: Product ]

    static constraints = {
        name blank: false
    }
}
