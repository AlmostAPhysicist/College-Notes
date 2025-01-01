public class StudentsIO {
    
    public static void main(String[] args) {
        
        //goal: read student info and print out in format
        //_name_ is majoring in _major_ and has a GPA of _gpa_
        int numOfStudents = StdIn.readInt();
        for (int i = 0; i < numOfStudents; i++) {

            //Note: Reading the string only works for Strings without space. So it's file for Single Words but otherwise use ReadLine (this creates an empty line at the end thoughx)
            String name = StdIn.readString(); //read name 
            String major = StdIn.readString(); //read major
            double gpa = StdIn.readDouble(); //read double

            StdOut.println(name + " is majoring in " + major + " and has a GPA of " + gpa);
        }



    }
}
