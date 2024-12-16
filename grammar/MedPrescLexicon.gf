abstract MedPrescLexicon = {
    cat
        Form ;
        MedName ;
        UntMeasurement ;
        UntFrequency ;
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
        Day : UntFrequency ;
}