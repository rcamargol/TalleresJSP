package co.edu.unbosque.model;

public class Metodos {

	public String limites(int num1, int num2) {

		String rta = "";
		for (int i = num1; i <= num2; i ++) {
			rta += i + "\n";
		}
		return rta;
	}

}
