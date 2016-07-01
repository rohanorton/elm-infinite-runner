module Game exposing (init, update, subscriptions, view)

import Html exposing (Html, text)


-- Model


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    {} ! []



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


view : Model -> Html Msg
view model =
    text "Hello, World!"
