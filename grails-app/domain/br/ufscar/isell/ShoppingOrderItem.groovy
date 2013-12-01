package br.ufscar.isell

class ShoppingOrderItem implements Serializable {

    ShoppingOrder shoppingOrder
    int quantity
    Product product
    
    static belongsTo = [ShoppingOrder, Product]
 static mapping = {
      id composite: ['shoppingOrder', 'product']
 }
    static constraints = {
    }
}
