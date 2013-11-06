<%@ page import="br.ufscar.isell.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'amountInStock', 'error')} required">
	<label for="amountInStock">
		<g:message code="product.amountInStock.label" default="Amount In Stock" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amountInStock" type="number" value="${productInstance.amountInStock}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${br.ufscar.isell.ProductCategory.list()}" optionKey="id" required="" value="${productInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'orders', 'error')} ">
	<label for="orders">
		<g:message code="product.orders.label" default="Orders" />
		
	</label>
	<g:select name="orders" from="${br.ufscar.isell.ShoppingOrder.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.orders*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: productInstance, field: 'price')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'year', 'error')} required">
	<label for="year">
		<g:message code="product.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="year" type="number" value="${productInstance.year}" required=""/>
</div>

