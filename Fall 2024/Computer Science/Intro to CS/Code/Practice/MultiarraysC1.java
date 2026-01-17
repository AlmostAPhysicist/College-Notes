public class MultiarraysC1 {
    public static void main(String[] args) {

        int[][] uninitialized = new int[3][];
        System.out.println(uninitialized[0]); //Here, the ouput would be null
        
        int[] a = {1,2,3};
        uninitialized[0] = a; // can not directly do array[i] = {1,2,3}
        System.out.println(uninitialized[0]);
        System.out.println(uninitialized[1]);

        // int[] b = new int[]; Here array Dimention missing error

        int[][] grades = {
        //   S1  S2  S3
            {56, 78, 67},//Exam 1
            {79, 92, 83},//Exam 2
            {90, 89, 79},//Exam 3
            {51, 67, 84} //Exam 4
        };

        for (int i=0; i< grades.length; i++) {// each row/exam
            int sum = 0;

            for (int j=0; j<grades[i].length; j++){
                sum += grades[i][j];
            }

            double average = (double)sum / grades[i].length;
            System.out.println("The average of exam " + (i+1) + " is " + average);
            //Writing out average of ith row (i+1th exam... 0th row means 1st exam)
        }
    }
}
