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
import javafx.scene.control.TreeTableColumn;
import javafx.scene.control.TreeTableView;
import javafx.scene.input.InputMethodEvent;
import javafx.scene.input.KeyEvent;

/**
 * FXML Controller class
 *
 * @author bruno
 */
public class Search_PageController implements Initializable {

    @FXML
    private JFXButton search;
    @FXML
    private TreeTableView<?> resultTable;
    @FXML
    private TreeTableColumn<?, ?> result;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    @FXML
    private void search(ActionEvent event) {
    }

    @FXML
    private void search(InputMethodEvent event) {
    }

    @FXML
    private void search(KeyEvent event) {
    }
    
}
