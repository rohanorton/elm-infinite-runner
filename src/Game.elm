module Game exposing (init, update, subscriptions, view)

import Svg exposing (Svg, svg)
import Svg.Attributes exposing (height, width)
import Runner


-- Model


type alias Model =
    { runner : Runner.Model
    }


init : ( Model, Cmd Msg )
init =
    let
        ( runner, runnerCmds ) =
            Runner.init
    in
        { runner = runner
        }
            ! [ Cmd.map RunnerUpdate runnerCmds
              ]



-- Update


type Msg
    = RunnerUpdate Runner.Msg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RunnerUpdate subMsg ->
            model ! []



-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- View


view : Model -> Svg Msg
view model =
    svg
        [ width <| toString 1000
        , height <| toString 300
        ]
        [ Runner.view model.runner
        ]
