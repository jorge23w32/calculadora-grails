<%--
  Created by IntelliJ IDEA.
  User: jvalenciah
  Date: 16/12/24
  Time: 10:10
--%>


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href=${resource(dir: 'assets/stylesheets', file: 'calculadora-basic.css')}>
    <title>Calculadora</title>
</head>

<body>
    <h1>Operaciones Basicas</h1>

    <div class="forms">
        <form class="operacion" action="${createLink(controller: 'calculadora', action: 'suma')}" method="get">
            <div class="inputs">
                <input type="number" class="numero" name="numero1" placeholder="Numero 1" required>
                <input type="number" class="numero" name="numero2" placeholder="Numero 2" required>
            </div>
            <button type="submit" class="button">Sumar</button>
        </form>
        <form class="operacion" action="${createLink(controller: 'calculadora', action: 'resta')}" method="get">
            <div class="inputs">
                <input type="number" class="numero" name="numero1" placeholder="Numero 1" required>
                <input type="number" class="numero" name="numero2" placeholder="Numero 2" required>
            </div>
            <button type="submit" class="button">Restar</button>
        </form>
        <form class="operacion" action="${createLink(controller: 'calculadora', action: 'multiplicacion')}" method="get">
            <div class="inputs">
                <input type="number" class="numero" name="numero1" placeholder="Numero 1" required>
                <input type="number" class="numero" name="numero2" placeholder="Numero 2" required>
            </div>
            <button type="submit" class="button">Multiplicar</button>
        </form>
        <form class="operacion" action="${createLink(controller: 'calculadora', action: 'division')}" method="get">
            <div class="inputs">
                <input type="number" class="numero" name="numero1" placeholder="Numero 1" required>
                <input type="number" class="numero" name="numero2" placeholder="Numero 2" required>
            </div>
            <button type="submit" class="button">Dividir</button>
        </form>
    </div>
    <form class="operacion-service" action="${createLink(controller: 'calculadora', action: 'realizarOperacion')}" method="POST">
        <div class="inputs-service">
            <div class="numbers">
                <label class="etq">Numero 1: </label>
                <input type="number" class="number-service" name="numero1" placeholder="Escribe un numero" required>
            </div>
            <div class="numbers">
                <label class="etq">Numero 2:</label>
                <input type="number" class="number-service" name="numero2" placeholder="Escribe un numero" required>
            </div>
        </div>
        <div class="buttons">
            <button class="button-service" type="submit" name="operacion" value="sumar">Suma</button>
            <button class="button-service" type="submit" name="operacion" value="restar">Resta</button>
            <button class="button-service" type="submit" name="operacion" value="multiplicar">Multiplicacion</button>
            <button class="button-service" type="submit" name="operacion" value="dividir">Division</button>
        </div>
    </form>
</body>
</html>