<%@ page import="com.onb.ozmness.Employee" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>	
			<h1>Dashboard</h1>		
			${employee.firstName}&nbsp${employee.lastName}
			${employee.position}
			<g:select name="project.name" from="${projects}" optionKey="id" optionValue="name"/>

			<table border = "1">
				<tr>				
					<th>technology</th>
					<th>rating</th>
				</tr>
				<g:each in="${ratings}" var="rating">
					<tr>
						<td>${rating.technology}<td>
						<td>${rating.value}</td>
					</tr>				
				</g:each> 
			</table>	
			
  </body>
</html>
