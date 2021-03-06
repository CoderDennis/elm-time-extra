module Time.Format.Config.Config_nb_no exposing (config)

{-| This is the Norwegian config for formatting dates.

@docs config

-}

import Time
import Time.Format.Config as Config
import Time.Format.I18n.I_default as Default
import Time.Format.I18n.I_nb_no as Norwegian


{-| Config for nb-no.
-}
config : Config.Config
config =
    { i18n =
        { dayShort = Norwegian.dayShort
        , dayName = Norwegian.dayName
        , monthShort = Norwegian.monthShort
        , monthName = Norwegian.monthName
        , dayOfMonthWithSuffix = Norwegian.dayOfMonthWithSuffix
        , twelveHourPeriod = Default.twelveHourPeriod
        }
    , format =
        { date = "%Y-%m-%d" -- YYYY-MM-DD (L equivalent in moment.js)
        , longDate = "%A %-d %B %Y" -- dddd D MMMM YYYY
        , time = "%H:%M" -- HH:mm
        , longTime = "%H:%M:%S" -- HH:mm:ss
        , dateTime = "%Y-%m-%d %H:%M" -- YYYY-MM-DD HH:mm
        , firstDayOfWeek = Time.Mon
        }
    }
