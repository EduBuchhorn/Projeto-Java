package exercicio4;

public class Carro {
	String marca;
	String modelo;
	public void atribuirValores(String marca, String modelo) {
		this.marca = marca;
		this.modelo = modelo;
	}

	public void exibirValores() {
		System.out.println("Características do Carro:");
		System.out.println("Marca: " + this.marca);
		System.out.println("Modelo: " + this.modelo);
		System.out.println();

	}


}