concrete MedPrescEng of MedPresc =
    MedPresLexiconEng **
    open
        Prelude
in {
    lincat
        Prescription = SS ;
        Dosage = { s : Str ; n : Number } ;
        Medicine = { s : Str ; n : Number } ;
        Frequency = { s : Str ; n : Number } ;
        Duration = { s : Str ; n : Number } ;
        Strength = { s : Str ; n : Number } ;
    oper
        compose : Int -> { s: Number => Str } -> { s: Str ; n : Number } = \qnt, cn -> case qnt of {
            1 => { s = ss qnt ++ cn.s ! Sg ; n = Sg } ;
            _ => { s = ss qnt ++ cn.s ! Pl ; n = Pl }
        } ;

    lin
        MedicalPrescription dosage med freq dur = ss (dosage.s ++ "of" ++ med.s ++ "every" ++ freq.s ++ "for" ++ dur.s) ;
        DosageForm qnt form = compose qnt form ;
        CompMedicine medName strength = { s = medName.s ! strength.n ++ strength.s ; n = strength.n } ;
        MedStrength qnt und = compose qnt und ;
        MedFreq qnt und = compose qnt und ;
        MedDur qnt und = compose qnt und ;
}