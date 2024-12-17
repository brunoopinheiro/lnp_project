concrete MedPresLexiconEng of MedPrescLexicon =
    open
        Prelude
in {
    param
        Number = Sg | Pl ;

    lincat
        Form = Noun ;
        MedName = Noun ;
        UntMeasurement = Noun ;
        UntFrequency = Noun ;
        UntDuration = Noun ;
        Value = { s: Str ; n : Number } ;
    oper
        Noun : Type = { s : Number => Str } ;

        mkNoun : Str -> Str -> Noun =
        \x, y -> { s = table { Sg => x ; Pl => y } } ;

        regNoun : Str -> Noun =
        \w -> let ws : Str = case w of {
            _ + ("a" | "e" | "i" | "o") + "o" => w + "s" ;
            _ + ("s" | "x" | "sh" | "o")      => w + "es" ;
            _ + "z"                           => w + "zes" ;
            _ + ("a" | "e" | "o" | "u") + "y" => w + "s" ;
            x + "y"                           => w + "ies" ;
            _                                 => w + "s"
        }
        in mkNoun w ws ;

        mkN = overload {
            mkN : ( dog: Str ) -> Noun = regNoun ;
            mkN : ( mouse, mice : Str ) -> Noun = mkNoun ;
        } ;

    lin
        Tablet = mkN "tablet" ;
        Drop = mkN "drop" ;
        Pill = mkN "pill" ;

        Aspirin = mkN "aspirin" "aspirin" ;
        Zofran = mkN "zofran" "zofran" ;
        Vasotec = mkN "vasotec" "vasotec" ;
        Timoptic = mkN "timoptic" "timoptic" ;

        Milligram = mkN "mg" ;
        Gram = mkN "g" ;

        Hour = mkN "hour" ;
        Day = mkN "day" ;

        One = { s = "1" ; n = Sg } ;
        Two = { s = "2" ; n = Pl } ;
        Three = { s = "3" ; n = Pl } ;
        Four = { s = "4" ; n = Pl } ;
        Five = { s = "5" ; n = Pl } ;
        Six = { s = "6" ; n = Pl } ;
        Seven = { s = "7" ; n = Pl } ;
        Eight = { s = "8" ; n = Pl } ;
        Nine = { s = "9" ; n = Pl } ;
}