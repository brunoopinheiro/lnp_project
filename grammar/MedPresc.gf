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
        DosageForm : Int -> Form -> Dosage ;
        MedStrength : Int -> UntMeasurement -> Strength ;
        MedFreq : Int -> UntFrequency -> Frequency ;
        MedDur : Int -> UntDuration -> Duration ;
}