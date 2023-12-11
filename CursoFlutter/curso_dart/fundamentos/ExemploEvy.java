//package ./src/ExemploEvy

public Class ExemploEvy {
    public static final Double PI = 3.1415;

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in); 
        System.out.println("Qual o valor do Raio: ")
        Double raio = entrada.nextDouble(); 
        Double circuferencia = PI * raio * raio;
        System.out.println("O valor da circuferencia é : " + circuferencia);
        
    }

}