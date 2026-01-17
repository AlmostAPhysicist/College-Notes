/**
 * FruitCosts 
 * 
 * 1. This program reads in a list of fruits and their costs from a file (args[0]).
 * 2. Then finds the two lowest cost fruits and prints their names and costs
 * along with the total cost.
 * 
 * @author Srimathi Vadivel
 * @author Sarah Benedicto
 */
public class FruitCosts {
    /**
     * Main function to execute the program
     * 
     * @param args command-line arguments, where args[0] is the file name to read from
     */
    public static void main(String[] args) {

	// Do not remove this line, it opens the file for reading.
	StdIn.setFile(args[0]);

	// StdIn.readDouble, StdIn.readString() to read from the file
    int nfruits = StdIn.readInt();

    String[] fruits = new String[nfruits];//StdIn.readString();
    double[] costs = new double[nfruits];//StdIn.readDouble();

    for (int i = 0; i < nfruits; i++){
        fruits[i] = StdIn.readString();
        costs[i] = StdIn.readDouble();
    }
	// WRITE YOUR CODE HERE
    int low1 = 0;
    int low2 = 1;
    if (costs[0] > costs[1]) {
        low1 = 0;
        low2 = 1;
    }

    int pointer = 2;
    
    
    while (pointer < nfruits){
        if (costs[pointer]<costs[low2])
            low2 = pointer;

        if (costs[low2]<costs[low1]){
            int cache = low2;
            low2 = low1;
            low1 = cache;
        }

        pointer++;
    } 

    System.out.println(fruits[low1] + " " + costs[low1]);
    System.out.println(fruits[low2] + " " + costs[low2]);
    System.out.println("Total " + (float)(costs[low1]+costs[low2]));

    }
}
