public class Functions{
    public static int factorial(int n){
        int fact = 1;
        for (int i=1; i<=n; i++)
            fact = fact * i;
        return fact;
    }

    public static int pow(int base, int exponent){
        int prod = 1;
        for (int i = 0; i < exponent; i++) {
            prod *= base;
        }
        return prod;
    }
    public static void main(String[] args){
        int x = factorial(StdIn.readInt());
        int y = StdIn.readInt();
        StdOut.println(pow(x, y));
    }

    public double CircleArea(double radius){
        return (Math.PI * radius * radius);
    }
    public static double RingArea(double r1, double r2){
        Functions functions = new Functions();
        return Math.abs(functions.CircleArea(r2)-functions.CircleArea(r1));
    }
}
