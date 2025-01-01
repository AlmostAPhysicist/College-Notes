//Returns an output integer between 0 and n-1 for an input n
public class Random {
    public static void main(String[] args){
        int n = Integer.parseInt(args[0]);
        double rand = Math.random(); //[0, 1)
        int t = (int)(rand*n); //rand*n is gonna be 0*n and 0.999*n hence int casting is gonna give us 0 to n-1
        //int t = (int)(rand*n) + 1; maps [0, n-1] -> [1, n] 
        System.out.println(t);
    }
}
