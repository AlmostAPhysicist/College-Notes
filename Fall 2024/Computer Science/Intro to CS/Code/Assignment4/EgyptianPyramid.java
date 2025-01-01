
/**
 * Compilation: javac EgyptianPyramid.java
 * Execution:   java EgyptianPyramid 'size of grid' 'number of initial blocks'
 *
 * @author Ayla Muminovic
 * @author Kushi Sharma
 *
 * DO NOT change the class name DO NOT use System.exit() DO NOT change add
 * import statements DO NOT add project statement
 */
public class EgyptianPyramid {

    public static void main(String[] args) {

        // WRITE YOUR CODE HERE
        // Populate Pyramid (char Matrix) with '=' for empty spaces
        // Starting from the bottom, keep populating spaces with 'x' for bricks
        int size = Integer.parseInt(args[0]);
        int nbricks = Integer.parseInt(args[1]);
        char[][] pyramid = new char[size][size];

        //Populate pyramid with '='
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                pyramid[i][j] = '=';
            }
        }

        //Populate pyramid with 'x' for bricks from last row
        int bricksLaid = 0; //count of number of bricks laid so far
        int nextBrickRow = size - 1; //index of next brick's row
        int nextBrickIndex = 0; //index of next brick to be laid
        int NextRowIndexFromEnd = (size-1) - nextBrickRow;
        int nBricksInRow = size - 2*NextRowIndexFromEnd;

        while ((bricksLaid != nbricks) && (nBricksInRow>0))  {
            //until our bricks are all laid down or until we build the entire pyramid.. i.e. when we finish the top and reach row -1 (the air!)
            pyramid[nextBrickRow][nextBrickIndex] = 'X';
            bricksLaid++;
            nextBrickIndex++;
            if (nextBrickIndex == nextBrickRow+1) {
                //number of bricks in a row must be the same as index of row
                //if it is higher, switch row
                nextBrickRow--;
                NextRowIndexFromEnd = (size-1) - nextBrickRow;
                nextBrickIndex = NextRowIndexFromEnd;
                nBricksInRow = size - 2*NextRowIndexFromEnd;    
            }
        }

        for (int i=0; i<size; i++) {
            for (int j=0; j<size; j++) {
                System.out.print(pyramid[i][j]);
            }
            System.out.println();
        }
        System.out.println((nbricks-bricksLaid)+" Bricks Remaining");
    }
}
