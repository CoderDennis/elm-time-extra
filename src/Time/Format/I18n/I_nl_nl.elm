module Time.Format.I18n.I_nl_nl exposing
    ( dayShort
    , dayName
    , monthShort
    , monthName
    , dayOfMonthWithSuffix
    )

{-| Dutch values for day and month names.

@docs dayShort
@docs dayName
@docs monthShort
@docs monthName
@docs dayOfMonthWithSuffix

-}

import String exposing (fromInt)
import Time exposing (Month(..), Weekday(..))


{-| Day short name.
-}
dayShort : Weekday -> String
dayShort day =
    case day of
        Mon ->
            "ma"

        Tue ->
            "di"

        Wed ->
            "wo"

        Thu ->
            "do"

        Fri ->
            "vr"

        Sat ->
            "za"

        Sun ->
            "zo"


{-| Day full name.
-}
dayName : Weekday -> String
dayName day =
    case day of
        Mon ->
            "maandag"

        Tue ->
            "dinsdag"

        Wed ->
            "woensdag"

        Thu ->
            "donderdag"

        Fri ->
            "vrijdag"

        Sat ->
            "zaterdag"

        Sun ->
            "zondag"


{-| Month short name.
-}
monthShort : Month -> String
monthShort month =
    case month of
        Jan ->
            "jan"

        Feb ->
            "feb"

        Mar ->
            "mrt"

        Apr ->
            "apr"

        May ->
            "mei"

        Jun ->
            "jun"

        Jul ->
            "jul"

        Aug ->
            "aug"

        Sep ->
            "sep"

        Oct ->
            "okt"

        Nov ->
            "nov"

        Dec ->
            "dec"


{-| Month full name.
-}
monthName : Month -> String
monthName month =
    case month of
        Jan ->
            "januari"

        Feb ->
            "februari"

        Mar ->
            "maart"

        Apr ->
            "april"

        May ->
            "mei"

        Jun ->
            "juni"

        Jul ->
            "juli"

        Aug ->
            "augustus"

        Sep ->
            "september"

        Oct ->
            "oktober"

        Nov ->
            "november"

        Dec ->
            "december"


{-| There is no idiom of day suffixes in Dutch.
-}
dayOfMonthWithSuffix : Bool -> Int -> String
dayOfMonthWithSuffix _ =
    fromInt
