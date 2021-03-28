/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p3_dss;

import javafx.fxml.FXML;
import javafx.scene.control.RadioButton;

/**
 *
 * @author AdriCortellucci
 */
public class Patient {

    private String name_id;
    private String abd_pain;
    private String crash;
    private String nauseas;
    private String fever;
    private String cysts_pancreas;
    private String cysts_biliares;
    private String satiety;
    private String anemia;
    private String cysts_spleen;
    private String liver_disease;
    private String reflux;
    private String difficulty_swallow;
    private String acidity;
    private String loss_weigh;
    private String cough;
    private String loss_voice;
    private String respiratory_problems;
    private String vomit;
    private String dark_stools;
    private String torax_pain;

    public Patient(String name_id){
    
        this.name_id = name_id;
        this.abd_pain = "NO";
        this.crash= "NO";
        this.nauseas = "NO";
        this.fever = "NO";
        this.cysts_pancreas = "NO";
        this.cysts_biliares = "NO";
        this.satiety = "NO";
        this.anemia = "NO";
        this.cysts_spleen = "NO";
        this.liver_disease = "NO";
        this.reflux ="NO" ;
        this.difficulty_swallow = "NO";
        this.acidity = "NO";
        this.loss_weigh = "NO";
        this.cough = "NO";
        this.loss_voice = "NO";
        this.respiratory_problems = "NO";
        this.vomit = "NO";
        this.dark_stools = "NO";
        this.torax_pain = "NO";  
 
    }
    

    public String getName_id() {
        return name_id;
    }

    public void setName_id(String name_id) {
        this.name_id = name_id;
    }

    public String getAbd_pain() {
        return abd_pain;
    }

    public void setAbd_pain(String abd_pain) {
        this.abd_pain = abd_pain;
    }

    public String getCrash() {
        return crash;
    }

    public void setCrash(String crash) {
        this.crash = crash;
    }

    public String getNauseas() {
        return nauseas;
    }

    public void setNauseas(String nauseas) {
        this.nauseas = nauseas;
    }

    public String getFever() {
        return fever;
    }

    public void setFever(String fever) {
        this.fever = fever;
    }

    public String getCysts_pancreas() {
        return cysts_pancreas;
    }

    public void setCysts_pancreas(String cysts_pancreas) {
        this.cysts_pancreas = cysts_pancreas;
    }

    public String getCysts_biliares() {
        return cysts_biliares;
    }

    public void setCysts_biliares(String cysts_biliares) {
        this.cysts_biliares = cysts_biliares;
    }

    public String getSatiety() {
        return satiety;
    }

    public void setSatiety(String satiety) {
        this.satiety = satiety;
    }

    public String getAnemia() {
        return anemia;
    }

    public void setAnemia(String anemia) {
        this.anemia = anemia;
    }

    public String getCysts_spleen() {
        return cysts_spleen;
    }

    public void setCysts_spleen(String cysts_spleen) {
        this.cysts_spleen = cysts_spleen;
    }

    public String getLiver_disease() {
        return liver_disease;
    }

    public void setLiver_disease(String liver_disease) {
        this.liver_disease = liver_disease;
    }

    public String getReflux() {
        return reflux;
    }

    public void setReflux(String reflux) {
        this.reflux = reflux;
    }

    public String getDifficulty_swallow() {
        return difficulty_swallow;
    }

    public void setDifficulty_swallow(String difficulty_swallow) {
        this.difficulty_swallow = difficulty_swallow;
    }

    public String getAcidity() {
        return acidity;
    }

    public void setAcidity(String acidity) {
        this.acidity = acidity;
    }

    public String getLoss_weigh() {
        return loss_weigh;
    }

    public void setLoss_weigh(String loss_weigh) {
        this.loss_weigh = loss_weigh;
    }

    public String getCough() {
        return cough;
    }

    public void setCough(String cough) {
        this.cough = cough;
    }

    public String getLoss_voice() {
        return loss_voice;
    }

    public void setLoss_voice(String loss_voice) {
        this.loss_voice = loss_voice;
    }

    public String getRespiratory_problems() {
        return respiratory_problems;
    }

    public void setRespiratory_problems(String respiratory_problems) {
        this.respiratory_problems = respiratory_problems;
    }

    public String getVomit() {
        return vomit;
    }

    public void setVomit(String vomit) {
        this.vomit = vomit;
    }

    public String getDark_stools() {
        return dark_stools;
    }

    public void setDark_stools(String dark_stools) {
        this.dark_stools = dark_stools;
    }

    public String getTorax_pain() {
        return torax_pain;
    }

    public void setTorax_pain(String torax_pain) {
        this.torax_pain = torax_pain;
    }

    @Override
    public String toString() {
        return "Patient{" + "name_id=" + name_id + ", abd_pain=" + abd_pain + ", crash=" + crash + ", nauseas=" + nauseas + ", fever=" + fever + ", cysts_pancreas=" + cysts_pancreas + ", cysts_biliares=" + cysts_biliares + ", satiety=" + satiety + ", anemia=" + anemia + ", cysts_spleen=" + cysts_spleen + ", liver_disease=" + liver_disease + ", reflux=" + reflux + ", difficulty_swallow=" + difficulty_swallow + ", acidity=" + acidity + ", loss_weigh=" + loss_weigh + ", cough=" + cough + ", loss_voice=" + loss_voice + ", respiratory_problems=" + respiratory_problems + ", vomit=" + vomit + ", dark_stools=" + dark_stools + ", torax_pain=" + torax_pain + '}';
    }
    
    
}
