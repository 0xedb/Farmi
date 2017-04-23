
package farmi;

import javafx.beans.property.SimpleDoubleProperty;
import javafx.beans.property.SimpleStringProperty;

/**
 *
 * @author bruno
 */
public class Information {

    private final SimpleStringProperty vegName;
    private final SimpleStringProperty soil;
    private final SimpleStringProperty weather;
    private final SimpleStringProperty harvest;
    private final SimpleStringProperty process;
    private final SimpleStringProperty disease;
    private final SimpleStringProperty chemical;
    private final SimpleStringProperty market;
    private final SimpleStringProperty company;
    private final SimpleDoubleProperty chemPrice;
    private final SimpleDoubleProperty pesticidePrice;
    private final SimpleStringProperty pesticide;
    private final SimpleStringProperty pest;
    
    

    public Information(String vegName, String soil, String weather, String harvest, String process,
            String disease, String chemical, String market, String company, double chemPrice, String pest, String pesticide,
            double pesticidePrice)
    {
        this.vegName = new SimpleStringProperty (vegName);
        this.soil = new SimpleStringProperty (soil);
        this.weather = new SimpleStringProperty (weather);
        this.harvest = new SimpleStringProperty (harvest);
        this.process = new SimpleStringProperty (process);
        this.disease = new SimpleStringProperty (disease);
        this.chemical = new SimpleStringProperty (chemical);
        this.market = new SimpleStringProperty (market);
        this.company = new SimpleStringProperty (company);
        this.chemPrice = new SimpleDoubleProperty (chemPrice);
        this.pest = new SimpleStringProperty (pest);
        this.pesticide = new SimpleStringProperty (pesticide);
        this.pesticidePrice = new SimpleDoubleProperty (pesticidePrice);
        
    }
    
    
}
