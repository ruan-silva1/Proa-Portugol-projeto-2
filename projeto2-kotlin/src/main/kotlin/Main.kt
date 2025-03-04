package org.example

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
fun main() {
    var numero: Double = 0.toDouble()
    var maiorNumero: Double = Double.NEGATIVE_INFINITY
    var segundoMaiorNumero: Double = Double.NEGATIVE_INFINITY
    var i = 1
    for(i in 1..3){
        println("escolha o $i° numero")
        numero = readln().toDouble()
        while(numero == maiorNumero || numero == segundoMaiorNumero){
            println("os numeros nao podem ser iguais! Escolha outro numero!")
            numero = readln().toDouble()
        }
        if(numero > maiorNumero){
            segundoMaiorNumero = maiorNumero
            maiorNumero = numero
        }
        else if(numero > segundoMaiorNumero) {
            segundoMaiorNumero = numero
        }
    }
    val soma = maiorNumero + segundoMaiorNumero
    val resultado = if (maiorNumero > 0.0) "positivo" else if(maiorNumero == 0.0) "nulo" else "negativo"
    val resultado2 = if (segundoMaiorNumero > 0.0) "positivo" else if(segundoMaiorNumero == 0.0) "nulo" else "negativo"
    println("o maior numero é $maiorNumero e ele é $resultado")
    println("o segundo maior numero é $segundoMaiorNumero e ele é $resultado2")
    println("a soma entre os dois maiores numeros $maiorNumero e $segundoMaiorNumero é igual a $soma")
}