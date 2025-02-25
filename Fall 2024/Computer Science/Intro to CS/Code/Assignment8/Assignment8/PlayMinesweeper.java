/**
 * Play Minesweeper.
 * Methods to complete:
 * placeMines(), fillGrid(), openSquare(), placeFlag(), 
 * checkWinCondition(), chooseDifficulty(), playRandom()
 * 
 * @author Jessica de Brito
 * @author Jeremy Hui
 */

public class PlayMinesweeper {
    private Square[][] grid;
    private int flagCount;   // the number of mines in the grid
    private int totalMines;   // the number of mines in the grid

    /**
     * DO NOT UPDATE OR REMOVE THIS METHOD
     * Default constructor.
     * Initializes a 0x0 game grid with 0 flags.
     */
    public PlayMinesweeper() {
        this(new Square[0][0], 0);
    }

    /**
     * DO NOT UPDATE OR REMOVE THIS METHOD
     * Overloaded constructor: initalizes a Play Minesweeper object
     * based on a given 2D array of squares and the number of flags.
     * @param grid the 2D array of squares
     * @param totalMines the number of mines in the grid
     */
    public PlayMinesweeper(Square[][] grid, int totalMines) {
        StdRandom.setSeed(2024);
        this.grid = grid;
        this.flagCount = 0;
        this.totalMines = totalMines;
    }

    /**
     * DO NOT UPDATE OR REMOVE THIS METHOD
     * Returns the 2D array of squares.
     * @return the 2D array of squares
     */
    public Square[][] getGrid() {
        return grid;
    }

    /**
     * DO NOT UPDATE OR REMOVE THIS METHOD
     * REturns the flag count.
     * @return the flag count
     */
    public int getFlagCount() {
        return flagCount;
    }

    /**
     * DO NOT UPDATE OR REMOVE THIS METHOD
     * Returns the mines count.
     * @return the mines count
     */
    public int getMinesCount() {
        return totalMines;
    }

    /**
     * This method takes in an input file and sets the 2D array of squares and
     * flag count according to the specification of the file.
     * The first two integers m and n represent a 2D array of squares with
     * m rows and n columns.
     * Each following line represents a mine to be placed in the 2D array of
     * squares, with the first integer representing the row number, and the
     * second integer representing the column number.
     * 
     * A square with a mine will be represented with a -1 Square number,
     * otherwise the Square number will be left at its default value of 0.
     * All Squares will be left at its default state of being CLOSED.
     * 
     * If the square is a mine, increment totalMines.
     * 
     * @param inputFile the given input file
     * NOTE: All square objects in the 2D array of squares will be initialized.
     */
    public void placeMines(String inputFile) {
        StdIn.setFile(inputFile); // DO NOT REMOVE OR EDIT THIS LINE

        /* WRITE YOUR CODE HERE */
        int m = StdIn.readInt(); int n = StdIn.readInt();
        Square[][] Squares = new Square[m][n];
        for (int i=0; i<m; i++){
            for (int j=0; j<n;j++){
                Squares[i][j] = new Square();
            }
        }
        this.grid = Squares;  
        int i;
        int j;
        while ( !StdIn.isEmpty() ) {
            i = StdIn.readInt(); j = StdIn.readInt(); StdIn.readLine();
            this.grid[i][j].setSqNum(-1);
            System.out.print(i+j);
        }



    }

