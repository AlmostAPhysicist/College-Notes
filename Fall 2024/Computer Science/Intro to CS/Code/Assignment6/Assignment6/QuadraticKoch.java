/*************************************************************************
 * Compilation: javac QuadraticKoch.java
 * Execution: java QuadraticKoch n
 *
 * @author Jeremy Hui
 *
 *************************************************************************/
public class QuadraticKoch {

    /**
     * Gets the set of coordinates to draw one segment of the Quadratic Koch Curve.
     * Returns the coordinates in a 2D array of doubles in the following format:
     * {array of x-coordinates,
     * array of y-coordinates}
     * 
     * @param x0 the x-coordinate of one endpoint
     * @param y0 the y-coordinate of one endpoint
     * @param x5 the x-coordinate of the other endpoint
     * @param y5 the y-coordinate of the other endpoint
     * @return the set of coordinates to draw one segment of the Quadratic Koch
     *         Curve
     */
    public static double[][] getCoords(double x0, double y0, double x5, double y5) {
        // WRITE YOUR CODE HERE

        double[] v = {x5-x0, y5-y0};
        double[] vPerp = {-v[1], v[0]};

        //p1 = p0 + v/3
        double x1 = x0 + v[0]/3; //Equivalent form of saying x0 + dx/3
        double y1 = y0 + v[1]/3; // Equivalent form of saying y1 + dy/3

        //p2 = p0 + v/3 + vPerp/3
        double x2 = x0 + v[0]/3 + vPerp[0]/3;
        double y2 = y0 + v[1]/3 + vPerp[1]/3;

        //p3 = p0 + v*2/3 + vPerp/3
        double x3 = x0 + v[0]*2/3 + vPerp[0]/3;
        double y3 = y0 + v[1]*2/3 + vPerp[1]/3;

        //p4 = p0 + v/3
        double x4 = x0 + v[0]*2/3;
        double y4 = y0 + v[1]*2/3;

        double[][] points = {
            {x0,x1,x2,x3,x4,x5},
            {y0,y1,y2,y3,y4,y5}
        };

        return points;
    }

    /**
     * Gets the set of coordinates from getCoords() to draw the snowflake,
     * and calls Koch on two adjacent array indices with n being one less.
     * The method draws a line between the two endpoints if n == 0.
     * 
     * @param x0 the x-coordinate of one endpoint
     * @param y0 the y-coordinate of one endpoint
     * @param x5 the x-coordinate of the other endpoint
     * @param y5 the y-coordinate of the other endpoint
     * @param n  The current order
     */
    public static void koch(double x0, double y0, double x5, double y5, int n) {
        // WRITE YOUR CODE HERE
        if (n ==0){
            StdDraw.line(x0, y0, x5, y5);
        }
        else{
            double[][] points = getCoords(x0, y0, x5, y5);

            for (int i=1; i<points[0].length; i++){
                koch(points[0][i-1], points[1][i-1], points[0][i], points[1][i], n-1);
            }
        }
    }

    /**
     * Takes an integer command-line argument n,
     * and draws a Quadratic Koch Curve of order n in a 1 x 1 canvas
     * with an initial square side length of 0.5.
     * 
     * @param args command-line arguments
     */
    public static void main(String[] args) {
        // WRITE YOUR CODE HERE
        int n = Integer.parseInt(args[0]);
        double[][] startingPoints = {
            {0.25, 0.25},
            {0.25, 0.75},
            {0.75, 0.75},
            {0.75, 0.25},
            {0.25, 0.25}
        };


        for (int i = 1; i < startingPoints.length; i++) {
            koch(startingPoints[i-1][0], startingPoints[i-1][1],startingPoints[i][0],startingPoints[i][1], n);
        }

    }
}