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

                    <table class="table table-bordered checkout-table">
                        <thead>
                            <tr>
                                <th style="width: 10%;">Quantidade</th>
                                <th style="width: 75%;">Produto</th>
                                <th style="width: 15%;">Valor</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="product-1">
                                <td class="text-center">1</td>
                                <td>Battlefield 4</td>
                                <td>R$ 1.200,00</td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="text-right">
                        <a href="shopping_cart.html" class="btn btn-warning btn-lg">Alterar Produtos</a>
                    </div>

                    <p>&nbsp;</p>
                    <hr>

                    <div class="row">
                        <div class="col-md-6">
                            <p class="lead">Dados do Comprador</p>

                            <dl class="dl-horizontal">
                              <dt>Nome</dt>
                              <dd>Fulano de Tal</dd>

                              <dt>Telefone</dt>
                              <dd>(xx) 1234-5678</dd>

                              <dt>CPF</dt>
                              <dd>123.456.789-10</dd>

                              <dt>Email</dt>
                              <dd></dd>
                            </dl>

                        </div>

                        <div class="col-md-6">
                            <p class="lead">&nbsp;</p>
                            <dl class="dl-horizontal">
                              <dt>Total dos Produtos</dt>
                              <dd>R$ 1.200,00</dd>

                              <dt>Frete</dt>
                              <dd>R$ 30,00</dd>

                              <dt>Total da Compra</dt>
                              <dd>R$ 1.230,00</dd>
                            </dl>
                        </div>
                    </div><!-- end .row -->

                    <div class="row">

                        <div class="col-md-3">
                            <p class="lead">Endereço</p>
                            <address>
                                Rua Teste, 123 <br>
                                São Carlos - SP<br>
                                CEP 12345-678
                            </address>
                        </div>

                        <div class="col-md-3">
                            <p class="lead">Método de Envio</p>

                            <div class="radio">
                                <label>
                                    <input type="radio" name="shipping_method" id="shipping_method_sedex" value="sedex"> Sedex
                                </label>
                            </div>

                            <div class="radio">
                                <label>
                                    <input type="radio" name="shipping_method" id="shipping_method_pac" value="pac"> PAC
                                </label>
                            </div>

                            <div class="radio">
                                <label>
                                    <input type="radio" name="shipping_method" id="shipping_method_none" value="none"> Retirar na loja
                                </label>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <p class="lead">Forma de Pagamento</p>

                            <div class="radio">
                                <label>
                                    <input type="radio" name="payment_method" id="payment_method_cast" value="cash"> Depósito à Vista
                                </label>
                            </div>

                            <div class="radio">
                                <label>
                                    <input type="radio" name="payment_method" id="payment_method_pagseguro" value="pagseguro"> PagSeguro
                                </label>
                            </div>
                        </div>

                    </div><!-- end .row -->

                    <p>&nbsp;</p>
                    <hr>

                    <div class="text-right">
                        <a href="#" class="btn btn-success btn-lg">Pagar e Finalizar</a>
                    </div>


                </div>

            </div><!-- end .container -->
        </div><!-- end #content -->
  </body>
</html>