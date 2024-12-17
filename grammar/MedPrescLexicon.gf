abstract MedPrescLexicon = {
    cat
        Form ;
        MedName ;
        UntMeasurement ;
        UntFrequency ;
        UntDuration ;
    fun
        Tablet : Form ;
        Drop : Form ;
        Pill : Form ;

        Aspirin : MedName ;
        Zofran : MedName ;
        Vasotec : MedName ;
        Timoptic : MedName ;

        Milligram : UntMeasurement ;
        Gram : UntMeasurement ;

        Hour : UntFrequency ;
        Day : UntDuration ;
}