<%@ page import="br.ufscar.isell.Payment" %>



<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="payment.comments.label" default="Comments" />
		
	</label>
	<g:textField name="comments" value="${paymentInstance?.comments}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'confirmedAt', 'error')} required">
	<label for="confirmedAt">
		<g:message code="payment.confirmedAt.label" default="Confirmed At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="confirmedAt" precision="day"  value="${paymentInstance?.confirmedAt}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'startedAt', 'error')} required">
	<label for="startedAt">
		<g:message code="payment.startedAt.label" default="Started At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startedAt" precision="day"  value="${paymentInstance?.startedAt}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: paymentInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="payment.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${paymentInstance?.status}"/>
</div>

