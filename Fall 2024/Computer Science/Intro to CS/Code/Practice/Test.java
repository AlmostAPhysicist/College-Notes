public class Test
{
    public static void main(String[] args)
    {   int accountBalance; //declare variables
        int myMonthlyPay;

        accountBalance = 1234;
        myMonthlyPay = 990;

        int newBalance = accountBalance + myMonthlyPay; //declare variables while settnig their value;

        double percentIncrease= ((1.0f * newBalance / accountBalance)-1.0f)*100;

        //Print Statement
        System.out.println(percentIncrease + "percent increase in balance"); //note how java concacenates strings and ints... behind the scenes it automatically converts ints to strings


        // int i1 = 5;
        // float f = 0.5f;
        // int i2 = 2;
        // System.out.println(i1 * f);
        // System.out.println(i1 / i2);
        // System.out.println(((float) i1) / i2);
        

        double[] a;
    }

}