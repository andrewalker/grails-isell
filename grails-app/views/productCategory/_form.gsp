<%@ page import="br.ufscar.isell.ProductCategory" %>



<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="productCategory.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productCategoryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="productCategory.products.label" default="Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productCategoryInstance?.products?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['productCategory.id': productCategoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>

</div>

