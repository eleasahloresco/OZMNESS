<%@ page import="com.onb.ozmness.Employee" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <style>
            #sidebar {
                float:left;
                width: 220px;
            }
            strong {
                font-weight: bold;
            }
            img { border: 1px solid silver; padding: 3px }
            #sidebar div {
                margin-bottom: 5px;
            }
            #ratingContainer h2{
                color: #0C3E70;
                font-size: 16px;
                text-align: left;
                font-weight: bold;
                margin-bottom: 20px;
            }
            #ratingName {
                font-weight: bold;
                letter-spacing: .5px;
                font-size: 14px;
                color: #0C3E70;
            }
            dl { font-size: 14px; }
            dl dt {
                float: left;
                width: 200px;
                margin-bottom: 5px;
            }
            dl dd {
                margin-bottom: 5px;
            }
        </style>
    </head>
    <body>
        <h1>Dashboard</h1>
        <div id="sidebar">
            <div>
                <img width="200px" height="200px" src="${resource(dir:'images',file:'photo.jpg')}"/>
            </div>
            <div id="ratingName" >
                ${employee.firstName} ${employee.lastName}
            </div>
            <div>
               <em> ${employee.position}</em>
            </div>
        </div>
        <div id="ratingContainer">
            <h2>Ozmness Scale</h2>
            <dl>
                <dt style="font-weight:bold">Technology</dt>
                <dd style="font-weight:bold">Rating</dd>
                <g:each in="${ratings}" var="rating">
                <dt>${rating.technology}</dt>
                <dd>${rating.value}</dd>
                </g:each>
		    </dl>	
        </div>    
  </body>
</html>
