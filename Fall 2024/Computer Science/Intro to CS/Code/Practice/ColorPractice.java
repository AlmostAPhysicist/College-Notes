import java.awt.Color; //import the Color Abstract type that is already in the java environment
public class ColorPractice {
    
    public static void main(String[] args){

        Color c1 = new Color(255, 0, 0); //Creates Color RED
        c1.getRed(); //255
        c1.getGreen(); //0
        StdDraw.setPenColor(c1);

        StdDraw.filledCircle(0.5,0.5,0.2);
    }

    public static void randColor(){
    }

    public static int randInt(int lower, int higher){
        //Returns a random Integer from a range of [lower to higher) i.e. including lower but excluding higher
        return (int)(Math.random()*(higher - lower)) + lower;

    }
}
