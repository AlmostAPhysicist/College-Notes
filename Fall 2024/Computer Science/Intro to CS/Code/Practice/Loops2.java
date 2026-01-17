public class Loops2 {
    public static void main(String[] args) {
        
        // int count = 1;
        // int sum = 0;
        // int n = Integer.parseInt(args[0]);

        // While Loops
        /*
        while (count <= n){
            sum = sum + count;
            count = count + 1;
        }

        */
        
        //For Loops
        //Note how for loops are actually just while loops where you incrementally increase an index
        
        // for (int i=0; i<n; i++){
        //     sum += count;
        //     count++;
        // }
        
        // System.out.println(sum);

        /*
         * loop {
         *  if something
         *      continute
         * }
         * 
         * this would mean if the if statement is caught, the loop will hault for that iteration only
        */

        //Nesting
        int a = 1;
        if (a<0){
            System.err.println(0);
        }
        else if (a>0){
            System.err.println(1);
        }
    }
}
