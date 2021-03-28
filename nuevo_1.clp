(deftemplate patient
	(slot name)
	
	; AGREGAMOS TODOS LOS POSIBLES SINTOMAS
	
	(slot abd-pain)
	(slot crash)
	(slot nausea)
	(slot fever)
	(slot quistes-pancreas)
	(slot cysts-biliares)
	(slot satiety)
	(slot anemia)
	(slot cysts-spleen)
	(slot liver-disease)
	(slot reflux)
	(slot difficulty-swallow)
	(slot acidity)
	(slot loss-weight)
	(slot cough)
	(slot loss-voice)
	(slot respiratory-problems)
	(slot vomit)
	(slot dark-stools)
	(slot torax-pain)
	
	
	
	(slot proposed-operation)
	(slot correct-operation)
	(slot checked (default FALSE))
	
	(slot decision-taken (default FALSE))
	(slot more-patients)
	
	;;SLOTS PARA LAS ENFERMEDADES Y EL PORCENTAJE DE CADA UNA
	;;(slot total_per (default 1))
	(slot per_symptom_computed (default FALSE))
	
	(slot total_per_pancreatitis (default 0))
	(slot total_per_splenectomy (default 0))
	(slot total_per_Barret(default 0))
	(slot total_per_hernia (default 0))
	(slot total_per_achalasia (default 0))
	
	
	;;;; COMPROBACIONES DE LAS DEFRULES
	(slot computed1 (default FALSE))
	(slot computed2 (default FALSE))
	(slot computed3 (default FALSE))
	(slot computed4 (default FALSE))
	(slot computed5 (default FALSE))
	(slot computed6 (default FALSE))
	(slot computed7 (default FALSE))
	(slot computed8 (default FALSE))
	(slot computed9 (default FALSE))
	(slot computed10 (default FALSE))
	(slot computed11 (default FALSE))
	(slot computed12 (default FALSE))
	(slot computed13 (default FALSE))
	(slot computed14 (default FALSE))
	(slot computed15 (default FALSE))
	(slot computed16 (default FALSE))
	(slot computed17 (default FALSE))
	(slot computed18 (default FALSE))
	(slot computed19 (default FALSE))
	(slot computed20 (default FALSE))
	(slot computed21 (default FALSE))
	(slot computed22 (default FALSE))
	(slot computed23 (default FALSE))
	(slot computed24 (default FALSE))
	(slot computed25 (default FALSE))
	(slot computed26 (default FALSE))
	(slot computed27 (default FALSE))
	(slot computed28 (default FALSE))
	(slot computed29 (default FALSE))
	(slot computed30 (default FALSE))
	(slot computed31 (default FALSE))
	(slot computed32 (default FALSE))
	(slot computed33 (default FALSE))
	(slot computed34 (default FALSE))
	(slot computed35 (default FALSE))
	(slot computed36 (default FALSE))
	(slot computed37 (default FALSE))
	(slot computed38 (default FALSE))
	(slot computed39 (default FALSE))
	(slot computed40 (default FALSE))
	
	
	
)


(deftemplate input-patient
	(slot continue)
	(slot name)
)


(deffacts initial
(patient)
)


;; ESTO SE QUEDA IGUAL


(defrule GetName
	(declare (salience 503)) 
	?p <- (patient (name nil))
	=>
	(printout t "Enter the patient's name: ")
	(modify ?p (name (read)))
	
)

(defrule GetOperacion
	(declare (salience 502)) 
	?p <- (patient (name ?name)(proposed-operation nil))
	
	=>
	(printout t "Enter the posible operation: pancreatitis / splenectomy / achalasia / hernia / Barrett : " crlf)
	(modify ?p (proposed-operation (read)))
	(assert (input-patient (name ?name) (continue YES)))
)


;;METEMOS NUESTROS NUEVOS GETS

(defrule GetAbd-pain
	(declare (salience 500))
	?p <- (patient (abd-pain nil))
	=>
	(printout t "Has abdominal pain? (YES/NO): ")
	(modify ?p (abd-pain (read))))
	
	

(defrule GetCrash
	(declare (salience 500))
	?p <- (patient (crash nil))
	=>
	(printout t "Has suffered a crash? (YES/NO): ")
	(modify ?p (crash (read))))
	
	
