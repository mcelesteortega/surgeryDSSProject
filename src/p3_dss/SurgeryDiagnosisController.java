/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p3_dss;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import net.sf.clipsrules.jni.Environment;

/**
 *
 * @author alejandra
 */
public class SurgeryDiagnosisController implements Initializable {
    
    
    //usaremos este label para luego mostrar la solucion final
    @FXML
    private Label Label;
    private Environment clips;
    private Patient p;
    
    public void initData(Patient p, Environment clips) {
        this.p = p;
        this.clips = clips;

    }
     @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    } 
    
}
