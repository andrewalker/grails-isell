<div class="nav" role="navigation">
    <ul>
        <li><a href="${createLink(uri: '/product/index')}"><g:message code="product.label" default="Produtos" /></a></li>
        <li><a href="${createLink(uri: '/productCategory/index')}"><g:message code="productCategory.label" default="Categorias" /></a></li>
        <li><a href="${createLink(uri: '/client/index')}"><g:message code="client.label" default="Clientes" /></a></li>
        <li><a href="${createLink(uri: '/shoppingOrder/index')}"><g:message code="shoppingOrder.label" default="Pedidos" /></a></li>
        <li><a href="${createLink(uri: '/payment/index')}"><g:message code="payment.label" default="Pagamentos" /></a></li>
        <li>
            <form action="${createLink(uri: '/logout')}" method="post">
                <a href="#" id="logout_link"><g:message code="default.logout.label" default="Sair" /></a>
            </form>
        </li>
    </ul>
</div>
<script type="text/javascript">
jQuery(function ($) {
    $('#logout_link').click(function (e) {
        e.preventDefault();
        $(this).parent()[0].submit();
        return false;
    });
});
</script>
