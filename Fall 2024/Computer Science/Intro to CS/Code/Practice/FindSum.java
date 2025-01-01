public class FindSum {
    public static void main(String[] args){
        int sum = 0;
        int n = args.length;
        for (int i = 0; i<args.length; i++){
            sum += Integer.parseInt(args[i]);
        }
        StdOut.println(sum);
        String str = "Hello World";
        int strLength = str.length();
        for (int i = 0; i < strLength; i++) {
            System.out.println(str.charAt(i) + (int) str.charAt(i));
        }
        String strA = new String("Hello World");
        String strB = String("Hello World");
    }
}
