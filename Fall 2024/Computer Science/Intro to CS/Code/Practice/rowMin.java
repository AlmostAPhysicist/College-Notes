public class rowMin {
    public static int min(int[] row){
        int minVal = row[0];
        for (int i=1; i<row.length; i++){
            if (row[i]<minVal){
                minVal = row[i];
            }
        }
        return minVal;
    }

    public static void main(String[] args) {
        int[][] arr = {
            {1,2,3},
            {4,5,6},
            {7,8,9}
        };
        for (int i = 0; i<arr.length; i++)
            System.out.println(min(arr[i]));


        String a = "hello";
        String b = "hello";
        System.out.println(a==b);
    }

}
