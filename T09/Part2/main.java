package Part2;

import Part2.Veiculo;
import Part2.Estacionamento;
import java.util.Scanner;

/**
 * @author LimaLucas
 */

class Main {
	public static void main(String[] args) {
		Estacionamento est = new Estacionamento();
		Veiculo auto = new Veiculo();
		Scanner scan = new Scanner(System.in);

		do{
			System.out.println("Informe o tipo de veiculo: ");
			auto.setTipo(scan.next());
			
			System.out.println("Informe a placa do veiculo: ");
			auto.setPlaca(scan.next());

			auto.setEntrada();

			System.out.println("Assim que o carro sair, informe OK: ");
			scan.next();

			auto.setSaida();

			System.out.println("O valor do estacionamento eh: " + est.calcValor(auto));

			System.out.println("Deseja informar estacionar outro veiculo (sim/nao)? ");
		}while(scan.next().toLowerCase().equals("sim"));
	}
}	