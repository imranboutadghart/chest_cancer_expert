go :- check_symptoms.

check_symptoms :-
    write('Enter Your Name: '),
    read(Name),
    nl,
    format('Hello, ~w! Let\'s check for chest cancer symptoms.', [Name]),
    nl,
    ask_questions(Name).

ask_questions(Name) :-
    symptom('persistent chest pain', ChestPain),
    symptom('shortness of breath', Breathlessness),
    symptom('chronic cough', ChronicCough),
    symptom('coughing up blood', CoughingBlood),
    symptom('unexplained weight loss', WeightLoss),
    symptom('hoarseness or voice changes', Hoarseness),
    symptom('fatigue', Fatigue),
    symptom('wheezing or whistling sound during breathing', Wheezing),
    symptom('loss of appetite', LossOfAppetite),
    symptom('chest tightness', ChestTightness),
    symptom('recurrent lung infections such as pneumonia or bronchitis', LungInfections),
    symptom('swelling in the face, neck, or arms', Swelling),
    symptom('difficulty swallowing (dysphagia)', DifficultySwallowing),
    symptom('pain or weakness in the shoulder or arm', ShoulderPain),
    symptom('clubbing of fingers (thickened fingertips)', FingerClubbing),
    symptom('night sweats', NightSweats),
    symptom('general weakness', Weakness),
    symptom('fever without a known cause', Fever),
    symptom('unexplained back pain', BackPain),
    symptom('swollen lymph nodes in the chest or neck', SwollenLymphNodes),
    risk_assessment(Name, [ChestPain, Breathlessness, ChronicCough, CoughingBlood, 
                           WeightLoss, Hoarseness, Fatigue, Wheezing, LossOfAppetite, 
                           ChestTightness, LungInfections, Swelling, DifficultySwallowing, 
                           ShoulderPain, FingerClubbing, NightSweats, Weakness, Fever, 
                           BackPain, SwollenLymphNodes]).


symptom(Symptom, Response) :-
    format('Do you have ~w? (y/n): ', [Symptom]),
    read(Reply),
    (Reply == y -> Response = true, format('You have ~w.', [Symptom]), nl
    ; Reply == n -> Response = false, format('You do not have ~w.', [Symptom]), nl
    ; write('Invalid input. Please enter y or n.'), nl, symptom(Symptom, Response)).

risk_assessment(Name, Symptoms) :-
    count_true(Symptoms, RiskScore),
    nl,
    format('Thank you for completing the symptom check, ~w.', [Name]),
    nl,
    give_advice(RiskScore).

count_true([], 0).
count_true([true | Tail], Count) :-
    count_true(Tail, TailCount),
    Count is TailCount + 1.
count_true([false | Tail], Count) :-
    count_true(Tail, Count).

give_diagnosis(RiskScore) :-
    (RiskScore >= 5 ->
        write('High Risk: You have several symptoms that could be associated with chest cancer. It is crucial that you seek immediate medical attention.'),
        nl,
        write('Schedule an appointment with a healthcare provider or visit an emergency facility as soon as possible. Early detection and intervention are vital.');
    RiskScore >= 3 ->
        write('Moderate Risk: You have some symptoms that may indicate a potential health issue.'),
        nl,
        write('It is advisable to consult a doctor promptly to discuss your symptoms and determine whether further testing or evaluation is necessary. Avoid delaying.'),
        nl,
        write('Keep a record of your symptoms and any changes you notice to share with your doctor.');
    write('Low Risk: You currently exhibit few symptoms associated with chest cancer.'),
    nl,
    write('However, it is still a good idea to monitor your health closely. If you notice any new or worsening symptoms, consult a healthcare provider.'),
    nl,
    write('Consider regular health check-ups, especially if you have risk factors such as smoking, exposure to harmful substances, or a family history of cancer. Maintaining a healthy lifestyle can also reduce your overall risk.')).
