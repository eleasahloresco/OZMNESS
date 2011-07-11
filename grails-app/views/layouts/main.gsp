<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Ozmness" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'reset.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="header">
        </div>
        <div id="contentContainer">
            <div id="content">
                <g:layoutBody />
            </div>
        </div>
        <div id="footer">
        </div>
    </body>
</html>
