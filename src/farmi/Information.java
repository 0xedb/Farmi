
package farmi;

import javafx.beans.property.SimpleStringProperty;

/**
 *
 * @author bruno
 */
public class Information {

    private final SimpleStringProperty vegName;    
    
    

    public Information(String vegName) {
        this.vegName = new SimpleStringProperty (vegName);
    }

    public String getVegName() {
        return vegName.get();
    }
    
    
    
}
