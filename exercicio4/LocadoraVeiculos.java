package EX4;

import java.util.Scanner;

/*
Crie uma classe chamada Moto com três atributos (marca, modelo e cilindradas) e dois métodos (atribuir valores e retornar valores).  
Na classe LocadoraVeiculos, crie um objeto do tipo Carro e dois objetos do tipo Moto, sendo que os objetos serão criados de acordo com a solicitação desses dados ao usuário, via linha de execução, conforme exemplo abaixo (vide material fornecido).  
Após a criação dos objetos, utilize o método para retornar valores e exiba na tela o conteúdo dos objetos criados 
 */

public class LocadoraVeiculos {

	public static void main(String[] args) {
		Scanner leitura = new Scanner(System.in);
		Carro carro = new Carro();
		Moto moto1 = new Moto();
		Moto moto2 = new Moto();
		
		String marca, modelo, cilindradas;
		System.out.println("Insira a marca da moto");
		marca = leitura.nextLine();
		System.out.println("Insira o modelo da moto");
		modelo = leitura.nextLine();
		System.out.println("Insira a cilindrada da moto");
		cilindradas = leitura.nextLine();
		
		moto1.atribuirValores(marca, modelo, cilindradas);

		System.out.println("Insira a marca da moto");
		marca = leitura.nextLine();
		System.out.println("Insira o modelo da moto");
		modelo = leitura.nextLine();
		System.out.println("Insira a cilindrada da moto");
		cilindradas = leitura.nextLine();
		
		moto2.atribuirValores(marca, modelo, cilindradas);
		
		System.out.println("Insira a marca do carro");
		marca = leitura.nextLine();
		System.out.println("Insira o modelo do carro");
		modelo = leitura.nextLine();
		leitura.close();
		
		carro.atribuirValores(marca, modelo);
		
		moto1.exibirValores();
		moto2.exibirValores();
		carro.exibirValores();

	}

}