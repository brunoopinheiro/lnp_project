concrete MedPresLexiconEng of MedPrescLexicon =
    open
        Prelude
in {
    param
        Number = Sg | Pl ;

    lincat
        MedName, Form, UntMeasurement, UntFrequency = { s: Str ; n : Number } ;

    oper
        irregPlural : Str -> Str -> { s : Number => Str } =
        \man, men -> { s = table { Sg => man ; Pl => men } } ;

        regPlural : Str -> { s : Number => Str } =
        \car -> irregPlural car (car + "s") ;

    lin
        Tablet = regPlural "tablet" ;
        Drop = regPlural "drop" ;
        Pill = regPlural "pill" ;

        Aspirin = irregPlural "aspirin" "aspirin" ;
        Zofran = irregPlural "zofran" "zofran" ;
        Vasotec = irregPlural "vasotec" "vasotec" ;
        Timoptic = irregPlural "timoptic" "timoptic" ;

        Milligram = regPlural "milligram" ;
        Gram = regPlural "gram" ;

        Hour = regPlural "hour" ;
        Day = regPlural "day" ;
}