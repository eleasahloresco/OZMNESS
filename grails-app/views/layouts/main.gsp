<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Ozmness" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'reset.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
   			<script type="text/javascript" src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}"></script>   
	</head>
<body>
<div id="header-wrapper">
    <div id="header">
        <div id="menu">
            <ul>
                <li><a href="../employee/userDashboard" class="first">Dashboard</a></li>
                <li class="current_page_item"><a href="../rating/showRatingWizard">Rate Someone</a></li>
            </ul>
        </div>
        <!-- end #menu -->
        <div id="logoutContainer">
            <a href="../j_spring_security_logout">Logout</a>
        </div>
    </div>
</div>
<!-- end #header -->
<!-- end #header-wrapper -->
<div id="logo">
    <h1><a href="#">Ozmness</a></h1>
    <p><em> an Orange and Bronze Project </em></p>
</div>
<hr />
<!-- end #logo -->
<div id="page">
    <div id="page-bgtop">
        <div id="content">
                <g:layoutBody />
        </div>
        <!-- end #content -->
    </div>
    <!-- end #page -->
</div>
</body>
</html>
