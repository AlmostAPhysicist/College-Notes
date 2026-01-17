/**
 * Class represents solar panels, street map, and
 * an array of parking lot projects.
 * 
 * @author Jessica De Brito
 * @author Kal Pandit
 */
public class SolarPanels {
    
    private Panel[][] panels;
    private String[][] streetMap;
    private ParkingLot[] lots;

    /**
     * Default constructor: initializes empty panels and objects.
     */
    public SolarPanels() {
        panels = null;
        streetMap = null;
        lots = null;
        StdRandom.setSeed(2023);
    }

    /**
     * Updates the instance variable streetMap to be an l x w
     * array of Strings. Reads each label from input file in parameters.
     * 
     * @param streetMapFile the input file to read from
     */
    public void setupStreetMap(String streetMapFile) {
        // WRITE YOUR CODE HERE
        StdIn.setFile(streetMapFile);
        int l = StdIn.readInt();
        int w = StdIn.readInt();
        this.streetMap = new String[l][w];
        for (int i=0; i<l;i++){
            for (int j=0; j<w; j++){
                this.streetMap[i][j] = StdIn.readString();
            }
        }
    }

    /**
     * Adds parking lot information to an array of parking lots.
     * Updates the instance variable lots to store these parking lots.
     * 
     * @param parkingLotFile the lot input file to read
     */
    public void setupParkingLots(String parkingLotFile) {
        // WRITE YOUR CODE HERE
        StdIn.setFile(parkingLotFile);
        int n = StdIn.readInt();
        this.lots = new ParkingLot[n];
        for (int i=0; i<n; i++){
            ParkingLot p = new ParkingLot(StdIn.readString(), StdIn.readInt(), StdIn.readDouble(), StdIn.readInt(), StdIn.readDouble());
            this.lots[i] = p;
        }
    }

    /**
     * Insert panels on each lot as much as space and budget allows.
     * Updates the instance variable panels to be a 2D array parallel to
     * streetMap, storing panels placed.
     * 
     * Panels have a 95% chance of working. Use StdRandom.uniform(); if
     * the resulting value is < 0.95 the panel works.
     * 
     * @param costPerPanel the fixed cost per panel, as a double
     */
    public void insertPanels(double costPerPanel) {
        // WRITE YOUR CODE HERE
        int l = this.streetMap.length;
        int w = this.streetMap[0].length;
        int n = this.lots.length;

        this.panels = new Panel[l][w];

        for (int k=0; k<n; k++){
            ParkingLot lot = lots[k];
            String lotName = lot.getLotName();
            int maxPanels = lot.getMaxPanels();
            double budget = lot.getBudget();
            int energyCapacity = lot.getEnergyCapacity();
            double panelEfficiency = lot.getPanelEfficiency();


            for (int i=0; i<l; i++){
                for (int j=0; j<w; j++){
                    if ((this.streetMap[i][j].equals(lotName)) && (budget >= costPerPanel) && (maxPanels>0)){
                        Panel panel = new Panel(panelEfficiency, energyCapacity, StdRandom.uniform() < 0.95);
                        panels[i][j] = panel;
                        budget -= costPerPanel;
                        maxPanels--;

                    }
                }
            }
        }
    }

    /**
     * Given a temperature and coefficient, update panels' actual efficiency
     * values. Panels are most optimal at 77 degrees F.
     * 
     * Panels perform worse in hotter environments and better in colder ones.
     * worse = efficiency loss, better = efficiency gain.
     * 
     * Coefficients are usually negative to represent energy loss.
     * 
     * @param temperature the current temperature, in degrees F
     * @param coefficient the coefficient to use
     */
    public void updateActualEfficiency(int temperature, double coefficient) {
        // WRITE YOUR CODE HERE
        for (int i=0; i<panels.length; i++){
            for (int j=0; j<panels[0].length; j++){
                if (panels[i][j] != null)
                    panels[i][j].setActualEfficiency(panels[i][j].getRatedEfficiency() - coefficient * (temperature - 77));
            }
        }
    }

