/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package farmi;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextArea;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;

/**
 * FXML Controller class
 *
 * @author bruno
 */
public class Result_PageController implements Initializable {

    @FXML
    private Label vegName;
    @FXML
    private Label vegWeather;
    @FXML
    private ImageView vegImage;
    @FXML
    private JFXButton back;
    @FXML
    private Label vegSoil;
    @FXML
    private Label vegHarvest;
    @FXML
    private JFXTextArea vegProcess;
    @FXML
    private Label vegPest;
    @FXML
    private Label vegPesticide;
    @FXML
    private Label vegPesticidePrice;
    @FXML
    private Label vegDisease;
    @FXML
    private Label vegDiseaseChem;
    @FXML
    private Label vegChemComp;
    @FXML
    private Label vegMarket;
    @FXML
    private Label vegMarketPrice;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    @FXML
    private void goBack(ActionEvent event) {
    }
    
}
