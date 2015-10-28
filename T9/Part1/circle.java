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
}

class CircleTest {
	public static void main(String[] args) {
		Circle c1 = new Circle(2);
		Circle c2 = new Circle(1, 2);

		System.out.println("\nCirculo 1" +
						   "\n  - Area: " + c1.getArea() +
						   "\n  - Diametro: " + c1.getDiameter());

		System.out.println("\nCirculo 2" +
						   "\n  - Area: " + c2.getArea() +
						   "\n  - Diametro: " + c2.getDiameter());

		System.out.println("\nDistancia entre o centro dos circulos: " + 
				c1.getCenter().getDistance(c2.getCenter()));
	}
}