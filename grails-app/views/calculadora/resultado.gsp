<%--
  Created by IntelliJ IDEA.
  User: jvalenciah
  Date: 16/12/24
  Time: 14:07
--%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href=${resource(dir: 'assets/stylesheets', file: 'result.css')}>
    <title>Resultado</title>
</head>

<body>
    <h1>Resultado de la operacion ${operacion}</h1>
    <g:if test="${error}">
        <p class="error">${error}</p>
    </g:if>
    <g:if test="${resultado != null}">
        <p class="result">El resultado es: <span>${resultado}</span></p>
    </g:if>
    <a class="back" href="${createLink(controller: 'calculadora', action: 'index')}">Volver</a>
</body>
</html>