programa
{	
	funcao inicio()
	{
		//Escreva um programa em que o usuário informe dois números. Então escreva em tela o maior deles.
		//Faça um programa que leia um valor informado pelo usuário e diga se o valor informado é positivo, negativo ou zero.
		//Faça um programa para ler 3 valores (considere que não serão informados valores iguais) e escrever o maior deles.
		//Faça um programa que leia 3 valores informados pelo usuário (considere que não serão informados valores iguais) e escrever a soma dos 2 maiores.
		// Faça um programa que leia 6 valores informados pelo usuário, calcule, exiba os números informados e escreva a média aritmética desses valores lidos.
		//Faça um programa que receba quatro valores informados pelo usuário, mas informe somente o primeiro, o último e o maior de todos eles (considere que todos os números informados serão diferentes)
		//Faça um programa que leia 6 números que o usuário vai informar. Todos os números lidos com valor inferior a 72 devem ser somados. Escreva o valor final da soma efetuada e também todos valores que o usuário informou.  
		//Escreva um programa que calcule a média de quatro números informados pelo usuário, mas somente se esses números forem maiores que 0 e menores que 10. No final, se a média for maior que cinco o usuário receberá uma mensagem "Você passou no teste". Em qualquer outra situação, ele receberá uma mensagem de "tente novamente" 
		// Escreva um programa para ler o ano de nascimento de uma pessoa e escrever uma mensagem que diga se ela poderá ou não votar este ano (não é necessário considerar o mês em que ela nasceu).
		//Tendo como entrada a altura e o gênero designado ao nascer (codificado da seguinte forma: 1: feminino - 2: masculino - ) de uma pessoa, construa um programa que calcule e imprima seu peso ideal, utilizando as seguintes fórmulas.
		//Escreva um programa para ler 2 valores inteiros informados pelo usuário e uma das seguintes operações a serem executadas (codificada da seguinte forma: 1. Adição, 2. Subtração, 3. Divisão, 4. Multiplicação). O programa deve calcular e escrever o resultado dessa operação sobre os dois valores lidos. Observação: Considere que só serão lidos os valores 1, 2, 3 ou 4 para as operações
		
		//calcularMedia()
		somarMaiores()
		//revelarValor()
		//somaLimitada()
		//mediaLimitada()
		//verificarVoto()
		//verificarFormula()
		//calculadora()
	}

	funcao calculadora(){
			inteiro v1,v2
			cadeia sinal
			inteiro resultado = 0
			escreva("digite um valor inicial de 1 a 4 \n")
			leia(v1)
			enquanto( v1 <= 0 ou v1>5){
				escreva("por favor digite um valor valido \n")
				leia(v1)
			}
						
			escreva("escolha um dos operadores + - * / \n")
			
			leia(sinal)
			
			enquanto(sinal != "+" e sinal != "*" e sinal != "-" e sinal != "/"){
				escreva("escolha um sinal valido! \n")
				leia(sinal)
			}
			
			
			escreva("digite o segundo valor de 1 a 4 \n")			
			leia(v2)
			
			enquanto( v2 <= 0 ou v2 > 5){
				escreva("por favor digite um valor valido \n")
				leia(v2)
			}						

			se (sinal == "+") {
        		resultado = v1 + v2
		    } senao se (sinal == "-") {
		        resultado = v1 - v2
		    } senao se (sinal == "*") {
		        resultado = v1 * v2
		    } senao se (sinal == "/") {
		        resultado = v1 / v2
		    }

			
			escreva("a sua conta foi " + v1 + " " + sinal + " " +v2 + " o resultado dela é " + resultado)
	}

	funcao verificarFormula(){
			real h
			cadeia genero
			real formula_de_calculo = 0
			
			escreva("digite sua altura \n")
			leia(h)
			escreva("digite seu genero, M/F \n")
			leia(genero)
			
			se (genero == "m" ou genero == "M"){
				 formula_de_calculo = ( 72.7 * h ) - 58
			}
			senao se (genero == "f" ou genero == "F"){
				 formula_de_calculo = (62.1 * h) - 44.7
			}
			senao{
				escreva("escreva o genero correto com M ou F")
			}
			escreva("formula de calculo igual a " + formula_de_calculo)
	}

	funcao verificarVoto(){
		inteiro ano
		escreva("digite o ano do seu nascimento \n")
		leia(ano)	
		inteiro idade_pessoa = 2025 - ano
		se (idade_pessoa > 17){
			escreva(" que pena você já pode votar! sua idade é " + idade_pessoa + "anos")
		}
		senao{
			escreva("Parabens! você ainda não precisa votar! sua idade é " + idade_pessoa + "anos")
		}
	}

	funcao mediaLimitada(){
		inteiro soma = 0
		inteiro n
		inteiro i = 0

		enquanto (i<4){
		escreva("escolha um numero de 0 a 10 \n")
		leia(n)
		se(n>=0 e n<=10){
			soma +=n
		}
		senao{
			escreva("o numero não pode ser maior que 10 e nem menor que 0 escolha outro numero \n")
			i--
		}
		i++
	}
		inteiro media = soma / 4
		se (media > 5){
			escreva("Parabens! Você passou no teste sua media foi " + media)
		}
		senao {escreva("Reprovado sua media foi de " + media)}
	
}

	funcao somaLimitada(){
		inteiro soma = 0
		inteiro numeros_citados[6]
		inteiro i=0
		inteiro i2 = 0
		inteiro n
		enquanto(i<6){
		escreva("digite um valor \n")
		leia(n)
		se(n<72){
			soma+=n
		}
		numeros_citados[i] = n
		i++
		}

		escreva("os numeros selecionados foram \n")
		
		enquanto(i2<6){
		escreva(numeros_citados[i2] + " ")
		i2++
		}

		escreva("a soma dos numeros limitados até 72 é " + soma)
		
	}

	funcao revelarValor(){
		inteiro i = 0
		inteiro num = 0
		inteiro valoresEscolhidos[4]
		inteiro c = 0
		inteiro maiorNumero = 0
		
		enquanto (i<4){
		escreva("escolha um numero \n")
		leia (num)
		valoresEscolhidos[i] = num
			se(valoresEscolhidos[i] > maiorNumero){
				maiorNumero = valoresEscolhidos[i]
			}
		i++
		}

		escreva("o primeiro valor selecionado é " + valoresEscolhidos[0] + "\n o ultimo valor selecionado é " + valoresEscolhidos[3] + "\n o maior numero é " + maiorNumero)
	}

	funcao calcularMedia(){
		inteiro i = 0
		inteiro soma = 0
		inteiro media 

		enquanto(i < 6){
			inteiro n
			escreva("escolha um numero \n")
			leia(n)
			soma += n
			i++
		}

		media = soma / 6
			escreva("\n a média entre os numeros é " + media + "\n")

		
	}

	funcao somarMaiores(){
		inteiro valor,maiorNumeroEscolhido, segundoMaiorNumeroEscolhido
		inteiro i=0
		
		escreva("Escolha um numero \n")
		leia(valor)
		maiorNumeroEscolhido = valor
		segundoMaiorNumeroEscolhido = 0

		enquanto(i<2){
		escreva("Escolha outro numero \n")
		leia(valor)
		se (valor>maiorNumeroEscolhido){
			segundoMaiorNumeroEscolhido = maiorNumeroEscolhido
			maiorNumeroEscolhido = valor
		}
		senao se(valor > segundoMaiorNumeroEscolhido){
			segundoMaiorNumeroEscolhido = valor
		}
		i++
	}
		calcular(maiorNumeroEscolhido, segundoMaiorNumeroEscolhido)
		
	}	

	funcao calcular(inteiro num, inteiro num2){
		inteiro soma = num + num2
		se(num > 0){
			escreva("o maior numero é " + num + " e ele é positivo \n")
			escreva("o segundo maior numero é " + num2 + " e ele é positivo")
			escreva("\n a soma entre eles é " + soma)
		}senao se(num <0){
			escreva("o maior numero é " + num + "e ele é negativo")
			escreva("o segundo maior numero é " + num2 + "e ele é negativo")
			escreva("\n a soma entre eles é " + soma)
		}senao {
			escreva("o maior numero é " + num + "e ele é nulo \n")
			escreva("o segundo maior numero é " + num2 + " e ele é negativo \n")
			escreva("\n a soma entre eles é " + soma)
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6149; 
 * @DOBRAMENTO-CODIGO = [26, 69, 91, 104, 129, 156, 176, 220];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */