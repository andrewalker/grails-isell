<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <title><g:layoutTitle default="iSell"/></title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
  <g:layoutHead/>
</head>
<body>
  <div id="header">
    <div class="container">
      <div class="pull-left logo">
        <a href="/">
          <h1>iSell</h1>
        </a>
      </div>

      <div class="pull-right">
        <ul class="nav nav-pills pull-right">
          <li><a href="/isell/client/login">Login</a></li>
          <li><a href="/isell/client/signup">Cadastre-se</a></li>
        </ul>

        <div class="clearfix"></div>

        <div id="search_form">
          <form class="form-inline">

            <div class="form-group">
              <input type="text" id="header_search" class="form-control" placeholder="Encontre um produto">
            </div>
            <input type="submit" class="btn btn-warning" value="buscar">

          </form>
        </div>
      </div>

      <div class="clearfix"></div>
    </div><!-- end .container -->
  </div><!-- end #header -->
  
  <div id="menu">
    <div class="container">
      <ul class="nav nav-pills">
        <li><a href="/">Jogos</a></li>
        <li><a href="/">CDs</a></li>
        <li><a href="/">Livros</a></li>
        <li><a href="/">Tablets</a></li>
      </ul>
    </div><!-- end .container -->
  </div><!-- end #main_menu -->

<g:layoutBody/>

<div id="footer">
  <div class="container">

    <div class="row">
      <div class="col-md-4">
        <div class="logo">
          <h1>iSell</h1>
        </div>
      </div>

      <div class="col-md-4">
        <h3>A sua loja personalizada:</h3>
        <p>A iSell é uma loja personalizada para você. Com jogos, eletrônicos e livros, somos a mais completa solução, com preços muito baratos!</p>
      </div>

      <div class="col-md-4">
        <h3>Entre em contato</h3>
        <p><address>Rua Exemplo, 123, São Carlos - SP</address></p>
        <p>
          <strong>Telefone: </strong>(DDD) 1234-5678<br>
          <strong>E-mail: </strong>contatoisell.com.br
        </p>
      </div>
    </div><!-- end .row -->

  </div><!-- end .container -->
</div><!-- end #footer -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'scripts.js')}"></script>
</body>
</html>
