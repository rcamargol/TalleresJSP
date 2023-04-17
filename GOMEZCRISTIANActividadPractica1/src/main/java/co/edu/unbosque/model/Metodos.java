package co.edu.unbosque.model;

import java.text.DecimalFormat;

public class Metodos {

	public int suma(int num1, int num2) {
		int rta = num1 + num2;
		return rta;
	}

	public int resta(int num1, int num2) {
		int rta = num1 - num2;
		return rta;
	}

	public int multiplicacion(int num1, int num2) {
		int rta = num1 * num2;
		return rta;
	}

	public String division(double num1, double num2) {
		DecimalFormat decimalFormat = new DecimalFormat("0.00");
		double rta = num1 / num2;
		
		String formattedValue = decimalFormat.format(rta);
		return formattedValue;
	}

}
