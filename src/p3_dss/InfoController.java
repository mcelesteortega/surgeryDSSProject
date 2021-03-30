/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p3_dss;

import java.io.IOException;
import java.net.URL;
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
import javafx.scene.image.ImageView;
import javafx.stage.Stage;
import net.sf.clipsrules.jni.CLIPSException;
import net.sf.clipsrules.jni.Environment;


public class InfoController implements Initializable {
    
    
    
private Environment clips;
private Patient p;
    
@FXML
private Label nameSurgery;
    
@FXML
private ImageView Image_pancreatitis;
     
     
@FXML
private ImageView Image_splenectomy;

@FXML
private ImageView Image_hernia;

@FXML
private ImageView Image_barret;

@FXML
private ImageView Image_achalasia;
 
    
    
      public void initData(Patient p, Environment clips) throws Exception {
        this.p = p;
        this.clips = clips;
        nameSurgery.setText(p.getCorrected_surgery());
         try {
            this.clips.run();
            Info();
        } catch (CLIPSException ex) {
            Logger.getLogger(SurgeryDiagnosisController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
      
    
      private void Info() throws Exception {
          
          if(p.getCorrected_surgery().equals("Pancreatitis")){
            Image_pancreatitis.setVisible(true);
            Image_splenectomy.setVisible(false);
            //Image_hernia.setVisible(false);
            //Image_barret.setVisible(false);
            //Image_achalasia.setVisible(false);
          }
          
          if(p.getCorrected_surgery().equals("Splenectomy")){
            Image_pancreatitis.setVisible(false);
            Image_splenectomy.setVisible(true);
           // Image_hernia.setVisible(false);
            //Image_barret.setVisible(false);
            //Image_achalasia.setVisible(false);
     }
        
        if(p.getCorrected_surgery().equals("Hernia")){
            Image_pancreatitis.setVisible(false);
            Image_splenectomy.setVisible(false);
           // Image_hernia.setVisible(true);
           // Image_barret.setVisible(false);
            //Image_achalasia.setVisible(false);
     }
        
        if(p.getCorrected_surgery().equals("Barret")){
            Image_pancreatitis.setVisible(false);
            Image_splenectomy.setVisible(false);
           // Image_hernia.setVisible(false);
           // Image_barret.setVisible(true);
           // Image_achalasia.setVisible(false);
     }
        
        if(p.getCorrected_surgery().equals("Achalasia")){
            Image_pancreatitis.setVisible(false);
            Image_splenectomy.setVisible(false);
            //Image_hernia.setVisible(false);
            //Image_barret.setVisible(false);
           // Image_achalasia.setVisible(true);
     }
          
          
      }  
      
      
      
      
      
      
      
    @FXML
    private void Back(ActionEvent event) throws Exception {

        //load the new window
        FXMLLoader loader = new FXMLLoader();

        loader.setLocation(getClass().getResource("FXMLSurgeryDiagnosis.fxml"));

        Parent startView = loader.load();
        Scene surgeryDiagnosis = new Scene(startView);

        SurgeryDiagnosisController controller = loader.getController();
        controller.initData(p, clips);

        Stage window = new Stage();
        window.setScene(surgeryDiagnosis);

        window.show();

        // Cierro la ventana donde estoy
        Stage myStage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        myStage.close();

    }
    
    
    
    
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }  
    
}
