public class Driver {
    /**
     * Navigate to the RURacing directory and compile the files using the following:
     * Compilation: javac -d bin *.java
     * Execution: java -cp bin Driver
     */
    public static void main(String[] args) {
        // Compilation: javac -d bin src/ruracing/Driver.java
        // Execution: java -cp bin ruracing.Driver
        // use -ea option when running, helps verify test cases

        // You will be responsible for implementing the methods in RURacing.java
        // To test your implementation you must create your own test cases
        // and verify that your implementation is correct. All methods will be
        // tested through RURacing.methodName() calls.
        int[] points = RURacing.readTrackFile(args[0]);
        char[][] map = RURacing.createRaceway(points);
        RURacing.racer3(map);
        RURacing.printMap(map);
        // System.err.println(map[map.length-1][map[0].length-1]);
    }
}
