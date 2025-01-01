public class Arrays {
    public static void main(String[] args){

        int[] a = new int[5];
        // declare <type>[] <varName>
        // set <varName> to <type>[<Array Length>]
        //This would populate an array of type <type> with <Array Length> elements that are default for that particular type (Eg: in our code it will create array {0,0,0,0,0})


        a[0] = 7;
        a[1] = 1;
        a[2] = 3;
        a[3] = -5;
        a[4] = 0;

//for (var declaration; end condition; iteration method)

        //Printing Elements
        for (int i=0; i<a.length; i++){ 
            System.out.print(a[i]+" "); //Will Automatically convert a[i] to String
        }

        System.out.println();

        //Printing Elements in reverse order
        for (int i=a.length-1; i>=0; i--){
            System.out.print(a[i]+" ");
        }

        System.out.println();

// for (int iteratorName : ArrayName)
        int sum = 0;
        for (int num : a) {
            sum += num;
            System.out.print(num + " ");
        }
        
        System.out.println();

        System.out.println("average value = " + (double)sum/a.length);

        System.out.println();

        //-------------------------------

        //find the minumum value in array
        int min = a[0];
        for (int i=0; i<a.length; i++){ //int i=1 might give Index Error for a.length=1
            if (a[i] < min)
                min = a[i]; //If you find a smaller number, you update your minimum value
        }

        System.out.println("Minimum: " + min);

        //find the maximum value in array
        int max = a[0];
        for (int i=0; i<a.length; i++){
            if (a[i] > max) //only difference from min is '>' -> '<'
                max = a[i];
        }

        System.out.println("Maximum: " + max);


        //replace negative values with 0
        for (int i=0; i<a.length; i++){
            if (a[i]<0){
                a[i]=0;
            }
        }

        System.out.println("Array Without Negative Numbers: ");

        //System.out.println(a) gives something cool! [I1fb3ebeb
        // [ means it's an array
        // I means it's an Integer Array
        // What follows is the memory address of the array!
        // So simply printing out an array would print it's memory address!
        for (int i : a)
            System.out.print(i + " ");

        // a[2], a[4] = a[4], a[2]; DOES NOT WORK

    }

}
