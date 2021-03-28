/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p3_dss;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.RadioButton;
import javafx.stage.Stage;
import net.sf.clipsrules.jni.Environment;

/**
 *
 * @author alejandra
 */
public class SurgeryController implements Initializable {

    @FXML
    private ComboBox surgeryBox;

    @FXML
    private Label Label;

    private Environment clips;
    private Patient p;

    public void initData(Patient p, Environment clips) {
        this.p = p;
        this.clips = clips;

    }

    @FXML
    private void NextButton(ActionEvent event) throws Exception {
        
        if (surgeryBox.getValue().equals("")) {
            
        } else {
            System.out.println(p.toString());

            try {

                FXMLLoader loader = new FXMLLoader();

                loader.setLocation(getClass().getResource("FXMLSymptoms.fxml"));

                Parent surgeryController = loader.load();
                Scene Symptoms = new Scene(surgeryController);

                SymptomsController controller = loader.getController();
                controller.initData(p, clips);

                //SurgeryController controller = loader.getController();
                Stage window = new Stage();
                window.setScene(Symptoms);

                window.show();

                // Cierro la ventana donde estoy
                Stage myStage = (Stage) ((Node) event.getSource()).getScene().getWindow();
                myStage.close();

            } catch (IOException e) {
                System.out.println("Error" + e);
            }
        }
        /*
        
        switch (surgery_selected) {
            case "Pancreatitis":
                Label.setText("Pancreatitis selected");
                

        
                break;
            case "Splenectomy":   
                Label.setText("Splenectomy selected");
                break;
            case "Hiatal hernia":
                Label.setText("Hernia selected");
                break;
            case "Barret syndrome":
                Label.setText("Barret syndrome selected");
                break;
            case "Achalasia":
                break;
            default:
                Label.setText("Select a surgery");
                break;
        }

         */
    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        surgeryBox.getItems().add("Pancreatitis");
        surgeryBox.getItems().add("Splenectomy");
        surgeryBox.getItems().add("Barret syndrome");
        surgeryBox.getItems().add("Hiatal hernia");
        surgeryBox.getItems().add("Achalasia");
        surgeryBox.setValue("");
    }

}
