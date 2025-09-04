public static void main(String[] args) {
  System.out.println("¡Hola, mundo!");
}public class Expresiones {
    public static void main(String[] args) {
        int x, b;

        // --- Expresión #1
        // Post-incremento: se imprime el valor actual de x y luego x se incrementa.
        x = 10; b = 10;
        System.out.println("Exp1 -> " + x++);           // imprime 10, luego x = 11
        System.out.println("estado: x=" + x + " b=" + b);

        // --- Expresión #2
        // Pre-incremento: x se incrementa primero y luego se imprime el nuevo valor.
        x = 10; b = 10;
        System.out.println("Exp2 -> " + ++x);           // x -> 11, imprime 11
        System.out.println("estado: x=" + x + " b=" + b);

        // --- Expresión #3
        // Comparación con post-incremento: evalúa (b++ * -3) == (-3 % x++), con efectos secundarios.
        x = 10; b = 10;
        System.out.println("Exp3 -> " + ((b++ * -3) == (-3 % x++)));
        // lado izquierdo usa b=10 (después b->11), lado derecho usa x=10 (después x->11)
        System.out.println("estado: x=" + x + " b=" + b);

        // --- Expresión #4
        // ORIGINAL inválida; la corrijo a: 30 - 10 / ++b + 30 % 7 * 2
        // Jerarquía: ++b primero, luego divisiones/modulos/multiplicaciones, luego sumas/restas.
        x = 10; b = 10;
        System.out.println("Exp4 -> " + (30 - 10 / ++b + 30 % 7 * 2));
        // ++b hace b=11; 10/11->0 (div entera); 30%7=2; 2*2=4; 30-0+4=34
        System.out.println("estado: x=" + x + " b=" + b);

        // --- Expresión #5
        // ORIGINAL inválida; la corrijo a: x = -50 * x++ * 80 % b / 4 * 8;
        // Jerarquía: x++ usado primero en la multiplicación; operaciones multiplicativas L→R.
        x = 10; b = 10;
        System.out.println("Exp5 -> " + (x = -50 * x++ * 80 % b / 4 * 8));
        // x++ usa 10 (luego x->11), -50*10*80 = -40000; -40000 % 10 = 0; 0/4*8 = 0; x = 0
        System.out.println("estado: x=" + x + " b=" + b);

        // --- Expresión #6
        // Operadores compuestos y post-incremento: b *= (x++ - 8 + 3 - (5/4)%-3 + 8)
        // División y módulo antes que suma/resta; x++ aplica su incremento después de usar su valor.
        x = 10; b = 10;
        b *= x++ - 8 + 3 - 5 / 4 % -3 + 8;
        // 5/4 = 1; 1 % -3 = 1; RHS = 10 - 8 + 3 - 1 + 8 = 12; b = 10 * 12 = 120; x -> 11
        System.out.println("Exp6 -> b=" + b);
        System.out.println("estado: x=" + x + " b=" + b);

        // --- Expresión #7
        // ORIGINAL inválida; la corrijo a: x = b * 50 / 30 * ++x + 80;
        // Jerarquía: ++x antes de multiplicar; multiplicaciones/divisiones L→R; suma al final.
        x = 10; b = 10;
        x = b * 50 / 30 * ++x + 80;
        // ++x hace x=11; 10*50=500; 500/30=16; 16*11=176; 176+80=256; asigna x=256
        System.out.println("Exp7 -> x=" + x);
        System.out.println("estado: x=" + x + " b=" + b);
    }
}
