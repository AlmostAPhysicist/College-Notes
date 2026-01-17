public class Average {
    public static void main(String[] args) {
        
        //calculate average of a stream of doubles from user-input
        double sum = 0.0;
        int n = 0;//count of numbers inputting

        while (!StdIn.isEmpty()){ 
        //StdIn.isEmpty checks whether the Input is ctrl+z (^Z)
        // No input and enter doesn't mean an empty stream
        //Stream only validates in input after `Enter` this is NOT KeyPress!
            double x = StdIn.readDouble();
            sum += x;
            n++;
        }

        StdOut.println("Average: " + (sum/n));



    }
}

//INPUT STREAM ENDS WHEN YOU PRESS `ctrl+z`