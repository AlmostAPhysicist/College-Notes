
public class Cats {

    public static void main(String[] args) {
        //User Input
        int anaCats = Integer.parseInt(args[0]);
        int ellenCats = Integer.parseInt(args[1]);

        //Error Handling
        if (anaCats < 0 || ellenCats < 0) {
            System.out.println("NEGATIVE CATS ERROR");
        } else {

            //Result Computation and Output
            int totalCats = anaCats + ellenCats;
            System.out.println(totalCats);
        }
    }
}