(defrule GetNausea
	(declare (salience 500))
	?p <- (patient (nausea nil))
	=>
	(printout t "Has nauseas? (YES/NO): ")
	(modify ?p (nausea (read))))
	
	
(defrule GetFever
	(declare (salience 500))
	?p <- (patient (fever nil))
	=>
	(printout t "Has fever? (YES/NO): ")
	(modify ?p (fever (read))))
	
	
(defrule GetQuistes-pancreas
	(declare (salience 500))
	?p <- (patient (quistes-pancreas nil))
	=>
	(printout t "Has quistes on the pancreas? (YES/NO): ")
	(modify ?p (quistes-pancreas (read))))
	
(defrule GetCysts-biliares
	(declare (salience 500))
	?p <- (patient (cysts-biliares nil))
	=>
	(printout t "Has cysts on the biliar vesicle? (YES/NO): ")
	(modify ?p (cysts-biliares (read))))
	
	
(defrule GetSatiety
	(declare (salience 500))
	?p <- (patient (satiety nil))
	=>
	(printout t "Has experienced satiety? (YES/NO): ")
	(modify ?p (satiety (read))))
	
	
	
(defrule GetAnemia
	(declare (salience 500))
	?p <- (patient (anemia nil))
	=>
	(printout t "Has anemia? (YES/NO): ")
	(modify ?p (anemia (read))))
	
	
(defrule GetCysts-spleen
	(declare (salience 500))
	?p <- (patient (cysts-spleen nil))
	=>
	(printout t "Has cystys on the spleen? (YES/NO): ")
	(modify ?p (cysts-spleen(read))))
	
	
(defrule GetLiver-disease
	(declare (salience 500))
	?p <- (patient (liver-disease nil))
	=>
	(printout t "Has any liver disease? (YES/NO): ")
	(modify ?p (liver-disease (read))))
	

(defrule GetReflux
	(declare (salience 500))
	?p <- (patient (reflux nil))
	=>
	(printout t "Has reflux? (YES/NO): ")
	(modify ?p (reflux (read))))
	
(defrule GetDifficulty-swallow
	(declare (salience 500))
	?p <- (patient (difficulty-swallow nil))
	=>
	(printout t "Has difficulty in swallowing? (YES/NO): ")
	(modify ?p (difficulty-swallow (read))))
	

(defrule GetAcidity
	(declare (salience 500))
	?p <- (patient (acidity nil))
	=>
	(printout t "Has acidity? (YES/NO): ")
	(modify ?p (acidity (read))))
	
	
(defrule GetLoss-weight
	(declare (salience 500))
	?p <- (patient (loss-weight nil))
	=>
	(printout t "Has lost weight recently? (YES/NO): ")
	(modify ?p (loss-weight (read))))
	

(defrule GetCough
	(declare (salience 500))
	?p <- (patient (cough nil))
	=>
	(printout t "Has cough? (YES/NO): ")
	(modify ?p (cough(read))))
	
	
(defrule GetLoss-voice
	(declare (salience 500))
	?p <- (patient (loss-voice nil))
	=>
	(printout t "Has lost the voice recently? (YES/NO): ")
	(modify ?p (loss-voice(read))))
	

(defrule GetRespiratory-problems
	(declare (salience 500))
	?p <- (patient (respiratory-problems nil))
	=>
	(printout t "Has any respiratory problems? (YES/NO): ")
	(modify ?p (respiratory-problems(read))))
	
	
	
(defrule GetVomit
	(declare (salience 500))
	?p <- (patient (vomit nil))
	=>
	(printout t "Has suffered from vomits? (YES/NO): ")
	(modify ?p (vomit(read))))
	
	
(defrule GetDark-stools
	(declare (salience 500))
	?p <- (patient (dark-stools nil))
	=>
	(printout t "Has dark stools? (YES/NO): ")
	(modify ?p (dark-stools(read))))


(defrule GetTorax-pain
	(declare (salience 500))
	?p <- (patient (torax-pain nil))
	=>
	(printout t "Has torax pain? (YES/NO): ")
	(modify ?p (torax-pain(read))))
	
	
 
	
;; RULES TO COMPUTE THE ASSOCIATED WEIGHTS FOR EACH PARAMETER 
;; (the product of these would determine the final decision)


;; to avoid firing the same rule over the same data we use
;; control variables per_*_computed (FALSE if not fired, TRUE if fired over that patient)
;; total_per holds the product of the weight all along the procedure and is modified 
;; everytime these rules are fired



