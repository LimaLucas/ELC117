package Part1;

/**
 * @author LimaLucas
 */

class Point {
	private double x; // Coordenada x do ponto
	private double y; // Coordenada y do ponto

	public Point() {
		this.x = 0;
		this.y = 0;
	}

	public Point(double dx, double dy) {
		this.x = dx;
		this.y = dy;
	}

	// Retorna a coordenada X do ponto
	public double getX(){ 
		return this.x;
	}

	// Retorna a coordenada Y do ponto
	public double getY(){ 
		return this.y;
	}

	// Desloca o ponto conforme parametros
	public void move(double dx, double dy) { 
		this.x = this.x + dx;
		this.y = this.y + dy;
	}

	// Calcula a distancia entre um ponto e outro
	public double getDistance(Point p) { 
		double dx = p.getX() - this.x;
		double dy = p.getY() - this.y;

		return Math.sqrt(dx*dx + dy*dy);
	}
}