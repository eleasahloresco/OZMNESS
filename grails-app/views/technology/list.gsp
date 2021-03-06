
<%@ page import="com.onb.ozmness.Technology" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="admin" />
        <g:set var="entityName" value="${message(code: 'technology.label', default: 'Technology')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'technology.id.label', default: 'Id')}" />
                        
                            <th><g:message code="technology.parent.label" default="Parent" /></th>
                        
                            <g:sortableColumn property="name" title="${message(code: 'technology.name.label', default: 'Name')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${technologyInstanceList}" status="i" var="technologyInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${technologyInstance.id}">${fieldValue(bean: technologyInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: technologyInstance, field: "parent")}</td>
                        
                            <td>${fieldValue(bean: technologyInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${technologyInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
