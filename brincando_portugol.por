programa
{
	cadeia nome ,  produtos[5][4], mensage[5] , CPF , RG     
	inteiro idade ,  escolhas[5], valores[5][4], carrinho = 0, valorPagar = 0 
	caracter sexo , nada
	inteiro cont = 0 
	inteiro cont2 = 0
	inteiro cont3 = 0
	
	funcao vazio getInfoUser(){
		

	escreva("Digite  o seu nome : ")
		leia(nome)
		limpa()

		escreva("Digite a sua idade:")
		leia(idade)
		limpa()


		escreva("Digite o seu sexo [H/M]:")
		leia(sexo)
		limpa()
		
	se(sexo != 'H' e sexo!= 'M'){
		escreva("Esta opção não existe tente novamente. \n")
		getInfoUser()
	}	
	
	}
	
	funcao inicio(){
		
		
	getInfoUser()
		
	se( idade < 18 ){
		escreva("Por motivos legais, o(a) usuario(a) não está autorizado a comprar nesta loja .")
	}
	senao{
	idade = 0 
		
	
	se( sexo == 'H'){
		escreva("\n ------------------------- \n")
		escreva("  Seja bem vindo Usuario \n ")
		escreva(" ------------------------- \n")	
	}
	senao se( sexo == 'M'){
		escreva("\n ------------------------- \n")
		escreva("  Seja bem vinda Usuaria \n")
		escreva(" ------------------------- ")
	}
	
	produtosEValores()
	
	mensagesFunction()
	
	chooseAndAdd()
	
	repetirCompra()


	}


	
	}
//  Dentro da função Programa 

funcao vazio chooseAndAdd(){

	escreva(mensage[0] )
	escreva("\n   Digite o produto que deseja comprar : ")
	leia(escolhas[0])
	limpa()

	enquanto(escolhas[0] != 1 e escolhas[0] != 2 e escolhas[0] != 3 e escolhas[0]!= 4){
	escreva("------------------------------------------\n")	
	escreva("A opção digitada não existe tente denovo.")
	escreva("\n------------------------------------------\n\n\n")
	
	escreva(mensage[0] )
	escreva("\n   Digite o produto que deseja comprar : ")
	leia(escolhas[0])
	limpa()
}

se(escolhas[0] == 1 ){
	escreva(" \n", mensage[1])
	escreva("\ndigite o produto desejado : ") 
	leia(escolhas[1])			
	condicionaisDoHd()
}

se(escolhas[0] == 2 ){
	escreva(" \n", mensage[2])
	escreva("\ndigite o produto desejado : ") 
	leia(escolhas[2])
	condicionaisDaCpu()		
			
}
se(escolhas[0] == 3 ){
	escreva(" \n", mensage[3])
	escreva("\ndigite o produto desejado : ") 
	leia(escolhas[3])			
	condicionaisDoTeclado()
	

}
se(escolhas[0] == 4 ){
	escreva(" \n", mensage[4])
	escreva("\ndigite o produto desejado : ") 
	leia(escolhas[4])			
	condicionaisDoMonitor()
	
	
}

	

}




	funcao vazio mensagesFunction(){
	//Mensagem Principal 
mensage[0] = "  No momento possuimos os produtos : "+produtos[0][0]+" (1) ,"+produtos[0][1]+" (2) ,"+produtos[0][2] + " (3) e " +produtos[0][3] + " (4)."   
	//Mensagem do HD
mensage[1] = "Os produtos em relação ao " + produtos[0][0]+ " são eles : "+ produtos[1][0]+" com o valor de "+valores[0][0]+"R$ (1) ,"+produtos[2][0] + " com o valor de "+valores[1][0]+"R$ (2) e " + produtos[3][0]+" com o valor de " + valores[2][0] + "R$ (3)."   
	//Mensagem do CPU 
mensage[2] = "Os produtos em relação ao " + produtos[0][1]+ " são eles : "+ produtos[1][1]+" com o valor de "+ valores[0][1]+"R$ (1) , "+produtos[2][1]  +" com valor de "+valores[1][1]+"R$ (2) e " + produtos[3][1]+" com valor de "+ valores[2][1]+ "R$ (3)."
	//Mensagem do Teclado 
mensage[3] = "Os produtos em relação ao " + produtos[0][2]+ " são eles : "+ produtos[1][2]+" com o valor de "+valores[0][2] +" R$ (1) e  "+produtos[2][2] + " com valor de " + valores[1][2] + "R$ (2)."
	//Mensagem do Monitor 
mensage[4] = "Os produtos em relação ao " + produtos[0][3]+ " são eles : "+ produtos[1][3]+" com o valor de "+ valores[1][3]+"R$ (1),"+produtos[2][3] + " com valor de "+ valores[2][3]+"R$ (2), \n" + produtos[3][3]+" com valor de "+ valores[3][3]+ "R$ (3) e "+ produtos[4][3] + " com valor de "+ valores[4][3] + "R$ (4) . \n" 		
	}
	

funcao vazio condicionaisDoHd(){
	cont = 0
	enquanto(escolhas[1] != 1 e escolhas[1] != 2 e escolhas[1] != 3 e escolhas[1] != 0){
		limpa()
		escreva("--------------------------------\n")
		escreva("Esse número NÃO está nas opções. \n  ")
		escreva("--------------------------------\n ")
		escreva(mensage[1]) 
		escreva("\n Escolha o produto que quer comprar :")
		leia(escolhas[1])
	} 
para( inteiro i = 1 ; i != 4 ; i++){
	
	
		se(escolhas[1] == i){
			carrinho = carrinho + valores[cont][0]                                    		
			escolhas[1] = 0 
			
		}
	senao{
		cont++
	}
}
}



funcao vazio condicionaisDaCpu(){
	cont2 = 0
	
	enquanto(escolhas[2] != 1 e escolhas[2] != 2 e escolhas[2] != 3 e escolhas[2] != 0){
		limpa()
		escreva("--------------------------------\n")
		escreva("Esse número NÃO está nas opções. \n  ")
		escreva("--------------------------------\n ")
		escreva(mensage[2]) 
		escreva("\n Escolha o produto que quer comprar :")
		leia(escolhas[2])
	}
	
para( inteiro i = 1 ; i!= 4 ; i++){
	
	se(escolhas[2] == i){
		carrinho = carrinho + valores[cont2][1]
		escolhas[2] = 0
	}
	senao{
		cont2++
	}
	
}
	
}


funcao vazio condicionaisDoTeclado(){
	cont3 = 0
	
	enquanto(escolhas[3] != 1 e escolhas[3] != 2 e escolhas[3] != 0){
		limpa()
		escreva("--------------------------------\n")
		escreva("Esse número NÃO está nas opções. \n  ")
		escreva("--------------------------------\n ")
		escreva(mensage[3]) 
		escreva("\n Escolha o produto que quer comprar :")
		leia(escolhas[3])
	}
	para(inteiro i = 1 ; i != 3 ; i++){
		se(escolhas[3] == i){
			carrinho = carrinho + valores[cont3][2]
			escolhas[3] = 0 	
		}
		senao{
		cont3++
		}

		
	}
	}



funcao vazio condicionaisDoMonitor(){
	
	enquanto(escolhas[4] != 1 e escolhas[4] != 2 e escolhas[4] != 3 e escolhas[4] != 4 e escolhas[4] != 0 ){
		limpa()
		escreva("--------------------------------\n")
		escreva("Esse número NÃO está nas opções. \n  ")
		escreva("--------------------------------\n ")
		escreva(mensage[4]) 
		escreva("\n Escolha o produto que quer comprar :")
		leia(escolhas[4])
	}
	
	para(inteiro i = 1 ; i != 5 ; i++){
	se(escolhas[4] == i){
		carrinho = carrinho + valores[i][3]
		escolhas[4] = 0 
		}
		
	enquanto(escolhas[4] != 1 e escolhas[4] != 2 e escolhas[4] != 3 e escolhas[4] != 4 e escolhas[4] != 0 ){
		escreva("---------------------------------------------------------------------")
		escreva("\nO numero que você escolheu não está dentro das opções , tente novamente . \n")
		escreva("---------------------------------------------------------------------\n")
		escolhas[4] = 0 
		escreva(mensage[0] )
		escreva("\n   Digite o produto que deseja comprar : ")
		leia(escolhas[0])
		limpa()	
	
	}
	}

}
 

funcao vazio repetirCompra(){
	limpa()
	escreva("Gostaria de continuar comprando ? [S/N] : ")
	caracter SoN 
	leia(SoN) 
	se(SoN == 'S'){
			
		chooseAndAdd()
		repetirCompra()
	}
	se(SoN == 'N'){
		limpa()
		valorPagar = carrinho 
		desejaCartao()
		escreva("Obrigado por confiar em nossa loja " + nome + "  =)")
		escreva("\n---------------------------------------")
		escreva(" \n O valor total é : "+ valorPagar+ "R$ \n") 
		escreva("---------------------------------------")
	}
}
	
	funcao vazio produtosEValores(){
	
	produtos[0][0] = "Hd"
	produtos[0][1] = "CPU"
	produtos[0][2] = "Teclado"
	produtos[0][3] = "Monitor" 

//Parte do Hd

	produtos[1][0] = "SSD 120 GB"
	produtos[2][0] = "SSD 240 GB"
	produtos[3][0] = "SSD 500 GB"


//Parte da CPU 

	produtos[1][1] = "HP" 
	produtos[2][1] = "Compac" 
	produtos[3][1] = "Dell" 

//Parte do Teclado
 
	produtos[1][2] = "Multilaser "
	produtos[2][2] = "Lenovo" 

//Parte do Monitor 

	produtos[1][3] = "32 Pol" 
	produtos[2][3] = "47 Pol" 
	produtos[3][3] = "54 Pol" 
	produtos[4][3] = "70 Pol"

	//Valores do Hd 
	valores[0][0] = 100
	valores[1][0] = 150 
	valores[2][0] = 500 
	
	//Volores da CPU
	valores[0][1] = 1500 
	valores[1][1] = 1800 
	valores[2][1] = 2000 
	
	//Valores do Teclado 
	valores[0][2] = 20 
	valores[1][2] = 50
	
	//Valores do Monitor
	valores[1][3] = 1000
	valores[2][3] = 1500 
	valores[3][3] = 2000
	valores[4][3] = 3000 	
	}
		
	
	funcao vazio desejaCartao(){
		caracter sOn
		escreva("O valor total a pagar é : " + valorPagar + "\n")
		escreva("-----------------------------------------------------------------------------------------------------------------------------")
		escreva("\nVocê deseja fazer o cartão da nossa loja ? (È grátis, tem muitos benefícios e você ganhará 25% de desconto na compra atual) .\n")
		escreva("-----------------------------------------------------------------------------------------------------------------------------\n")
		escreva("[S/N] : ")
		leia(sOn)

		se(sOn == 'N'){
			limpa()
		}
		senao se(sOn == 'S'){
			limpa()
			escreva("Digite o seu CPF : ")
			leia(CPF)
			limpa()
			escreva("Digite o seu RG :")
			leia(RG)
			limpa()
			valorPagar = valorPagar -( valorPagar / 2 ) / 2 			
		}
		 
	}
	
}

