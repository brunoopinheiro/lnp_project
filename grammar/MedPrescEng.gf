concrete MedPrescEng of MedPresc =
    MedPresLexiconEng **
    open
        Prelude
in {
    lincat
        Prescription = SS ;
        Quantity = Int ;
        Dosage = Form ;
        Medicine = SS ;
        Frequency = SS ;
        Unit = Int ;
        Duration = SS ;
        Strength = SS ;

    oper
        apl : Int -> Str -> { s: Number => Str } -> { s: Str ; n : Number } = \qnt, dos, cn -> case qnt of {
            1 => { s = "1" ++ dos ++ cn.s ; n = Sg } ;
            _ => { s = show qnt ++ dos ++ cn.s ; n = Pl }
        }

    lin
        -- MedicalPrescription qnt dos med freq dur = ss (qnt ++ dos ++ "of" ++ med ++ "every" ++ freq ++ "for" ++ dur) ;
        MedicalPrescription qnt med = ss (apl (qnt "of" med)) ;
        -- Qtt n = n ;
        -- DosageForm qnt form = ss (qnt ++ form) ;
        -- MedStrength value measure = ss (value ++ measure) ;
        -- MedName name = ss name ;
        -- CompMedicine name strength = ss (name ++ strength) ;
        -- MedFreq n unit = ss (n ++ unit) ;
        -- MedDur n unit = ss (n ++ unit) ;
}