;;HACEMOS LOS PORCENTAGES

(defrule AbdPain1
	(declare (salience 300))
	?p <- (patient (abd-pain NO)  (computed1 FALSE) (total_per_pancreatitis ?t1) (total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))
	(computed1 TRUE))
)
	

(defrule AbdPain2
	(declare (salience 300))
	?p <- (patient (abd-pain YES)  (computed2 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 20.0)) (total_per_splenectomy (+ ?t2 20.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed2 TRUE))
)

;;;; CRASH
(defrule Crash1
	(declare (salience 300))
	?p <- (patient (crash NO)  (computed3 FALSE))
	=>
	(modify ?p(computed3 TRUE))
)
	

(defrule Crash2
	(declare (salience 300))
	?p <- (patient (crash YES)  (computed4 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 20.0)) (total_per_splenectomy (+ ?t2 20.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed4 TRUE))
)


;;;; NAUSEA

(defrule Nausea1
	(declare (salience 300))
	?p <- (patient (nausea NO)  (computed5 FALSE))
	=>
	(modify ?p(computed5 TRUE))
)
	

(defrule Nausea2
	(declare (salience 300))
	?p <- (patient (nausea YES)  (computed6 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 25.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed6 TRUE))
)


;;;;; FEVER

(defrule Fever1
	(declare (salience 300))
	?p <- (patient (fever NO)  (computed7 FALSE))
	=>
	(modify ?p(computed7 TRUE))
)
	

(defrule Fever2
	(declare (salience 300))
	?p <- (patient (fever YES)  (computed8 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 25.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed8 TRUE))
)

;;;;; QUISTES PANCREAS

(defrule QuistesPancreas1
	(declare (salience 300))
	?p <- (patient (quistes-pancreas NO)  (computed9 FALSE))
	=>
	(modify ?p(computed9 TRUE))
)
	

(defrule QuistesPancreas2
	(declare (salience 300))
	?p <- (patient (quistes-pancreas YES)  (computed10 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 40.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed10 TRUE))
)

;;;; CYSTS BILIARES

(defrule CystsBiliares1
	(declare (salience 300))
	?p <- (patient (cysts-biliares NO)  (computed11 FALSE))
	=>
	(modify ?p(computed11 TRUE))
)
	

(defrule CystsBiliares2
	(declare (salience 300))
	?p <- (patient (cysts-biliares YES)  (computed12 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 40.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed12 TRUE))
)

;;;;; SATIETY

(defrule Satiety1
	(declare (salience 300))
	?p <- (patient (satiety NO)  (computed13 FALSE))
	=>
	(modify ?p(computed13 TRUE))
)
	

(defrule Satiety2
	(declare (salience 300))
	?p <- (patient (satiety YES)  (computed14 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 15.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed14 TRUE))
)

;;;; ANEMIA

(defrule Anemia1
	(declare (salience 300))
	?p <- (patient (anemia NO)  (computed15 FALSE))
	=>
	(modify ?p(computed15 TRUE))
)
	

(defrule Anemia2
	(declare (salience 300))
	?p <- (patient (anemia YES)  (computed40 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 20.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed40 TRUE))
)


;;;;CYSTS-SPLEEN

(defrule CystsSpleen1
	(declare (salience 300))
	?p <- (patient (cysts-spleen NO)  (computed16 FALSE))
	=>
	(modify ?p(computed16 TRUE))
)
	

(defrule CystsSpleen2
	(declare (salience 300))
	?p <- (patient (cysts-spleen YES)  (computed17 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 40.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed17 TRUE))
)


;;; LIVER DISEASE

(defrule LiverDisease1
	(declare (salience 300))
	?p <- (patient (liver-disease NO)  (computed18 FALSE))
	=>
	(modify ?p(computed18 TRUE))
)
	

(defrule LiverDisease2
	(declare (salience 300))
	?p <- (patient (liver-disease YES)  (computed19 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 40.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed19 TRUE))
)


;;; REFLUX

(defrule Reflux1
	(declare (salience 300))
	?p <- (patient (reflux NO)  (computed20 FALSE))
	=>
	(modify ?p(computed20 TRUE))
)
	

