package Part2;

import Part2.Veiculo;

/**
 * @author LimaLucas
 */

class Estacionamento {
	private double carro;	// Valor por hora para carros
	private double moto;	// Valor por hora para motos
	private static final double valorCarro = 3;
	private static final double valorMoto = 1.5;
	
	public Estacionamento() {
		this.carro = valorCarro;
		this.moto = valorMoto;
	}

	public double calcValor(Veiculo auto) {
		//System.out.println(auto.getSaida() + " - " + auto.getEntrada() + " = " + auto.getTempo());
		if(auto.getTipo() == 1)
			return auto.getTempo()*this.carro;
		
		else if(auto.getTipo() == 2)
			return auto.getTempo()*this.moto;

		else
			return 0;
	}

}