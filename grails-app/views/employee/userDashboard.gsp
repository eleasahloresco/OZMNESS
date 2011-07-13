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
            #ratingContainer { font-size: 14px; }
            .header {
                font-weigh: bold;
            }
            #ratingContainer tbody tr td { padding: 5px; }
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
            <table id="ratingContainer">
                <thead>
                    <tr>
                        <td class="header" width="200px">Technology</td>
                        <td class="header" >Rating</td>
                    </tr>
                </thead>
                <tbody>
                    <g:set var="ctr" value = 0 />
                    <g:each in="${ratings}" var="rating">
                    <g:set var="ctr" value="${ctr + 1}" />
                    <tr>
                        <td>${rating.technology}</td>
                        <td>
                            <div id="stars-wrapper-${ctr}">
                                <input type="radio" name="newrate" value="1" title="" <g:if test="${rating.value == 1}">checked="checked"</g:if> />
                                <input type="radio" name="newrate" value="2" title="" <g:if test="${rating.value == 2}">checked="checked"</g:if> />
                                <input type="radio" name="newrate" value="3" title="" <g:if test="${rating.value == 3}">checked="checked"</g:if> />
                            </div>
                        </td>
                    </tr>
                </g:each>
                </tbody>
		    </table>	
        </div> 
        <script type="text/javascript">
            $(document).ready(function(){
                var max = ${ctr};
                for (i = 1; i <= max;  i++) {
                    $("#stars-wrapper-" + i).stars({
                        disabled: true
                    });
                }
            });
        </script>  
  </body>
</html>
