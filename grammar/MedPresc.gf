abstract MedPresc =
    MedPrescLexicon **
{
    flags startcat = Prescription ;
    cat
        Prescription ;
        Dosage ;
        Medicine ;
        Frequency ;
        Duration ;
        Strength ;
    fun
        MedicalPrescription : Dosage -> Medicine -> Frequency -> Duration -> Prescription ;
        CompMedicine : MedName -> Strength -> Medicine ;
        DosageForm : Value -> Form -> Dosage ;
        MedStrength : Value -> UntMeasurement -> Strength ;
        MedFreq : Value -> UntFrequency -> Frequency ;
        MedDur : Value -> UntDuration -> Duration ;
}