abstract MedPresc =
    MedPrescLexicon **
{
    flags startcat = Prescription ;
    cat
        Prescription ;
        Quantity ;
        Dosage ;
        Medicine ;
        Frequency ;
        Unit ;
        Duration ;
        Strength ;
    fun
        -- MedicalPrescription : Quantity -> Dosage -> Medicine -> Frequency -> Duration -> Prescription ;
        MedicalPrescription : Quantity -> MedName -> Prescription ;
        -- Qtt : Int -> Quantity ;
        -- DosageForm : Quantity -> Form -> Dosage ;
        -- MedStrength : Int -> UntMeasurement -> Strength ;
        -- CompMedicine : MedName -> MedStrength -> Medicine ;
        -- MedFreq, MedDur : Int -> Unit -> Duration ;
}