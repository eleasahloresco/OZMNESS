
<%@ page import="com.onb.ozmness.Employee" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="admin" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/front/adminIndex')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'employee.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="username" title="${message(code: 'employee.username.label', default: 'Username')}" />
                        
                            <g:sortableColumn property="password" title="${message(code: 'employee.password.label', default: 'Password')}" />
                        
                            <g:sortableColumn property="accountExpired" title="${message(code: 'employee.accountExpired.label', default: 'Account Expired')}" />
                        
                            <g:sortableColumn property="accountLocked" title="${message(code: 'employee.accountLocked.label', default: 'Account Locked')}" />
                        
                            <g:sortableColumn property="enabled" title="${message(code: 'employee.enabled.label', default: 'Enabled')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: employeeInstance, field: "username")}</td>
                        
                            <td>${fieldValue(bean: employeeInstance, field: "password")}</td>
                        
                            <td><g:formatBoolean boolean="${employeeInstance.accountExpired}" /></td>
                        
                            <td><g:formatBoolean boolean="${employeeInstance.accountLocked}" /></td>
                        
                            <td><g:formatBoolean boolean="${employeeInstance.enabled}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${employeeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
