/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p3_dss;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.RadioButton;
import javafx.stage.Stage;
import net.sf.clipsrules.jni.Environment;

/**
 *
 * @author alejandra
 */
public class SymptomsController implements Initializable {

    @FXML
    RadioButton abd_pain_no;
    @FXML
    RadioButton crash_no;
    @FXML
    RadioButton nauseas_no;
    @FXML
    RadioButton fever_no;
    @FXML
    RadioButton cysts_pancreas_no;
    @FXML
    RadioButton cysts_biliares_no;
    @FXML
    RadioButton satiety_no;
    @FXML
    RadioButton anemia_no;
    @FXML
    RadioButton cysts_spleen_no;
    @FXML
    RadioButton liver_disease_no;
    @FXML
    RadioButton reflux_no;
    @FXML
    

    private Environment clips;
    private Patient p;

    public void initData(Patient p, Environment clips) {
        this.p = p;
        this.clips = clips;

    }

    private void GetSymptoms() throws Exception {

        if (!abd_pain_no.isSelected()) {
            p.setAbd_pain("YES");
        }

        if (!crash_no.isSelected()) {
            p.setCrash("YES");
        }
        if (!nauseas_no.isSelected()) {
            p.setNauseas("YES");
        }
        if (!fever_no.isSelected()) {
            p.setFever("YES");
        }
        if (!cysts_pancreas_no.isSelected()) {
            p.setCysts_pancreas("YES");
        }
        if (!cysts_biliares_no.isSelected()) {
            p.setCysts_biliares("YES");
        }
        if (!satiety_no.isSelected()) {
            p.setSatiety("YES");
        }
        if (!anemia_no.isSelected()) {
            p.setAnemia("YES");
        }
        if (!cysts_spleen_no.isSelected()) {
            p.setCysts_spleen("YES");
        }
        if (!liver_disease_no.isSelected()) {
            p.setLiver_disease("YES");
        }
        if (!reflux_no.isSelected()) {
            p.setReflux("YES");
        }
    }

    //pass to the next window of symptoms
    @FXML
    private void NextSymptoms(ActionEvent event) throws Exception {
        GetSymptoms();
        System.out.println(p.toString());
        try {

            FXMLLoader loader = new FXMLLoader();

            loader.setLocation(getClass().getResource("FXMLSymptoms_1.fxml"));

            Parent surgeryController = loader.load();
            Scene Symptoms = new Scene(surgeryController);
            
            Symptoms_1Controller controller = loader.getController();
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

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }

}
