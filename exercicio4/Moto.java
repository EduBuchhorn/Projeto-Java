package exercicio4;

public class Moto {
	String marca;
	String modelo;
	String cilindradas;

	public void atribuirValores(String marca, String modelo, String cilindradas) {
		this.marca = marca;
		this.modelo = modelo;
		this.cilindradas = cilindradas;
	}

	public void exibirValores() {
		System.out.println("Características da Moto:");
		System.out.println("Marca: " + this.marca);
		System.out.println("Modelo: " + this.modelo);
		System.out.println("Cilindradas:" + this.cilindradas);
		System.out.println();
	}

}