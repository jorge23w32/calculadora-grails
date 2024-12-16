package calculadora

//Logica de neogcio de la calculadora
class CalculadoraService {

    def sumar(double num1, double num2){
        return num1 + num2
    }
    def restar(double num1, double num2){
        return num1 - num2
    }
    def multiplicar(double num1, double num2){
        return num1 * num2
    }
    def dividir(double num1, double num2){
        if(!num2){
            throw new ArithmeticException("No se puede dividir entre un valor nulo o 0")
        }
        return num1 / num2
    }
}
