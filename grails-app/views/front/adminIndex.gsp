<html>
    <head>
        <title>Welcome to Grails</title>
        <meta name="layout" content="admin" />
        <style type="text/css" media="screen">
            h2 {
                font-size: 14px;
                color: orange;
                padding: 1px 5px;
                border-bottom: 1px solid silver;
                background: url("../images/skin/shadow.jpg") repeat-x;
            }
            #pages {
                margin:5px 0px;
                width: 100%;
                border: 1px solid silver;
            }
            ul li {
                padding: 2px;
                font-size: 12px;
            }
        </style>
    </head>
    <body>
        <div id="pages">
            <h2>Manage</h2>
            <ul>
                <li><a href="${createLink(uri: '/employee/index')}">Employee</a></li>
                <li><a href="${createLink(uri: '/employeePosition/index')}">Employee Position</a></li>
                <li><a href="${createLink(uri: '/project/index')}">Project</a></li>
                <li><a href="${createLink(uri: '/rating/index')}">Rating</a></li>
                <li><a href="${createLink(uri: '/role/index')}">Role</a></li>
                <li><a href="${createLink(uri: '/technology/index')}">Technology</a></li>
            </ul>
        </div>
    </body>
</html>
