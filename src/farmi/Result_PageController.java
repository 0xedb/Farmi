/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package farmi;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextArea;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

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
    
    ChangeWindow window;
    
    Stage searchScreen;
    private DatabaseConnection dc;
    

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        System.out.println("here~~~~~~~~~~~~~~~~~~~~");
        
        System.out.println("here~ too~~~~~~~~~~~~~~~~~~~");
        try {
            Connection conn = dc.connect();
            Statement sm = conn.createStatement();
            ResultSet rs = sm.executeQuery("select * from vegetable where VegName = '" + searchScreen.getTitle() + "'");
            if (rs.next()) {
                String pass = rs.getString("soil");
                vegSoil.setText(pass);
                System.out.println(pass);           
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
//        getAllInfo();
    }    

    @FXML
    private void goBack(ActionEvent event) {
        searchScreen = (Stage) ((Node) event.getSource()).getScene().getWindow();
        window = new ChangeWindow("Search_Page.fxml", "Search!", searchScreen);
        window.change().show();
    }
    
//    private void getAllInfo() {
//        try {
//            Connection conn = dc.connect();
//            Statement sm = conn.createStatement();
//            ResultSet rs = sm.executeQuery("select * from vegetable where VegName = '" + searchScreen.getTitle() + "'");
//            if (rs.next()) {
//                String pass = rs.getString("soil");
//                vegSoil.setText(pass);
//                System.out.println(pass);           
//                
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
    
}
