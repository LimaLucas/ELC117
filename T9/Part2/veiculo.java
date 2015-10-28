package Part2;

/**
 * @author LimaLucas
 */

class Veiculo {
	private int tipo;		// Tipo do veiculo. Carro = 1, Moto = 2
	private String placa;	// Placa do veiculo
	private float valor;	// Valor a ser pago
	private long entrada;	// Hora de entrada do veiculo
	private long saida;		// Hora de saida do veiculo

	public Veiculo() {
		this.tipo = 0;
		this.placa = "";
		this.valor = 0;
		this.entrada = 0;
		this.saida = 0;
	}

	public Veiculo(String t, String p) {
		this.setTipo(t);
		this.placa = p;
		this.valor = 0;
		this.entrada = 0;
		this.saida = 0;
	}

	public int getTipo(){
		return this.tipo;
	}

	public void setTipo(String t) {
		if(t.toLowerCase().equals("carro"))
			this.tipo = 1;
		else if(t.toLowerCase().equals("moto"))
			this.tipo = 2;
	}

	public String getPlaca() {
		return this.placa;
	}

	public void setPlaca(String p){
		this.placa = p;
	}

	public long getEntrada(){
		return this.entrada;
	}

	public void setEntrada() {
		this.entrada = System.currentTimeMillis();
	}

	public long getSaida(){
		return this.saida;
	}

	public void setSaida() {
		this.saida = System.currentTimeMillis();
	}

	public double getTempo() {
		/* A fim de realizar testes de maneira mais facil, foi 
		 * considerado que cada minuto seria equivalente a uma hora.
		 * Por isso, foi dividido por 60 apenas uma vez. */

		return Math.ceil(((this.saida - this.entrada)/1000)/60);
	}

}