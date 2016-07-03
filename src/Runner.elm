module Runner exposing (Model, Msg, init, update, subscriptions, view)

import Html.App as App
import Svg exposing (Svg, svg, rect)
import Svg.Attributes exposing (x, y, height, width)
import Entity exposing (Entity)


main : Program Never
main =
    App.program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- Model


type alias Model =
    Entity {}


init : ( Model, Cmd Msg )
init =
    { position = { x = 50, y = 50 }
    , size = { x = 30, y = 50 }
    }
        ! []



-- Update


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []



-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- View


view : Model -> Svg a
view { size, position } =
    rect
        [ x <| toString position.x
        , y <| toString position.y
        , width <| toString size.x
        , height <| toString size.y
        ]
        []
