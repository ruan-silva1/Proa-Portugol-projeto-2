programa
{
	
	funcao inicio()
	{
		//Escreva um programa em que o usuário informe dois números. Então escreva em tela o maior deles.
		//Faça um programa que leia um valor informado pelo usuário e diga se o valor informado é positivo, negativo ou zero.
		//Faça um programa para ler 3 valores (considere que não serão informados valores iguais) e escrever o maior deles.


		inteiro v1,v2
		escreva("escolha um numero \n")
		leia(v1)
		escreva("escolha outro numero \n")
		leia(v2)
		
		
		se(v1>v2){
		calcular(v1)
		}
		senao se (v2 > v1){
		calcular(v2)
		}
		
	}

	funcao calcular(inteiro v1){
		se(v1 > 0){
			escreva(v1 + " é positivo")
		}senao se(v1 <0){
			escreva(v1 + " é negativo")
		}senao {escreva(v1)}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 376; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */