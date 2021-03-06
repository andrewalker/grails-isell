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
          <h1>Cadastre-se</h1>
        </div>

        <div class="page-content">
          <div class="row">
            <form class="form-horizontal">
              <div class="col-md-6">

                <div class="form-group">
                  <label class="control-label col-sm-2" for="name">Nome</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="name" type="text">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-2" for="last_name">Sobrenome</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="last_name" type="text">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-2" for="cpf">CPF</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="cpf" type="text">
                  </div>
                </div>

                <p>&nbsp;</p>

                <div class="form-group">
                  <label class="control-label col-sm-2" for="phone">Telefone</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="phone" type="text">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-2" for="address">Endereço</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="address" type="text">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-2" for="city">Cidade</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="city" type="text">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-2" for="state">Estado</label>
                  <div class="col-sm-10">
                    <select class="form-control" id="state">
                      <option value="sp">São Paulo</option>
                    </select>
                  </div>
                </div>

              </div>

              <div class="col-md-6">

                <p class="lead">Dados de sua conta</p>

                <div class="form-group">
                  <label class="control-label col-sm-2" for="login">Login</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="login" type="text" placeholder="Ex: email@provedor.com.br">
                  </div>
                </div>

                <p>&nbsp;</p>

                <div class="form-group">
                  <label class="control-label col-sm-2" for="password">Senha</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="password" type="password">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-2" for="confirm_password">Confirmar</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="confirm_password" type="password">
                  </div>
                </div>

                <p>&nbsp;</p>

                <input type="submit" class="btn btn-success" value="Criar conta"> &nbsp; <em>Declaro que li e aceito os termos e condições.</em>
              </div>

            </form>
            <hr>

          </div><!-- end .row -->
        </div><!-- end .page-content -->

      </div><!-- end .container -->
    </div><!-- end #content -->
  </body>
</html>