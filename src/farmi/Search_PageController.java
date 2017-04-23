/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package farmi;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextField;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.InputMethodEvent;
import javafx.scene.input.KeyEvent;

/**
 * FXML Controller class
 *
 * @author bruno
 */
public class Search_PageController implements Initializable {


    private ObservableList<Information> data;
    private DatabaseConnection dc;
    @FXML
    private JFXTextField txtSearch;
    @FXML
    private TableView<Information> resultTable;
    @FXML
    private TableColumn<?, ?> result;
    @FXML
    private JFXButton search;
    
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    @FXML
    private void search(ActionEvent event) {
        doSearch();
    }

    private void search(InputMethodEvent event) {
        doSearch();
    }

    private void search(KeyEvent event) {
        doSearch();
    }

    @FXML
   public void doSearch() {
       try {
            data = FXCollections.observableArrayList();
            dc = new DatabaseConnection();
            Connection conn = dc.connect();

            ResultSet rs = conn.createStatement().executeQuery("select VegName from vegetable where VegName like '%" + txtSearch.getText() + "%'");
            while (rs.next()) {
                data.add(new Information(rs.getString("VegName")));                
            }

        } catch (SQLException ex) {
            //error occured
        }

        result.setCellValueFactory(new PropertyValueFactory<>("VegName"));

        resultTable.setItems(data);
   }

    
}
