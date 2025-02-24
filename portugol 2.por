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

		
		//calcularMedia()
		//somarMaiores()
		//revelarValor()
		//somaLimitada()
		//mediaLimitada()
		

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
		inteiro n,n2,n3,maiorNumeroEscolhido, segundoMaiorNumeroEscolhido
		
		escreva("Escolha um numero \n")
		leia(n)
		maiorNumeroEscolhido = n
		
		escreva("Escolha outro numero \n")
		leia(n2)
		se (n2>maiorNumeroEscolhido){
			maiorNumeroEscolhido = n2
			segundoMaiorNumeroEscolhido = n
		}
		senao{
			segundoMaiorNumeroEscolhido = n2
		}
		escreva("Escolha outro numero \n")
		leia(n3)
		se (n3 > maiorNumeroEscolhido){
			maiorNumeroEscolhido = n3
			segundoMaiorNumeroEscolhido = n2
		}
		senao se(n3 > segundoMaiorNumeroEscolhido){
			segundoMaiorNumeroEscolhido = n3
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
 * @POSICAO-CURSOR = 1523; 
 * @DOBRAMENTO-CODIGO = [23, 48, 75, 95, 114, 144];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */