programa
{
	
	funcao inicio()
	{
		//Escreva um programa em que o usuário informe dois números. Então escreva em tela o maior deles.
		//Faça um programa que leia um valor informado pelo usuário e diga se o valor informado é positivo, negativo ou zero.
		//Faça um programa para ler 3 valores (considere que não serão informados valores iguais) e escrever o maior deles.
		//Faça um programa que leia 3 valores informados pelo usuário (considere que não serão informados valores iguais) e escrever a soma dos 2 maiores.



		inteiro v1,v2,v3
		escreva("escolha um numero \n")
		leia(v1)
		escreva("escolha outro numero \n")
		leia(v2)
		escreva("escolha outro numero \n")
		leia(v3)

		se(v1 == v2 ou v1 == v3 ou v2 == v3){

		escreva("os numeros nao podem ser iguais")
		retorne
				
		}
		
		
		se(v1>v2 e v1>v3){
			se(v2>v3){
				calcular(v1,v2)
				}
			senao se(v3>v2){
				calcular(v1,v3)
			}
		}
		senao se (v2 > v1 e v2>v3){
			se(v1>v3){
			calcular(v2,v1)	
			}
			senao se(v3 > v1){
			calcular(v2,v3)
		}
		}
		senao se (v3 > v1 e v3 > v2){
			se(v1>v2){
			calcular(v3,v1)
			}
			 senao se(v2>v1){
			calcular(v3,v2)
			}
		}
		
	}

	funcao calcular(inteiro num, inteiro num2){
		se(num > 0){
			escreva("o maior numero é " + num + " e ele é positivo \n")
			escreva("o segundo maior numero é " + num2 + " e ele é positivo")
		}senao se(num <0){
			escreva("o maior numero é " + num + "e ele é negativo")
		}senao {escreva(num)}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1059; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */