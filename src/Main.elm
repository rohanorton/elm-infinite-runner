module Main exposing (..)

import Html.App as App
import Game exposing (init, update, subscriptions, view)


main : Program Never
main =
    App.program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }
