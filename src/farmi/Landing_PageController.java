/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package farmi;

import com.jfoenix.controls.JFXButton;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author bruno
 */
public class Landing_PageController implements Initializable {
    ChangeWindow window;

    @FXML
    private JFXButton go;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    @FXML
    private void moveToSearch(ActionEvent event) {
        Stage searchStage;
        searchStage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        window = new ChangeWindow("Search_Page.fxml", "Search!", searchStage);
        window.change().show();
    }
    
}
