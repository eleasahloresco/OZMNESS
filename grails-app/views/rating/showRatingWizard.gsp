<%@ page import="com.onb.ozmness.Rating" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
				<link rel="stylesheet" href="${resource(dir:'css',file:'showrating.css')}" />
    </head>
    <body>
			<h1>Rating Wizard</h1>
			<ul id="wizardList">
				<li><g:link controller="employee" action="employeeDashboard" id="${user.id}">Rate Yourself</g:link></li>
				<li>
						<a href="#" id="mentee">Rate as a Mentor</a>
						<ul id="menteeList">
						<g:if test="${mentees.size <= 0}">
							<li>none</li>
						</g:if>
						<g:else>						
							<g:each in="${mentees}" status="i" var="mentee">
								<li><g:link controller="employee" action="employeeDashboard" id="${mentee.id}">${mentee}</g:link></li>
							</g:each>
						</g:else>
						</ul>
				</li>
				<li>
						<a href="#" id="projects">Rate as a Tech Lead</a>
						<div id="projectList">
								<g:if test="${projects.size <= 0}">
									<li>none</li>
								</g:if>
								<g:else>
									<g:each in="${projects}" status="i" var="project">
									<div>${project}</div>
								
									<ul>								
										<g:each in="${project.employees}" status="j" var="employee">
										<li>
										<g:link controller="employee" action="employeeDashboard" id="${employee.id}">
											${employee}
										</g:link>	
										</li>
										</g:each>
									</ul>
									</g:each>
								</g:else>
						</div>
				</li>
			</ul>
  <script type="text/javascript">
		$(document).ready(function(){
				$("#menteeList").hide();
				$("#mentee").click(function() {
						$("#menteeList").slideToggle();
				});
				$("#projectList").hide();
				$("#projects").click(function(){
						$("#projectList").slideToggle();
				});
		});
	</script>
  </body>
</html>
