public class Factor {
    public static void main(String[] args)
    {
        long n = Long.parseLong(args[0]);
        for (int i=2; i<=n; i++)
        {
            while (n%i==0) 
            { //You want to divide by 2 as long as it is dividing
                System.out.print(i+" ");
                n = n/i;
            }
        }
    }
}