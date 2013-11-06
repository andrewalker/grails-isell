<%@ page import="br.ufscar.isell.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="client.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${clientInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="client.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${clientInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="client.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${clientInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="client.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${clientInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="client.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${clientInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="client.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${clientInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'orders', 'error')} ">
	<label for="orders">
		<g:message code="client.orders.label" default="Orders" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clientInstance?.orders?}" var="o">
    <li><g:link controller="shoppingOrder" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="shoppingOrder" action="create" params="['client.id': clientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'shoppingOrder.label', default: 'ShoppingOrder')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="client.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${clientInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'telephone', 'error')} ">
	<label for="telephone">
		<g:message code="client.telephone.label" default="Telephone" />
		
	</label>
	<g:textField name="telephone" value="${clientInstance?.telephone}"/>
</div>

