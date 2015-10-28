package Part2;

import Part2.Veiculo;

/**
 * @author LimaLucas
 */

class Estacionamento {
	private carro;	// Valor por hora para carros
	private moto;	// Valor por hora para motos
	private static final valorCarro = 3;
	private static final valorMoto = 1.5;
	
	public Estacionamento() {
		this.carro = valorCarro;
		this.moto = valorMoto;
	}

	public double calcValor(Veiculo auto) {
		if(auto.getTipo() == 1)
			return auto.getTempo()*this.carro;
		
		else if(auto.getTipo() == 2){
			return auto.getTempo()*this.moto;
	}

}