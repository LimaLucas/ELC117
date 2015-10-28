package Part2;

/**
 * @author LimaLucas
 */

class Veiculo {
	private int tipo;		// Tipo do veiculo. Carro = 1, Moto = 2
	private String placa;	// Placa do veiculo
	private float valor		// Valor a ser pago
	private long hEntrada	// Hora de entrada do veiculo
	private long hSaida		// Hora de saida do veiculo

	public Veiculo() {
		this.tipo = 0;
		this.placa = "";
		this.valor = 0;
		this.hEntrada = setEntrada();
		this.hSaida = 0;
	}

	public Veiculo(String t, String p) {
		this.tipo = setTipo(t);
		this.placa = p;
		this.valor = 0;
		this.hEntrada = setEntrada();
		this.hSaida = 0;
	}

	public String getTipo(){
		return this.tipo;
	}

	public void setTipo(String t) {
		if(t.toLowerCase().equals("carro"))
			this.tipo = 1;
		else if(t.toLowerCase().equals("moto"))
			this.tipo = 2;
	}

	public void setEntrada() {
		this.hEntrada = System.currentTimeMillis();
	}

	public void setSaida() {
		this.hSaida = System.currentTimeMillis();
	}

	public double getTempo() {
		return (((this.hSaida - this.hEntrada)/1000)/60)/60;
	}

}