    /**
     * This method sets the square number of each square in the 2D array
     * of squares array without a mine to equal the number of adjacent mines 
     * in all 8 directions (up, down, left, right, and diagonally).
     * Squares without no adjacent mines will be left at a square number
     * of 0.
     */
    public void fillGrid() {
        /* WRITE YOUR CODE HERE */
        int m = this.grid.length;
        int n = this.grid[0].length;

        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                if (this.grid[i][j].getSqNum() == -1){
                    for (int k=-1; k<=1; k++){
                        for (int l=-1; l<=1; l++){
                            int newi = i+k;
                            int newj = j+l;
                            boolean flag = newi<0 || newi>=m || newj<0 || newj>=n; //If out of bounds of grid
                            if (!flag){
                                if (this.grid[newi][newj].getSqNum()!=-1){ //If the Square is not a mine
                                this.grid[newi][newj].increaseSqNum();
                                }
                            }
                        }
                    }
                }
            }            
        }
    }

    /**
     * This method sets the selected square to be OPEN.
     * If the original state of the square is flagged,
     * remove the flag, don't forget to decrement flagCount.
     * 
     * Additionally, if the square number of the selected square
     * is 0, this method also opens all adjacent squares in all 8
     * directions (up, down, left, right, and diagonally) by
     * setting its square state to be OPEN.
     * 
     * This method returns true if the square selected did not have
     * a mine, and false otherwise.
     * 
     * @param row the given row
     * @param col the given column
     * @return true if the square selected did not have a mine, false otherwise
     */
    public boolean openSquare(int row, int col) {
        /* WRITE YOUR CODE HERE */
        if (this.grid[row][col].getSqState() == State.FLAGGED){
            this.flagCount--;
        }

        this.grid[row][col].setSqState(State.OPEN);

        if (this.grid[row][col].getSqNum() == -1){
            return false;
        }

        if (this.grid[row][col].getSqNum() == 0){
            for (int k=-1; k<=1; k++){
                for (int l=-1; l<=1; l++){
                    int m = this.grid.length;
                    int n = this.grid[0].length;
                    int newrow = row+k;
                    int newcol = col+l;
                    boolean flag = newrow<0 || newrow>=m || newcol<0 || newcol>=n || (newrow==row && newcol==col); 
                    if (!flag){
                        if (this.grid[newrow][newcol].getSqState() != State.OPEN){
                            openSquare(newrow, newcol);
                        }
                    }

                }
            }
        }

        return true; // HERE TO AVOID COMPILATION ERROR -> REPLACE WITH YOUR CODE
    }

    /**
     * This method sets the state of square at a given row and column
     * depending on its current state.
     *
     * If the square is FLAGGED, set the state of the square to be CLOSED
     * to represent removing a flag.
     * 
     * If the square is CLOSED, set the state of the square to be FLAGGED
     * to represent placing a flag.
     * 
     * The flag count must be incremented if a flag is placed
     * and decremented if a flag is removed.
     * 
     * @param row the given row
     * @param col the given column
     */
    public void placeFlag(int row, int col) {
        /* WRITE YOUR CODE HERE */
        if (this.grid[row][col].getSqState()==State.FLAGGED){
            this.grid[row][col].setSqState(State.CLOSED);
            this.flagCount--;
        }
        else if (this.grid[row][col].getSqState()==State.CLOSED){
            this.grid[row][col].setSqState(State.FLAGGED);
            this.flagCount++;
        }
    }

    /**
     * This method returns false if there still exists a square in the 
     * 2D array of squares that is not a mine that does not have an 
     * OPEN state, and true otherwise.
     * @return false if the win condition has not been met, true otherwise
     */
    public boolean checkWinCondition() {
        /* WRITE YOUR CODE HERE */
        int m = this.grid.length;
        int n = this.grid[0].length;
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                if (this.grid[i][j].getSqNum()>=0 && this.grid[i][j].getSqState()!=State.OPEN)
                    return false;
            }
        }
        return true; // HERE TO AVOID COMPILATION ERROR -> REPLACE WITH YOUR CODE
    }

    /**
     * This method sets the dimension of the 2D array of squares
     * and the total mines based on the given difficulty:
     *  - an 8x8 grid and a total mines of 10 on a "Beginner" level,
     *  - a 16x16 grid and a total mines of 40 on an "Intermediate" level,
     *  - and a 30x16 grid and a total mines of 99 on an "Advanced" level. 
     * 
     * @param level the given difficulty level
     * NOTE: All square objects in the 2D array of squares will be initialized.
     */
    public void chooseDifficulty(String level) {
        /* WRITE YOUR CODE HERE */
        int m=0;
        int n=0;

        //Conditions
        if (level.equals("Beginner")){
            m = 8; n = 8; this.totalMines=10;
        }
        if (level.equals("Intermediate")){
            m = 16; n = 16; this.totalMines=40;
        }
        if (level.equals("Advanced")){
            m = 30; n = 16; this.totalMines=99;
        }

        //Grid redefinition
        Square[][] Squares = new Square[m][n];
        for (int i=0; i<m; i++){
            for (int j=0; j<n;j++){
                Squares[i][j] = new Square();
            }
        }
        this.grid = Squares;
    }

    /**
     * This method places mines in the 2D array of squares according
     * to the specifications of the following algorithm:
     *
     * 1. Use StdRandom.uniform() twice, the first of which will
     * be a random row number and the second of which will be a 
     * random row column to place a mine.
     *
     * 2. If the randomly generated row and column numbers already
     * are the position of the first click (given by the input 
     * parameters row and col), generate a new row and column number
     * and repeat this step. Otherwise place a mine at the given
     * row and column.
     *
     * 3. Repeat this process until the grid contains n mines, 
     * where n = 10 for "Beginner" difficulty,
     * n = 40 for "Intermediate" difficulty, and n = 99 for
     * "Advanced" difficulty given by the level input parameter.
     *
     * @param level the given difficulty level
     * @param row the given row of the fist click
     * @param col the given column of the first click
     */
    public void playRandom(String level, int row, int col) {
        /* WRITE YOUR CODE HERE */
    }

    /**
     * DO NOT UPDATE OR REMOVE THIS METHOD
     * This method prints all square numbers in 
     * the 2D array of squares, regardless of its current state.
     * Called when testing individual methods in the TextDriver.
     */
    public void printGridNums() {
        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[0].length; j++)
                StdOut.print(grid[i][j].getSqNum() + "\t");
            StdOut.println();
        }
    }

    /**
     * DO NOT UPDATE OR REMOVE THIS METHOD
     * This method sets all squares to the OPEN state.
     * Called when testing individual methods in the Driver.
     */
    public void openAllSquares() {
        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[0].length; j++) {
                grid[i][j].setSqState(State.OPEN);
            }
        }   
    }

    /**
     * DO NOT UPDATE OR REMOVE THIS METHOD
     * This method sets all squares to the CLOSED state.
     * Called when testing individual methods in the Driver.
     */
    public void closeAllSquares() {
        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[0].length; j++) {
                grid[i][j].setSqState(State.CLOSED);
            }
        }   
    }
}
