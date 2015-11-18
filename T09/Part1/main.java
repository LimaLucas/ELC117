package Part1;

import Part1.Point;
import Part1.Circle;

/**
 * @author LimaLucas
 */

class Main {
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
			c1.getDistance(c2) + "\n");
	}
}