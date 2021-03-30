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
import javafx.scene.control.Label;
import javafx.scene.control.RadioButton;
import javafx.stage.Stage;
import net.sf.clipsrules.jni.Environment;

/**
 *
 * @author alejandra
 */
public class Symptoms_1Controller implements Initializable {

    private Environment clips;
    private Patient p;
    @FXML
    private RadioButton difficulty_swallow_no;

    @FXML
    private RadioButton acidity_no;

    @FXML
    private RadioButton loss_weight_no;

    @FXML
    private RadioButton cough_no;

    @FXML
    private RadioButton lost_voice_no;

    @FXML
    private RadioButton respiratory_problems_no;

    @FXML
    private RadioButton vomits_no;

    @FXML
    private RadioButton dark_stools_no;

    @FXML
    private RadioButton torax_pain_no;
    
    @FXML
    private Label PatientName;

    public void initData(Patient p, Environment clips) {
        this.p = p;
        this.clips = clips;
        PatientName.setText(p.getName_id());

    }

    private void GetSymptoms() throws Exception {

        if (!difficulty_swallow_no.isSelected()) {
            p.setDifficulty_swallow("YES");
        }

        if (!acidity_no.isSelected()) {
            p.setAcidity("YES");
        }
        if (!loss_weight_no.isSelected()) {
            p.setLoss_weigh("YES");
        }
        if (!cough_no.isSelected()) {
            p.setCough("YES");
        }
        if (!lost_voice_no.isSelected()) {
            p.setLoss_voice("YES");
        }
        if (!respiratory_problems_no.isSelected()) {
            p.setRespiratory_problems("YES");
        }
        if (!vomits_no.isSelected()) {
            p.setVomit("YES");
        }
        if (!dark_stools_no.isSelected()) {
            p.setDark_stools("YES");
        }
        if (!torax_pain_no.isSelected()) {
            p.setTorax_pain("YES");
        }

    }

    @FXML
    private void EndButton(ActionEvent event) throws Exception {
        GetSymptoms();
        System.out.println(p.toString());
        clips.assertString("(patient (name " + p.getName_id() + ") (abd-pain " + p.getAbd_pain() + ") "
                + "(crash " + p.getCrash() + ") (nausea " + p.getNauseas() + ") (fever " + p.getFever() + ") "
                + "(quistes-pancreas " + p.getCysts_pancreas() + ") (cysts-biliares " + p.getCysts_biliares() + ") "
                + "(satiety " + p.getSatiety() + ") (anemia " + p.getAnemia() + ")"
                + "(cysts-spleen " + p.getCysts_spleen() + ")(liver-disease " + p.getLiver_disease() + ") "
                + "(reflux " + p.getReflux() + ") (difficulty-swallow " + p.getDifficulty_swallow() + ") "
                + "(acidity " + p.getAcidity() + ") (loss-weight " +p.getLoss_weigh() +") (cough "+ p.getCough()+") "
                + "(loss-voice "+p.getLoss_voice()+") (respiratory-problems "+p.getRespiratory_problems()+") "
                + "(vomit "+p.getVomit()+") (dark-stools "+p.getDark_stools()+") (torax-pain "+p.getTorax_pain()+")"
                + "(proposed-operation "+p.getProposed_operation()+"))");
        
        System.out.println("(patient (name " + p.getName_id() + ") (abd-pain " + p.getAbd_pain() + ") "
                + "(crash " + p.getCrash() + ") (nausea " + p.getNauseas() + ") (fever " + p.getFever() + ") "
                + "(quistes-pancreas " + p.getCysts_pancreas() + ") (cysts-biliares " + p.getCysts_biliares() + ") "
                + "(satiety " + p.getSatiety() + ") (anemia " + p.getAnemia() + ")"
                + "(cysts-spleen " + p.getCysts_spleen() + ")(liver-disease " + p.getLiver_disease() + ") "
                + "(reflux " + p.getReflux() + ") (difficulty-swallow " + p.getDifficulty_swallow() + ") "
                + "(acidity " + p.getAcidity() + ") (loss-weight " +p.getLoss_weigh() +") (cough "+ p.getCough()+") "
                + "(loss-voice "+p.getLoss_voice()+") (respiratory-problems "+p.getRespiratory_problems()+") "
                + "(vomit "+p.getVomit()+") (dark-stools "+p.getDark_stools()+") (torax-pain "+p.getTorax_pain()+")"
                + "(proposed-operation "+p.getProposed_operation()+"))");
        try {

            FXMLLoader loader = new FXMLLoader();

            loader.setLocation(getClass().getResource("FXMLSurgeryDiagnosis.fxml"));

            Parent SymptomsController = loader.load();
            Scene Symptoms_1 = new Scene(SymptomsController);
            
            SurgeryDiagnosisController controller = loader.getController();
            controller.initData(p, clips);

            //SurgeryController controller = loader.getController();
            Stage window = new Stage();
            window.setScene(Symptoms_1);

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
