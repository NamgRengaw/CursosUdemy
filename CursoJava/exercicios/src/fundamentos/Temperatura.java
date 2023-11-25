package fundamentos;

public class Temperatura {
	
	public static void main(String[] args) {
		// (°F - 32) * 5/9 = °C
		double grausEmFahrenheit = 86;
		
		final int INDICE_EQUIVALENCIA = 32;
		final double MULTIPLICADOR = 5.0 / 9.0;
		
		double grausEmCelsius = 
				(grausEmFahrenheit - INDICE_EQUIVALENCIA) * MULTIPLICADOR;
		
		System.out.println("A temperatura é = " + grausEmCelsius + " °C");
	}
}