    /**
     * For each WORKING panel, update the electricity generated for 4 hours 
     * of sunlight as follows:
     * 
     * (actual efficiency / 100) * 1500 * 4
     * 
     * RUN updateActualEfficiency BEFORE running this method.
     */
    public void updateElectricityGenerated() {
        // WRITE YOUR CODE HERE
        int l = this.panels.length;
        int w = this.panels[0].length;
        for (int i = 0; i < l; i++) {
            for (int j = 0; j < w; j++){
                if ((this.panels[i][j] != null) && this.panels[i][j].isWorking()==true)
                    this.panels[i][j].setElectricityGenerated((int) (this.panels[i][j].getActualEfficiency()/100*1500*4));
            }
        }
    }

    /**
     * Count the number of working panels in a parking lot.
     * 
     * @param parkingLot the parking lot name
     * @return the number of working panels
     */
    public int countWorkingPanels(String parkingLot) {
        // WRITE YOUR CODE HERE
        //return -1; // PLACEHOLDER TO AVOID COMPILATION ERROR - REPLACE WITH YOUR CODE
        int l = this.panels.length;
        int w = this.panels[0].length;
        int n = 0;
        for (int i = 0; i < l; i++) {
            for (int j = 0; j < w; j++){
                if (this.panels[i][j] != null){
                    if (this.streetMap[i][j].equals(parkingLot)){
                        if (this.panels[i][j].isWorking() == true)
                            n++;
                    }
                }
            }
        }

        return n;
    }

    /**
     * Find the broken panels in the map and repair them.
     * @return the count of working panels in total, after repair
     */
    public int updateWorkingPanels() {
        // WRITE YOUR CODE HERE
        // return -1; // PLACEHOLDER TO AVOID COMPILATION ERROR - REPLACE WITH YOUR CODE

        int l = this.panels.length;
        int w = this.panels[0].length;
        int n = 0;
        for (int i = 0; i < l; i++) {
            for (int j = 0; j < w; j++){
                if (this.panels[i][j] != null){
                        if (this.panels[i][j].isWorking() == false)
                            this.panels[i][j].setIsWorking(true);
                    n++;
                }
            }
        }

        return n;
    }


    /**
     * Calculate Rutgers' savings on energy by using
     * these solar panels.
     * 
     * ASSUME:
     * - Multiply total electricity generated by 0.001 to convert to KwH.
     * - There are 365 days in a year.
     * 
     * RUN electricityGenerated before running this method.
     */
    public double calculateSavings() {
        // WRITE YOUR CODE HERE
        // return -1; // PLACEHOLDER TO AVOID COMPILATION ERROR - REPLACE WITH YOUR CODE

        int l = this.panels.length;
        int w = this.panels[0].length;
        double total = 0;
        for (int i = 0; i < l; i++) {
            for (int j = 0; j < w; j++){
                if (this.panels[i][j] != null){
                        total += this.panels[i][j].getElectricityGenerated();
                }
            }
        }

        return (total*0.001*365/4270000*60000000);

    }

    /*
     * Getter and Setter methods
     */
    public Panel[][] getPanels() {
        // DO NOT TOUCH THIS METHOD
        return this.panels;
    }

    public void setPanels(Panel[][] panels) {
        // DO NOT TOUCH THIS METHOD
        this.panels = panels;
    }

    public String[][] getStreetMap() {
        // DO NOT TOUCH THIS METHOD
        return this.streetMap;
    }

    public void setStreetMap(String[][] streetMap) {
        // DO NOT TOUCH THIS METHOD
        this.streetMap = streetMap;
    }

    public ParkingLot[] getLots() {
        // DO NOT TOUCH THIS METHOD
        return this.lots;
    }

    public void setLots(ParkingLot[] lots) {
        // DO NOT TOUCH THIS METHOD
        this.lots = lots;
    }
}
