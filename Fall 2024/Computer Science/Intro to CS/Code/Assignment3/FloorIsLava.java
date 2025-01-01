


/*************************************************************************
 *  Compilation:  javac FloorIsLava.java
 *  Execution:    java FloorIsLava n
 *
 *  @author Shane Haughton, Maaz Mansuri
 *
 **************************************************************************/

public class FloorIsLava {
//Takes in an input n
//Prints all even numbers uptil n in ascending order and then all the odd numbers way back in descending order
//Prints nothing if n = 0
    public static void main (String[] args ) {

	// WRITE YOUR CODE HERE
    
    int n = Integer.parseInt(args[0]);
    if (n != 0) {
        String outputString = "";
        for (int i = 1; i <=n; i++){
            if (i%2==0){
                outputString += i;
                outputString += " ";
            }
        }
        for (int i=n; i>0; i--){
            if (i%2==1){
                outputString += i;
                outputString += " ";
            }
        }

        if (outputString.length()>1){
            outputString = outputString.substring(0, outputString.length()-1);
        }
        System.out.println(outputString);
    }
    }
}
