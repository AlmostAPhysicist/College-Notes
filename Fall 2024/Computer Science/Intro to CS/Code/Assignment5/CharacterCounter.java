
/**
 * CharacterCounter
 * 
 * 1. This program reads in characters from a file (args[0]) and keeps
 *    track (using an array of size 128) of number of times each character appears in a file.
 * 2. Then, the program writes to the output file (args[1]) from index 32 to 126 inclusive:
 *    [character], [ascii value], [number of times the character appears in the file], [frequency]
 * 
 * @author Mary Buist
 * @author Anna Lu
 */
public class CharacterCounter {

    public static void main(String[] args) {

	// Do not remove this line, it opens the file for reading.
	// Use StdIn.readChar() to read from the file.
	StdIn.setFile(args[0]);

	// Do not remove this line, it opens the file for writing.
	// Use StdOut.println(), StdOut.print(), or StdOut.printf() to write to the file.
	StdOut.setFile(args[1]);
	
	// WRITE YOUR CODE HERE
	
	int[] occurences = new int[128];

	int totalChars = 0;

	while (StdIn.hasNextChar()){
		char c = StdIn.readChar();
		occurences[(int) c] = occurences[(int) c] + 1;
		totalChars++;
	}

	for (int i = 32; i < 127; i++) {
		StdOut.println((char) i + "," + i + "," + occurences[i] + "," + 100.0*occurences[i]/totalChars);
	}
    }
	
}