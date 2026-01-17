public class PointTester {
    public static void main(String[] args) {
        //data_type var_name = new constructor(...)

        Point p1 = new Point();
        System.err.println(p1.getX());
        System.err.println(p1.getY());

        Point p2 = new Point(3,4);
        System.err.println(p1.findSlope(p2));
        System.err.println(p1.findDistance(p2));
    }
}
