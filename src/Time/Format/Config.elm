module Time.Format.Config exposing (Config)

{-| Date configuration.

For i18n for day and month names.
Parameter to Format.format function.

There is scope to put in some default format strings here.

@docs Config

Copyright (c) 2016-2018 Robin Luiten

-}

import Time exposing (Month, Weekday)
import Time.Format.TwelveHourClock exposing (TwelveHourPeriod)


{-| Configuration for formatting dates.
-}
type alias Config =
    { i18n :
        { dayShort : Weekday -> String
        , dayName : Weekday -> String
        , monthShort : Month -> String
        , monthName : Month -> String
        , dayOfMonthWithSuffix : Bool -> Int -> String
        , twelveHourPeriod : TwelveHourPeriod -> String
        }
    , format :
        { date : String
        , longDate : String
        , time : String
        , longTime : String
        , dateTime : String
        , firstDayOfWeek : Weekday
        }
    }
