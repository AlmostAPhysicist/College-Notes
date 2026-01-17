public class Functions2 {
    public static boolean isEven(int x){
        return (x%2==0);
    }

    public static int countEven(int[] nums){
        int count = 0;
        for (int num : nums) {
            if (isEven(num))
                count++;
        }
        return count;
    }

    public static void main(String[] args){
        int[] a = {1,2,3,4,5,6,7,8};

        System.out.println(countEven(a));
    }
}
