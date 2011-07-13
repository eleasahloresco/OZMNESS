<%@ page import="com.onb.ozmness.Employee" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <style>
            #ratingContainer {
                width: 100%;
                text-align:left;
            }
           #ratingContainer tr td { padding: 5px; vertical-align: top;} 
           h2{
                color: #0C3E70;
                font-size: 16px;
                text-align: left;
                font-weight: bold;
                margin-bottom: 20px;
            }
            .header {font-weight: bold; border-bottom: 5px solid silver; padding-bottom: 4px;}
        </style>
    </head>
    <body>	
			<h1>Dashboard</h1>
			<g:if test="${flash.message}">
				${flash.message}
			</g:if>
            <h2>${employee.firstName} ${employee.lastName}</h2>
            <g:form name="rating" url="[controller:'rating',action:'saveAll']">
			<table id="ratingContainer">
				<tr>				
					<th class="header">technology</th>
					<th class="header">rating</th>
					<th class="header">comment</th>
				</tr>
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
			</table>	
            <input type="hidden" name="ratedId" value="${employee.id}"/>
            <input type="submit" value="rate">
            </g:form>
  </body>
</html>
