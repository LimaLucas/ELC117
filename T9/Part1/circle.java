package Part1;

import Part1.Point;

/**
 * @author LimaLucas
 */

class Circle {
	private Point center; // Ponto no centro do circulo
	private double ray;  // Raio do circulo

	public Circle() {
		this.center = new Point();
		this.ray = 1;
	}

	public Circle(double r) {
		this.center = new Point();
		this.ray = r;
	}

	public Circle(double x, double y) {
		this.center = new Point(x, y);
		this.ray = 1;
	}

	public Circle(double x, double y, double r) {
		this.center = new Point(x, y);
		this.ray = r;
	}

	public Point getCenter() {
		return this.center;
	}

	// Retorna a area do circulo
	public double getArea() {
		return this.ray*this.ray*3.1415;
	}

	// Retorna o diametro do circulo
	public double getDiameter() {
		return this.ray*2;
	}

	// Retorna a distancia entre o centro de dois circulos
	public double getDistance(Circle c) {
		return this.center.getDistance(c.getCenter());
	}

}