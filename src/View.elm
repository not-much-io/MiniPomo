module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (style)
import Material.Button as Button
import Material.Scheme
import Types exposing (Msg, Model)


timeLabel : Model -> Html Msg
timeLabel model =
    div []
        [ text (toString model.runningTime) ]


triggers : Model -> Html Msg
triggers model =
    let
        start_pause_lbl =
            case model.state of
                Types.NotRunning ->
                    "Start"

                Types.Running ->
                    "Pause"

                Types.Paused ->
                    "Continue"

        reset_continue_lbl =
            case model.state of
                Types.NotRunning ->
                    ""

                Types.Running ->
                    "Stop"

                Types.Paused ->
                    "Reset"
    in
        div []
            [ Button.render Types.MDL
                [ 1 ]
                model.mdl
                [ Button.colored
                , Button.ripple
                ]
                [ text start_pause_lbl ]
            , Button.render Types.MDL
                [ 2 ]
                model.mdl
                [ Button.colored
                , Button.ripple
                ]
                [ text reset_continue_lbl ]
            ]


view : Model -> Html Msg
view model =
    div
        [ style
            [ ( "display", "flex" )
            , ( "justify-content", "center" )
            , ( "align-items", "center" )
            ]
        ]
        [ timeLabel model
        , br [] []
        , triggers model
        ]
        |> Material.Scheme.top
