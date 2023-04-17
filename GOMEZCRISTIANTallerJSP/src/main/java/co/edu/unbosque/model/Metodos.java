package co.edu.unbosque.model;

import java.util.Arrays;

public class Metodos {

	public String totalCompra(int c, int price) {
		String total = "Su compra fue satisfactoria por un valor de $ ";
		int coso = c * price;
		total += coso;

		return total;
	}

	public String tarjetasMetodo(String tarjeta) {
		int cantidadNumeros = tarjeta.length();

		char[] asteriscos = new char[cantidadNumeros];
		Arrays.fill(asteriscos, '*');

		for (int i = (cantidadNumeros - 4); i < cantidadNumeros; i++) {
			asteriscos[i] = tarjeta.charAt(i);

		}

		return new String(asteriscos);
	}

	public String tipoTarjeta(String tarjeta) {
		String tipo = "";
		
		if (tarjeta.equals("visa")) {
			tipo = "VISA";
		} else if (tarjeta.equals("ae")) {
			tipo = "American Express";
		} else if (tarjeta.equals("mc")) {
			tipo = "MasterCard";
		}
		
		return tipo;

	}

}
