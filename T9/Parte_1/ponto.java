
/**
 * @author LimaLucas
 */

class Ponto {
	private double x; // Coordenada x de um ponto
	private double y; // Coordenada y de um ponto

	public Ponto() {
		this.x = 0;
		this.y = 0;
	}

	public Ponto(double dx, double dy) {
		this.x = dx;
		this.y = dy;
	}

	public double getX(){
		return this.x;
	}

	public double getY(){
		return this.y;
	}

	public void desloca(double dx, double dy) {
		this.x = this.x + dx;
		this.y = this.y + dy;
	}

	public double distancia(Ponto p) {
		double dx = p.getX() - this.x;
		double dy = p.getY() - this.y;

		return Math.sqrt(dx*dx + dy*dy);
	}
}
