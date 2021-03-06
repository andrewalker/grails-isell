<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="user"/>
    <title>iSell - Seu Site de Compras</title>

  </head>
  <body>
    <div id="content">
      <div class="container">

        <div class="page-title">
          <h1>Carrinho de Compras</h1>
        </div>

        <div class="page-content">

          <table class="table checkout-table">
            <thead>
              <tr>
                <th style="width: 10%;">Quantidade</th>
                <th style="width: 60%;">Produto</th>
                <th style="width: 15%;">Valor</th>
                <th style="width: 15%;"></th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td class="text-center">10</td>
                <td>Total</td>
                <td>R$ 2.400,00</td>
                <td class="text-center"><a href="#" class="btn btn-warning" >Limpar Tudo</a></td>
              </tr>
            </tfoot>
            <tbody>
              <tr id="product-1">
                <td class="text-center"><input type="number" class="form-control" value="1"></td>
                <td>Battlefield 4</td>
                <td>R$ 1.200,00</td>
                <td class="text-center"><a href="#"><span class="glyphicon glyphicon-trash"></span> Remover</a></td>
              </tr>
            </tbody>
          </table>

          <p>&nbsp;</p>
          <hr>

          <div class="text-right">
            <a href="/isell/shoppingOrder/checkout" class="btn btn-success btn-lg">Finalizar Compra</a>
          </div>

        </div>

      </div><!-- end .container -->
    </div><!-- end #content -->
  </body>
</html>