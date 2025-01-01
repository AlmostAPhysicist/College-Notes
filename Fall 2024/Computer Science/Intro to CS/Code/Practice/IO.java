//Instead of giving program an input before the code is executed, we try to ask for input while the program is running

public class IO {
    public static void main(String[] args) {
        System.out.println("Enter an integer: ");
        int x = StdIn.readInt();

        System.out.println("Enter another integer: ");
        int y = StdIn.readInt();

        int sum = x+y;
        System.out.println("Sum: " + sum);

    }
}
