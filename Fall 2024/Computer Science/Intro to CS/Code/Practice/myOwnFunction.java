public class myOwnFunction {
    public static void main(String[] args) {
        char a = '*';
        int n = 10;
        String str = strprod(a, n);
        System.out.println(str);
    }

    public static String strprod(char a, int n) {
        String s = "";
        for (int i = 0; i < n; i++) {
            s += a;
        }
        return s;
    }
}
