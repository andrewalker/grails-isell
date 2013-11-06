<%@ page import="br.ufscar.isell.UserSec" %>



<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="userSec.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userSecInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="userSec.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userSecInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="userSec.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userSecInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="userSec.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userSecInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="userSec.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userSecInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="userSec.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userSecInstance?.passwordExpired}" />
</div>

