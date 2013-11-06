
<%@ page import="br.ufscar.isell.UserSec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userSec.label', default: 'UserSec')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userSec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userSec" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'userSec.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'userSec.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'userSec.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'userSec.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'userSec.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="passwordExpired" title="${message(code: 'userSec.passwordExpired.label', default: 'Password Expired')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userSecInstanceList}" status="i" var="userSecInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userSecInstance.id}">${fieldValue(bean: userSecInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: userSecInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${userSecInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${userSecInstance.accountLocked}" /></td>
					
						<td><g:formatBoolean boolean="${userSecInstance.enabled}" /></td>
					
						<td><g:formatBoolean boolean="${userSecInstance.passwordExpired}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userSecInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
