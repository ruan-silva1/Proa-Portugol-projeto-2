package org.example

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
fun main() {
    //gerarMiniCalculadora()
    //cacularPesoIdeal()
    //calcularMaiores()
    //calcularMedia()
}

fun gerarMiniCalculadora() {
    val num1 = pedirValor()
    println("escolha um sinal + - / * ")
    var sinal = readln()
    while (sinal != "+" && sinal != "-" && sinal != "*" && sinal != "/") {
        println("sinal invalido, escolha um sinal + - / * ")
        sinal = readln()
    }
    val num2 = pedirValor()
    val resultado = when (sinal){
        "+" -> num1 + num2
        "*" -> num1 * num2
        "/" -> num1 / num2
        "-" -> num1 - num2
        else -> println("sinal invalido")
    }
    println("o resultado de $num1 $sinal $num2 é $resultado")
}

fun pedirValor(): Double{
    println("escreva um valor")
    var valor = readln().toDouble()
    while (valor !in 1.0..5.0) {
        println("escreva um valor entre 0 e 5")
         valor = readln().toDouble()
    }
    return valor
}



fun cacularPesoIdeal(){
    println("escreva sua altura")
    val altura = readln().toDouble()
    println("escreva seu genero")
    val genero = readln()
    val formulaCalculo = when(genero){
        "masculino" -> (72.8 * altura ) - 58
        "feminino" -> (62.1 * altura) - 44.7
        else -> print("genero invalido")
    }
    println("seu peso ideal é $formulaCalculo")
}

fun calcularMedia(){
    var i: Int = 1
    var soma: Double = 0.0

    while(i in 1..6) {
        println("escolha o $i numero")
        var numero = readln().toDouble()
        while (numero < 0 || numero > 10) {
            println("escolha um numero menor que 0 e maior que 10")
            numero = readln().toDouble()
        }
        if (numero >= 0 && numero <= 10) {
            soma += numero
        }
        i++
    }
    val media:Double = soma / 4
    if(media > 5){
        println("você passou no teste sua media foi $media")
    }
    else{
        println("você nao passou no teste sua media foi $media")
    }

}


fun calcularMaiores(){
    var numero: Double = 0.toDouble()
    var maiorNumero: Double = Double.NEGATIVE_INFINITY
    var segundoMaiorNumero: Double = Double.NEGATIVE_INFINITY
    var historicoNumeros = DoubleArray(6)
    var i = 1
    for(i in 1..6){
        println("escolha o $i° numero")
        numero = readln().toDouble()
        while(historicoNumeros.toList().contains(numero)){
            println("os numeros nao podem ser iguais! Escolha outro numero!")
            numero = readln().toDouble()
        }
        historicoNumeros[(i-1)] = numero
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
    println("o ultimo numero escolhido foi $numero")
    println("todos os numeros selecionados foram ${historicoNumeros.joinToString()}")
}