(defrule Reflux2
	(declare (salience 300))
	?p <- (patient (reflux YES)  (computed21 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 15.0)) (total_per_achalasia (+ ?t4 15.0))
	(total_per_hernia (+ ?t5 15.0))(computed21 TRUE))
)


;;;; DIFFICULTY SWALLOW

(defrule DifficultySwallow1
	(declare (salience 300))
	?p <- (patient (difficulty-swallow NO)  (computed22 FALSE))
	=>
	(modify ?p(computed22 TRUE))
)
	

(defrule DifficultySwallow2
	(declare (salience 300))
	?p <- (patient (difficulty-swallow YES)  (computed23 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 15.0)) (total_per_achalasia (+ ?t4 15.0))
	(total_per_hernia (+ ?t5 15.0))(computed23 TRUE))
)


;;;;; ACIDITY


(defrule Acidity1
	(declare (salience 300))
	?p <- (patient (acidity NO)  (computed24 FALSE))
	=>
	(modify ?p(computed24 TRUE))
)
	

(defrule Acidity2
	(declare (salience 300))
	?p <- (patient (acidity YES)  (computed25 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 20.0)) (total_per_achalasia (+ ?t4 20.0))
	(total_per_hernia (+ ?t5 20.0))(computed25 TRUE))
)




;;;;;; LOSS WEIGHT

(defrule Loss-weight1
	(declare (salience 300))
	?p <- (patient (loss-weight NO)  (computed26 FALSE))
	=>
	(modify ?p(computed26 TRUE))
)
	

(defrule Loss-weight2
	(declare (salience 300))
	?p <- (patient (loss-weight YES)  (computed27 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 30.0)) (total_per_achalasia (+ ?t4 30.0))
	(total_per_hernia (+ ?t5 0.0))(computed27 TRUE))
)


;;;;; COUGH

(defrule Cough1
	(declare (salience 300))
	?p <- (patient (cough NO)  (computed28 FALSE))
	=>
	(modify ?p(computed28 TRUE))
)
	

(defrule Cough2
	(declare (salience 300))
	?p <- (patient (cough YES)  (computed29 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 40.0))
	(total_per_hernia (+ ?t5 0.0))(computed29 TRUE))
)


;;;; LOSS VOICE

(defrule Loss-voice1
	(declare (salience 300))
	?p <- (patient (loss-voice NO)  (computed30 FALSE))
	=>
	(modify ?p(computed30 TRUE))
)
	

(defrule Loss-voice2
	(declare (salience 300))
	?p <- (patient (loss-voice YES)  (computed31 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 40.0))(computed31 TRUE))
)


;;;;;; RESPIRATORY PROBLEMS

(defrule RespiratoryProblems1
	(declare (salience 300))
	?p <- (patient (respiratory-problems NO)  (computed32 FALSE))
	=>
	(modify ?p(computed32 TRUE))
)
	

(defrule RespiratoryProblems2
	(declare (salience 300))
	?p <- (patient (respiratory-problems YES)  (computed33 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 0.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 40.0))(computed33 TRUE))
)



;;;;;; VOMIT


(defrule Vomit1
	(declare (salience 300))
	?p <- (patient (vomit NO)  (computed34 FALSE))
	=>
	(modify ?p(computed34 TRUE))
)
	

(defrule Vomit2
	(declare (salience 300))
	?p <- (patient (vomit YES)  (computed35 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 30.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 40.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 0.0))(computed35 TRUE))
)



;;;;; DARK STOOLS

(defrule DarkStools1
	(declare (salience 300))
	?p <- (patient (dark-stools NO)  (computed36 FALSE))
	=>
	(modify ?p(computed36 TRUE))
)
	

(defrule DarkStools2
	(declare (salience 300))
	?p <- (patient (dark-stools YES)  (computed37 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 35.0)) (total_per_achalasia (+ ?t4 0.0))
	(total_per_hernia (+ ?t5 25.0))(computed37 TRUE))
)




;;;;;;; TORAX PAIN

(defrule ToraxPain1
	(declare (salience 300))
	?p <- (patient (torax-pain NO)  (computed38 FALSE))
	=>
	(modify ?p(computed38 TRUE))
)
	

