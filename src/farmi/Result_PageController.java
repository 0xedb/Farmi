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
            
            ResultSet rs = con.createStatement().executeQuery("select soil, weather, harvesting_period, picture from vegetable "
                    + "where VegName = '" + Search_PageController.getTitle() + "'");
            String v = Search_PageController.getTitle();
            ResultSet rs1 = con.createStatement().executeQuery("select insect from destroys where vegetable = '" + v + "'");            
            if (rs.next()) {
                //String path = "" + rs.getString("picture");
                //Image vegPic = new Image(rs.getString("picture"), 282, 267, true, true);
                vegName.setText(Search_PageController.getTitle());
                vegSoil.setText(rs.getString("soil"));
                vegWeather.setText(rs.getString("weather"));
                vegHarvest.setText(rs.getString("harvesting_period"));
                if (rs1.next())
                    vegPest.setText(rs1.getString("insect"));
                ResultSet rs2 = con.createStatement().executeQuery("select pesticide from prevents where insect = '" + rs1.getString("insect") + "'");
                if (rs2.next())
                    vegPesticide.setText(rs2.getString("pesticide"));
                ResultSet rs3 = con.createStatement().executeQuery("select priceOfPesticide from pesticides where pesticideName = '" + rs2.getString("pesticide") + "'");
                if (rs3.next())
                    vegPesticidePrice.setText("₵" + rs3.getString("priceOfPesticide"));
                ResultSet rs4 = con.createStatement().executeQuery("select disease from affects where vegetable = '" + v + "'");
                if (rs4.next())
                    vegDisease.setText(rs4.getString("disease"));
                //
                ResultSet rs5 = con.createStatement().executeQuery("select chemical from treats where disease = '" + rs4.getString("disease") + "'");
                if (rs5.next())
                    vegDiseaseChem.setText(rs5.getString("chemical"));
                ResultSet rs6 = con.createStatement().executeQuery("select chemical from treats where disease = '" + rs4.getString("disease") + "'");
                if (rs6.next())
                    vegChemComp.setText(rs5.getString("chemical"));
                //vegImage.setImage(vegPic);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}
