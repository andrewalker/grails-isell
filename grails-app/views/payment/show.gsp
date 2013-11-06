
<%@ page import="br.ufscar.isell.Payment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payment.label', default: 'Payment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="/layouts/menu"/>
		<a href="#show-payment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-payment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list payment">
			
				<g:if test="${paymentInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="payment.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${paymentInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentInstance?.confirmedAt}">
				<li class="fieldcontain">
					<span id="confirmedAt-label" class="property-label"><g:message code="payment.confirmedAt.label" default="Confirmed At" /></span>
					
						<span class="property-value" aria-labelledby="confirmedAt-label"><g:formatDate date="${paymentInstance?.confirmedAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentInstance?.startedAt}">
				<li class="fieldcontain">
					<span id="startedAt-label" class="property-label"><g:message code="payment.startedAt.label" default="Started At" /></span>
					
						<span class="property-value" aria-labelledby="startedAt-label"><g:formatDate date="${paymentInstance?.startedAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="payment.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${paymentInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:paymentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${paymentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