(defrule ToraxPain2
	(declare (salience 300))
	?p <- (patient (torax-pain YES)  (computed39 FALSE) (total_per_pancreatitis ?t1)
	(total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(total_per_hernia ?t5))
	
	=>
	(modify ?p (total_per_pancreatitis (+ ?t1 0.0)) (total_per_splenectomy (+ ?t2 0.0))
	(total_per_Barret (+ ?t3 20.0)) (total_per_achalasia (+ ?t4 20.0))
	(total_per_hernia (+ ?t5 20.0))(computed39 TRUE))
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;; FINAL OR OVERALL COMPUTATION (final step on the workflow)	
;PRINT THE FINAL DECISION

(defrule Total 
	(declare (salience -500))
	
	?p <- (patient (name ?name) (correct-operation ?op-final) (decision-taken FALSE))
	(not (patient (correct-operation nil)))
	
=>
	(modify ?p (decision-taken TRUE))
	(printout t "Final decision for: " ?name crlf)
	(printout t "Correct operation: " ?op-final crlf)
	
)


(defrule Total_nil
	(declare (salience -500))
	?p <- (patient (name ?name) (proposed-operation ?o) (correct-operation nil) (decision-taken FALSE))
	
=>
	(modify ?p (decision-taken TRUE))
	(printout t "Final decision for: " ?name crlf)
	(printout t "The surgery selected " ?o " is not the best solution, keep investigating " crlf)
	
	
)


;(defrule Imprimir_per_pancreatitis
;	(declare (salience -400))
;	?p <- (patient (name ?name) (total_per_pancreatitis ?total))
;	=>
;	;(modify ?p  (decision-taken TRUE))
;	(printout t "Decision for: " ?name crlf)
;	(printout t "Total percentage: " ?total crlf)
;)

;;;;;;;;

(defrule Imprimir_SI_per_pancreatitis
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_pancreatitis ?total) (proposed-operation pancreatitis) (decision-taken FALSE))
	(test (>= ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation pancreatitis))
	(printout t "The original decision for: " ?name " was:  pancreatitis" crlf)
	(printout t "This operation is certainly the best option. Its compatibility percentage is of: " ?total crlf)
)

(defrule Imprimir_NO_per_pancreatitis
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_pancreatitis ?total) (total_per_splenectomy ?t1) (total_per_Barret ?t2)
	(total_per_achalasia ?t3) (total_per_hernia ?t4)
	(proposed-operation pancreatitis)(decision-taken FALSE))
	(test (< ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation nil))
	(printout t "The original decision for: " ?name " was:  pancreatitis" crlf)
	(printout t "This operation is not recommended because its compatibility percentage is of: " ?total crlf)
	(printout t "Other possible operations: " crlf)
	(printout t "Splenectomy compatibility percentage is of: " ?t1 crlf)
	(printout t "Barret compatibility percentage is of: " ?t2 crlf)
	(printout t "Achalasia compatibility percentage is of: " ?t3 crlf)
	(printout t "Hiatial Hernia compatibility percentage is of: " ?t4 crlf)
)

(defrule Imprimir_SI_per_splenectomy
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_splenectomy ?total) (proposed-operation splenectomy) (decision-taken FALSE))
	(test (>= ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation splenectomy))
	(printout t "The original decision for: " ?name " was: splenectomy" crlf)
	(printout t "This operation is certainly the best option. Its compatibility percentage is of: " ?total crlf)
)

(defrule Imprimir_NO_per_splenectomy
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_splenectomy ?total) (total_per_pancreatitis ?t1) (total_per_Barret ?t2)
	(total_per_achalasia ?t3) (total_per_hernia ?t4)
	(proposed-operation splenectomy)(decision-taken FALSE))
	(test (< ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation nil))
	(printout t "The original decision for: " ?name " was:  splenectomy" crlf)
	(printout t "This operation is not recommended because its compatibility percentage is of: " ?total crlf)
	(printout t "Other possible operations: " crlf)
	(printout t "Pancreatitis compatibility percentage is of: " ?t1 crlf)
	(printout t "Barret compatibility percentage is of: " ?t2 crlf)
	(printout t "Achalasia compatibility percentage is of: " ?t3 crlf)
	(printout t "Hiatial Hernia compatibility percentage is of: " ?t4 crlf)
)

(defrule Imprimir_SI_per_Barret
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_Barret ?total) (proposed-operation Barret) (decision-taken FALSE))
	(test (>= ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation Barret))
	(printout t "The original decision for: " ?name " was: Barret" crlf)
	(printout t "This operation is certainly the best option. Its compatibility percentage is of: " ?total crlf)
)

