<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="user"/>
		<title>iSell - Seu Site de Compras</title>
		
	</head>
	<body>
		        <div id="content">
            <div class="container">

                <div class="row">

                    <div class="col-md-3">
                        <div class="search_filters">

                            <form id="search_filters">

                                <p class="lead">Filtros</p>

                                <div class="one_filter">
                                    <div class="filter_title">
                                        <strong>Categorias</strong>
                                    </div>

                                        <div class="filter_content">

                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="categories" value="jogos"> Jogos
                                            </label>
                                        </div>

                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="categories" value="cdds"> CDs
                                            </label>
                                        </div>

                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="categories" value="livros"> Livros
                                            </label>
                                        </div>

                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="categories" value="tablets"> Tablets
                                            </label>
                                        </div>

                                        <div class="text-right">
                                            <input type="submit" class="btn btn-warning" value="Filtrar">
                                        </div>
                                    </div><!-- end .filter_content -->
                                </div><!-- end .one_filter -->

                                <div class="one_filter">
                                    <div class="filter_title">
                                        <strong>Faixa de Preço</strong>
                                    </div>

                                    <div class="filter_content">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="min_price">De</label>
                                                    <input type="text" class="form-control" id="min_price">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="max_price">Até</label>
                                                    <input type="text" class="form-control" id="max_price">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="text-right">
                                            <input type="submit" class="btn btn-warning" value="Filtrar">
                                        </div>
                                    </div><!-- end .filter_content -->
                                </div><!-- end .one_filter -->

                            </form><!-- end #search_filters -->

                        </div><!-- end .search_filters -->
                    </div><!-- end .col-md-3 -->

                    <div class="col-md-9">
                        <div class="info_filters">
                            <div class="pull-left">
                                <p class="lead">26 Produtos Encontrados</p>
                            </div>

                            <div class="pull-right">
                                <dl class="dl-horizontal">
                                    <dt>Ordenar</dt>
                                    <dd>
                                        <select id="orderby" class="form-control">
                                            <option value="name">Por nome</option>
                                            <option value="price_asc">Menor preço</option>
                                            <option value="price_dsc">Maior preço</option>
                                        </select>
                                    </dd>
                                </dl>
                            </div>

                            <div class="clearfix"></div>
                        </div><!-- end .info_filters -->

                        <div class="product_list">
                            <div class="row">

                                <div class="col-md-4">
                                    <div class="one_product thumbnail">
                                        <div class="title"><strong>Battlefield 4</strong></div>

                                        <img src="images/example/3.jpg" alt="Battlefield 4">

                                        <div class="caption">
                                            <div class="pull-left price">
                                                <strong>R 120,00</strong>
                                            </div>
                                            <div class="pull-right conditions">
                                                <small>
                                                    ou 10x<br>
                                                    R 12,00 s/ juros
                                                </small>
                                            </div>

                                            <div class="clearfix"></div>

                                            <div class="text-right purchase">
                                                <a href="/isell/product/details">Ver Produto</a>
                                            </div>
                                        </div>
                                    </div><!-- end .one-product -->
                                </div><!-- end .col-md-3 -->

                                <div class="col-md-4">
                                    <div class="one_product thumbnail">
                                        <div class="title">
                                            <strong>Produto com um nome bem logo, para teste</strong>
                                        </div>

                                        <img src="images/example/3.jpg" alt="Battlefield 4">

                                        <div class="caption">
                                            <div class="pull-left price">
                                                <strong>R 120,00</strong>
                                            </div>
                                            <div class="pull-right conditions">
                                                <small>
                                                    ou 10x<br>
                                                    R 12,00 s/ juros
                                                </small>
                                            </div>

                                            <div class="clearfix"></div>

                                            <div class="text-right purchase">
                                                <a href="/isell/product/details">Ver Produto</a>
                                            </div>
                                        </div>
                                    </div><!-- end .one-product -->
                                </div>

                                <div class="col-md-4">
                                </div>

                            </div><!-- end .row -->
                        </div><!-- end .product_list -->

                        <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>

                    </div><!-- end .col-md-9 -->

                </div><!-- end .row -->

            </div><!-- end .container -->
        </div><!-- end #content -->
	</body>
</html>