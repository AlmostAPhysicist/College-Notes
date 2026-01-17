public class StringPractice {
    //write a cfunction reverse that takes in a String parameter
    //returns the reverse of the String

    public static void main(String[] args){
        //charAt
        //concatenation +
        System.out.println("reverse the string: ");
        String str = StdIn.readString();
        System.out.println(reverse(str));
        System.out.println(isPalindrome(args[0]));

    }

    public static String reverse(String str){ //Function signature
        String revStr = "";
        for (int i = str.length()-1; i>=0; i--){
            revStr += str.charAt(i);//NOTE: str[i] does NOT work
        }

        return revStr;
    }

    public static boolean isPalindrome(String str){
        String rev = reverse(str);
        return rev.equals(str);
    }

    public static String addSOS(String str){
        if (str.indexOf("")==-1)
            return str;
        else
            return str+"sos";
    }
}
