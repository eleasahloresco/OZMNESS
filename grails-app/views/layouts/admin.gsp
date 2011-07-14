<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'reset.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'admin.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
        <style>
            body {margin: 0; padding: 0;margin-top: -13px}
            #header {
                border-top: 1px solid #ccc;
                border-bottom: 1px solid #ccc;
                
            }
            #header h1 {font-size: 16px;font-weight:bold;padding:0; padding-top:5px;margin-left: 5px;}
            #header h1 a {color: orange;}
            #header h1 span {color: #666}
            #header p {
                background: url("../images/skin/shadow.jpg") repeat-x;
                padding-bottom: 5px;
                text-align: right;
                padding-right: 15px;
            }
        </style>
    </head>
    <body>
        <div id="header"><h1><a href="${createLink(uri: '/front/adminIndex')}">OZMNESS <span>admin</span></a></h1>
            <p><a href="#">[Logout]</a></p>
        </div>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="content">     
            <g:layoutBody />
        </div>
    </body>
</html>
