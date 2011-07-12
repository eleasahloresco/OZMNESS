<%@ page import="com.onb.ozmness.Rating" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="admin" />
        <g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>


	<div class="body">
	<h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
		<table>		
		   <tbody>
			<tr class="prop">
				<td valign="top" class="name">Rate Yourself</td>
                            
                        </tr>
			

			<tr class="prop">
				<td valign="top" class="name">Rate As Mentor</td>
			</tr>
	
			<g:each in="${mentees}" status="i" var="meentees">
			<tr>
				<td></td>
				<td>${meentees}</td>
			</tr>
			</g:each>
		
			<tr class="prop">
				<td valign="top" class="name">Rate As Tech Lead</td>
			</tr>

			<g:each in="${projects}" status="i" var="project">
			<tr>
				<td></td>
				<td>${fieldValue(bean: project, field: "name")}</td>
			</tr>
			
			<g:each in="${project.employees}" status="j" var="employee">
			<tr>
				<td></td>
				<td></td>
				<td>${employee}</td>
			</tr>
			</g:each>

			</tr>
			</g:each>
			
			


		    </tbody>
		</table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${ratingInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
