public class Point {
    //instance variables available to the entire class for all methods

    //This is a more standard way to instance variables
    //First instance variables in Private, this would prohibit direct access through Point.x and Point.y; instead, the user would be forced to Use Point.getX() and Point.getY() methods.
    //This gives the creator the ability to pick what powers a user has and what power it doesn't - You can have methods that  give ccess to read, edit, etc.

    private int x; 
    private int y;

    //This would also be a valid thing to do! But beware! That means a user has access to all the variables you declare this way. The user can read, write variables directly as Point.x = 1231
    // int x=1;
    // int y=1;

    //constructor(s) - Point p = new Point();

    //Default Constructor
    public Point(){
        x = 0;
        y = 0;
    }

    //Constructor Method Overload
    public Point(int xval, int yval){
        x = xval;
        y = yval;
    }

    //Note how this is not a Static. Statics are independent of the class. But we want user to call Point.getX(). Hence, we have to make it non static.
    public int getX(){
        return x;
    }
    public int getY(){
        return y;
    }
    public void setX(int xval){
        x = xval;
    }
    public void setY(int yval){
        y = yval;
    }
    public void set(int xval, int yval){
        setX(xval);
        setY(yval);
    }

    // More interesting Methods
    public double findSlope(Point other){
        //(y2-y1)/(x2-x1)
        int x2 = other.getX();
        int y2 = other.getY();
        int x1 = x;
        int y1 = y;

        int rise = y2-y1;
        int run = x2-x1;

        if (run == 0)
            return Double.POSITIVE_INFINITY;
        else 
            return ((double) (rise)/run);
    }

    public double findDistance(Point other){
        int x2 = other.getX();
        int y2 = other.getY();
        int x1 = x;
        int y1 = y;
        int rise = y2-y1;
        int run = x2-x1;

        double distance = Math.sqrt((rise*rise) + (run*run));

        return distance;
    }

    public Point subtract(int xval, int yval){
        Point p = new Point(x-xval, y-yval);
        return p;
    }

    // public double findMidpoint(Point other){
    //     //dir = r2-r1
    //     Point midpoint = new Point((x+(double)other.getX())/2, (y+(double)other.gety())/2) ;
    //     return midpoint;

    // }

    public String toString(){
        // returns a form "(x,y)"
        return ("(" + x + "," + y + ")");
    }
}