(defrule Imprimir_NO_per_Barret
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_Barret ?total) (total_per_pancreatitis ?t1) (total_per_splenectomy ?t2)
	(total_per_achalasia ?t3) (total_per_hernia ?t4)
	(proposed-operation Barret)(decision-taken FALSE))
	(test (< ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation nil))
	(printout t "The original decision for: " ?name " was:  Barret" crlf)
	(printout t "This operation is not recommended because its compatibility percentage is of: " ?total crlf)
	(printout t "Other possible operations: " crlf)
	(printout t "Pancreatitis compatibility percentage is of: " ?t1 crlf)
	(printout t "Splenectomy compatibility percentage is of: " ?t2 crlf)
	(printout t "Achalasia compatibility percentage is of: " ?t3 crlf)
	(printout t "Hiatial Hernia compatibility percentage is of: " ?t4 crlf)
)

(defrule Imprimir_SI_per_achalasia
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_achalasia ?total) (proposed-operation achalasia) (decision-taken FALSE))
	(test (>= ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation achalasia))
	(printout t "The original decision for: " ?name " was: achalasia" crlf)
	(printout t "This operation is certainly the best option. Its compatibility percentage is of: " ?total crlf)
)

(defrule Imprimir_NO_per_achalasia
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_achalasia ?total) (total_per_pancreatitis ?t1) (total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_hernia ?t4)
	(proposed-operation achalasia)(decision-taken FALSE))
	(test (< ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation nil))
	(printout t "The original decision for: " ?name " was:  achalasia" crlf)
	(printout t "This operation is not recommended because its compatibility percentage is of: " ?total crlf)
	(printout t "Other possible operations: " crlf)
	(printout t "Pancreatitis compatibility percentage is of: " ?t1 crlf)
	(printout t "Splenectomy compatibility percentage is of: " ?t2 crlf)
	(printout t "Barret compatibility percentage is of: " ?t3 crlf)
	(printout t "Hiatial Hernia compatibility percentage is of: " ?t4 crlf)
)

(defrule Imprimir_SI_per_hernia
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_hernia ?total) (proposed-operation hernia) (decision-taken FALSE))
	(test (>= ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation hernia))
	(printout t "The original decision for: " ?name " was: Hiatal Hernia" crlf)
	(printout t "This operation is certainly the best option. Its compatibility percentage is of: " ?total crlf)
)

(defrule Imprimir_NO_per_hernia
	(declare (salience -300))
	?p <- (patient (name ?name) (total_per_hernia ?total) (total_per_pancreatitis ?t1) (total_per_splenectomy ?t2)
	(total_per_Barret ?t3) (total_per_achalasia ?t4)
	(proposed-operation hernia)(decision-taken FALSE))
	(test (< ?total 80))
	=>
	(modify ?p  (decision-taken TRUE)(correct-operation nil))
	(printout t "The original decision for: " ?name " was:  Hiatal Hernia" crlf)
	(printout t "This operation is not recommended because its compatibility percentage is of: " ?total crlf)
	(printout t "Other possible operations: " crlf)
	(printout t "Pancreatitis compatibility percentage is of: " ?t1 crlf)
	(printout t "Splenectomy compatibility percentage is of: " ?t2 crlf)
	(printout t "Barret compatibility percentage is of: " ?t3 crlf)
	(printout t "Achalasia compatibility percentage is of: " ?t4 crlf)
)


;; ACCEPT MORE PATIENTS OR STOP THE PROGRAM

(defrule MorePatients
	?p <- (patient (decision-taken TRUE) (more-patients nil))
	=>
	(printout t "New patient? (YES/NO): " crlf)
	(modify ?p (more-patients (read))))
	;; must be YES to continue, asks the user if he wants to continue entering patients
	;; if no, the rule below wont be fired and the execution will stop



(defrule NewPatient_yes
	?p <- (patient (decision-taken TRUE) (more-patients YES))
	
	=>
	(printout t "Entering a new patient: " crlf)
	(assert (patient))
)

(defrule NewPatient_no
	?p <- (patient (decision-taken TRUE) (more-patients NO))
	
	=>
	(printout t "You have finished! " crlf)
	
)









