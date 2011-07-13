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
			<g:if test="${flash.message}">
				${flash.message}
			</g:if>			
			${employee.firstName}&nbsp${employee.lastName}
			${employee.position}
			<g:select name="project.name" from="${projects}" optionKey="id" optionValue="name"/>

			<table border = "1">
				<tr>				
					<th>technology</th>
					<th>rating</th>
					<th>comment</th>
				</tr>
				<g:form name="rating" url="[controller:'rating',action:'saveAll']">
				<g:each in="${ratings}" var="rating">
						<tr>
							<td>${rating.technology}</td>
							<input type="hidden" name="technology" value="${rating.technology.id}"/>	
							<td>
							<select name="value">
							  <option value="1">1</option>
							  <option value="2">2</option>
							  <option value="3">3</option>
							</select>
							</td>
							<td><textarea name="comment">comment here</textarea>
							</td>
						</tr>		
				</g:each> 
				<input type="hidden" name="ratedId" value="${employee.id}"/>
				<input type="submit" value="rate">
				</g:form>
			</table>	
			
  </body>
</html>
