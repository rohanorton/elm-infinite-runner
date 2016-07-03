module Entity exposing (Entity)


type alias Entity a =
    { a
        | position : Vector
        , size : Vector
    }


type alias Vector =
    { x : Float
    , y : Float
    }
