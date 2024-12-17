abstract MedPrescLexicon = {
    cat
        Form ;
        MedName ;
        UntMeasurement ;
        UntFrequency ;
        UntDuration ;
        Value ;
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

        One : Value ;
        Two : Value ;
        Three : Value ;
        Four : Value ;
        Five : Value ;
        Six : Value ;
        Seven: Value ;
        Eight : Value ;
        Nine : Value ;
}