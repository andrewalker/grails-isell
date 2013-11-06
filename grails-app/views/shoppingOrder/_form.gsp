<%@ page import="br.ufscar.isell.ShoppingOrder" %>



<div class="fieldcontain ${hasErrors(bean: shoppingOrderInstance, field: 'client', 'error')} required">
	<label for="client">
		<g:message code="shoppingOrder.client.label" default="Client" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="client" name="client.id" from="${br.ufscar.isell.Client.list()}" optionKey="id" required="" value="${shoppingOrderInstance?.client?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingOrderInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="shoppingOrder.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${shoppingOrderInstance?.createdAt}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingOrderInstance, field: 'payments', 'error')} ">
	<label for="payments">
		<g:message code="shoppingOrder.payments.label" default="Payments" />
		
	</label>
	<g:select name="payments" from="${br.ufscar.isell.Payment.list()}" multiple="multiple" optionKey="id" size="5" value="${shoppingOrderInstance?.payments*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingOrderInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="shoppingOrder.products.label" default="Products" />
		
	</label>
	
</div>

