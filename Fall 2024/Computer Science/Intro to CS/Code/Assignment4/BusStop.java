/*
 * Write your program inside the main method to find the order
 * which the bus the student needs to take will arrive
 * according to the assignemnt description. 
 *
 * To compile:
 *        javac BusStop.java
 * 
 * DO NOT change the class name
 * DO NOT use System.exit()
 * DO NOT change add import statements
 * DO NOT add project statement
 * 
 */
public class BusStop {

    public static void main(String[] args) {

        // WRITE YOUR CODE HERE
        boolean flag = false;

        for (int i = 0; (i < args.length-1)&&(flag==false); i++) {
            if (args[i].charAt(0) == args[args.length-1].charAt(0)){
                System.out.println(i+1);
                flag = true;
            }
        }
        if (flag == false)
            System.out.println(-1);
    }
}
