
/*************************************************************************
 *  Compilation:  javac Elevator.java
 *  Execution:    java Elevator 'number of floors' 'floor requests' 'number of restricted floors' 'optional passcode'
 *
 *  @author Pooja Kedia
 *  @author Vidushi Jindal
 *
 *************************************************************************/
public class Elevator {
    
    public static void main ( String[] args ) {

	// WRITE YOUR CODE HERE

    //Inputs
    int nFloors = Integer.parseInt(args[0]);
    int requests = Integer.parseInt(args[1]);
    int nrestricted = Integer.parseInt(args[2]); //Restricted floors are top nrestricted floors
    
    //Parameters
    int e1Floor = 1;
    int e2Floor = 1;

    //Service Loop
    while (requests != 0){

        int requestedFloor = requests%10;
        if (Math.abs(e1Floor-requestedFloor)<=Math.abs(e2Floor-requestedFloor)) {
            System.out.println("1 "+requestedFloor);
            e1Floor = requestedFloor;
        }
        else {
            System.out.println("2 "+requestedFloor);
            e2Floor = requestedFloor;
        }

        if (requestedFloor > (nFloors-nrestricted)) {
            int password = Integer.parseInt(args[3]);
            if ((password%nFloors==requestedFloor)||((password%nFloors==0)&&(requestedFloor==nFloors))) {
                System.out.println("Granted");
            }
            else
            System.out.println("Denied");
        }

        //Request appreciated

        requests = requests/10; //Since requests is an int, it will only keep 512 after requests 5123 ((int)512.3=512)
    }


    }
}
