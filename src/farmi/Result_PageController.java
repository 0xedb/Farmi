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
import javafx.scene.image.Image;
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
    String v;
    private DatabaseConnection dc;
    

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {        
        getAllInfo();

    }    
    
    

    @FXML
    private void goBack(ActionEvent event) {
        searchScreen = (Stage) ((Node) event.getSource()).getScene().getWindow();
        window = new ChangeWindow("Search_Page.fxml", "Search!", searchScreen);
        window.change().show();
    }

    private void getAllInfo() {
        try {
            dc = new DatabaseConnection();
            Connection con = dc.connect();
            String veg = Search_PageController.getTitle();
            vegName.setText(veg);
            ResultSet rs = con.createStatement().executeQuery("select soil, weather, farmingProcess"
                    + ", harvesting_period, picture from vegetable "
                    + "where VegName = '" + veg + "'");
            if (rs.next()) {
                Image vegPic = new Image(rs.getString("picture"));
                vegSoil.setText(rs.getString("soil"));
                vegWeather.setText(rs.getString("weather"));
                vegHarvest.setText(rs.getString("harvesting_period"));
                vegImage.setImage(vegPic);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}
