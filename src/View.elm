module View exposing (view)

import Html exposing (..)
import Material.Button as Button
import Material.Scheme
import Types exposing (Msg, Model)


timeLabel : Model -> Html Msg
timeLabel model =
    div [] []


triggers : Model -> Html Msg
triggers model =
    div []
        [ Button.render Types.MDL
            [ 1 ]
            model.mdl
            [ Button.colored
            , Button.ripple
            ]
            [ text "Stop" ]
        , Button.render Types.MDL
            [ 2 ]
            model.mdl
            [ Button.colored
            , Button.ripple
            ]
            [ text "Pause" ]
        ]


view : Model -> Html Msg
view model =
    div []
        [ text "Hello World!"
        , triggers model
        ]
        |> Material.Scheme.top
