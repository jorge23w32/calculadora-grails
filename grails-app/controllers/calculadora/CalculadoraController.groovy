package calculadora

import calculadora.CalculadoraService

class CalculadoraController {

    def calculadoraService // Inyección del servicio

    def index() {
        render(view: 'index')
    }

    def suma() {
        double numero1 = params.numero1.toDouble()
        double numero2 = params.numero2.toDouble()
        render("Resultado de la suma: ${numero1 + numero2}")
    }

    def resta() {
        double numero1 = params.numero1.toDouble()
        double numero2 = params.numero2.toDouble()
        render("Resultado de la resta: ${numero1 - numero2}")
    }

    def multiplicacion() {
        double numero1 = params.numero1.toDouble()
        double numero2 = params.numero2.toDouble()
        render("Resultado de la multiplicación: ${numero1 * numero2}")
    }

    def division() {
        double numero1 = params.numero1.toDouble()
        double numero2 = params.numero2.toDouble()
        if (numero2 == 0) {
            render("No se puede dividir un número entre 0: $numero1 / $numero2")
            return
        }
        render("Resultado de la división: ${numero1 / numero2}")
    }

    def realizarOperacion() {
        def numero1 = params.numero1?.toDouble()
        def numero2 = params.numero2?.toDouble()
        def operacion = params.operacion

        try {
            def resultado
            switch (operacion) {
                case "sumar":
                    resultado = calculadoraService.sumar(numero1, numero2)
                    break
                case "restar":
                    resultado = calculadoraService.restar(numero1, numero2)
                    break
                case "multiplicar":
                    resultado = calculadoraService.multiplicar(numero1, numero2)
                    break
                case "dividir":
                    resultado = calculadoraService.dividir(numero1, numero2)
                    break
            }
            render(view: "resultado", model: [operacion: operacion, resultado: resultado])
        } catch (Exception e) {
            render(view: "resultado", model: [operacion: operacion, error: e.message])
        }
    }
}

