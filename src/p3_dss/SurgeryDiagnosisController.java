/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p3_dss;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.net.URL;
import java.util.Collections;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;
import net.sf.clipsrules.jni.Environment;
import net.sf.clipsrules.jni.CLIPSException;
import net.sf.clipsrules.jni.Environment;
import net.sf.clipsrules.jni.FactAddressValue;


public class SurgeryDiagnosisController implements Initializable {

    private List<Patient> operation;
    //usaremos este label para luego mostrar la solucion final
    
    @FXML
    private Label PatientName;
    @FXML
    private Label proposed;

    @FXML
    private Label recommendation;

    @FXML
    private GridPane gridPane;

    @FXML
    private Label pancreatitis_label;

    @FXML
    private Label splenectomy_label;

    @FXML
    private Label hernia_label;

    @FXML
    private Label barrett_label;

    @FXML
    private Label achalasia_label;

    @FXML
    private Label message;
    
    @FXML
    private Label FinalDecision;

    private Environment clips;

    private Patient p;
    
    

    public void initData(Patient p, Environment clips) throws Exception {
        this.p = p;
        this.clips = clips;
        try {
            this.clips.run();
            showPercentages();
        } catch (CLIPSException ex) {
            Logger.getLogger(SurgeryDiagnosisController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void showPercentages() throws Exception {
        
        proposed.setText(p.getProposed_operation());
        PatientName.setText(p.getName_id());

        FactAddressValue fact_patient = clips.findFact("?p", "patient", "(eq ?p:name " + p.getName_id() + ")");
        
        String correct_op = fact_patient.getSlotValue("correct-operation").toString();
        float score_pancreatitis = Float.parseFloat(fact_patient.getSlotValue("total_per_pancreatitis").toString()) / Float.parseFloat(fact_patient.getSlotValue("max_per_pancreatitis").toString()) * 100;
        float score_splenectomy = Float.parseFloat(fact_patient.getSlotValue("total_per_splenectomy").toString()) / Float.parseFloat(fact_patient.getSlotValue("max_per_splenectomy").toString()) * 100;
        float score_barret = Float.parseFloat(fact_patient.getSlotValue("total_per_Barret").toString()) / Float.parseFloat(fact_patient.getSlotValue("max_per_Barret").toString()) * 100;
        float score_hernia = Float.parseFloat(fact_patient.getSlotValue("total_per_hernia").toString()) / Float.parseFloat(fact_patient.getSlotValue("max_per_hernia").toString()) * 100;
        float score_achalasia = Float.parseFloat(fact_patient.getSlotValue("total_per_achalasia").toString()) / Float.parseFloat(fact_patient.getSlotValue("max_per_achalasia").toString()) * 100;

       
      
        //BUSCAMOS CUAL ES EL SCORE MAXIMO Y MINIMO
        List<Float> t = new ArrayList<Float>();
        t.add(score_pancreatitis);
        t.add(score_splenectomy);
        t.add(score_barret);
        t.add(score_hernia);
        t.add(score_achalasia);
        
   
        double max = 0;
         for (int i = 0; i < t.size(); i++) {
            if (t.get(i) > max) {
                max = t.get(i);
            }
        }
        double min = max;
        for (int i = 0; i < t.size(); i++) {
            if (t.get(i) < min) {
                min = t.get(i);
            }
        }
        System.out.println("Máximo: " + max);
        if(max==score_pancreatitis){
            FinalDecision.setText("Pancreatitis");
            p.setCorrected_surgery("Pancreatitis");
            
        }
        if(max==score_splenectomy){
            FinalDecision.setText("Splenectomy");
            p.setCorrected_surgery("Splenectomy");
        }
        if(max==score_barret){
            FinalDecision.setText("Barret syndrome");
            p.setCorrected_surgery("Barret");
        }
        if(max==score_hernia){
            FinalDecision.setText("Hiatal hernia");
            p.setCorrected_surgery("Hernia");
        }
        if(max==score_achalasia){
            FinalDecision.setText("Achalasia");
            p.setCorrected_surgery("Achalasia");
        }if(max==0.0){
            FinalDecision.setText("Not enough information");
            p.setCorrected_surgery(p.getProposed_operation());
            
        }if(max==100){
            FinalDecision.setText(p.getProposed_operation());
        }
      
        
        ///////////////
        
        
        if (correct_op.equals("nil")) {
            recommendation.setText("NOT recommended because its probability is:");
            
            if (p.getProposed_operation().equals("pancreatitis")) {
                message.setText(String.valueOf(score_pancreatitis));
            }
            
            if (p.getProposed_operation().equals("splenectomy")) {
                message.setText(String.valueOf(score_splenectomy));
            }
             
            if (p.getProposed_operation().equals("Barret")) {
                message.setText(String.valueOf(score_barret));
            }
            if (p.getProposed_operation().equals("hernia")) {
                message.setText(String.valueOf(score_hernia));
            }
            
            if (p.getProposed_operation().equals("achalasia")) {
                message.setText(String.valueOf(score_achalasia));
            }
            
            

            pancreatitis_label.setText(String.valueOf(score_pancreatitis));
            splenectomy_label.setText(String.valueOf(score_splenectomy));
            hernia_label.setText(String.valueOf(score_hernia));
            barrett_label.setText(String.valueOf(score_barret));
            achalasia_label.setText(String.valueOf(score_achalasia));

        } else {
            recommendation.setText("Is recommended because its probability is:");

            if (correct_op.equals("pancreatitis")) {
                message.setText(String.valueOf(score_pancreatitis));
            }
            if (correct_op.equals("splenectomy")) {
                message.setText(String.valueOf(score_splenectomy));
            }
            if (correct_op.equals("Barret")) {
                message.setText(String.valueOf(score_barret));
            }
            if (correct_op.equals("hernia")) {
                message.setText(String.valueOf(score_hernia));
            }
            if (correct_op.equals("achalasia")) {
                message.setText(String.valueOf(score_achalasia));
            }
            gridPane.setVisible(false);
        }

    }
    
    
    


    @FXML
    private void LastButton(ActionEvent event) throws Exception {

        //load the new window
        FXMLLoader loader = new FXMLLoader();

        loader.setLocation(getClass().getResource("FXMLNewPatient.fxml"));

        Parent startView = loader.load();
        Scene newPatient = new Scene(startView);

        NewPatientController controller = loader.getController();
        controller.initData(p, clips);

        Stage window = new Stage();
        window.setScene(newPatient);

        window.show();

        // Cierro la ventana donde estoy
        Stage myStage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        myStage.close();

    }
    
    //visualize the risks of the surgery selected
    @FXML
    private void ViewRisks(ActionEvent event) throws Exception {

        //load the new window
        FXMLLoader loader = new FXMLLoader();

        loader.setLocation(getClass().getResource("FXMLRisks.fxml"));

        Parent startView = loader.load();
        Scene risks = new Scene(startView);

        RisksController controller = loader.getController();
        controller.initData(p, clips);

        Stage window = new Stage();
        window.setScene(risks);

        window.show();

        // Cierro la ventana donde estoy
        Stage myStage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        myStage.close();

    }
    
    @FXML
    private void InfoButton(ActionEvent event) throws Exception {

        //load the new window
        FXMLLoader loader = new FXMLLoader();

        loader.setLocation(getClass().getResource("FXMLInfo.fxml"));

        Parent startView = loader.load();
        Scene Info = new Scene(startView);

        InfoController controller = loader.getController();
        controller.initData(p, clips);

        Stage window = new Stage();
        window.setScene(Info);

        window.show();

        // Cierro la ventana donde estoy
        Stage myStage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        myStage.close();

    }
    
     
     @FXML
    private void EndButton(ActionEvent event) throws Exception {

     
        // Close the current window
        Stage myStage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        myStage.close();

    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        
        

    }

}
