module Types exposing (..)

import Material


type alias Mdl =
    Material.Model


type PomodoroState
    = NotRunning
    | Running
    | Paused


type alias Model =
    { state : PomodoroState
    , runningTime : Int
    , mdl : Mdl
    }


type Msg
    = MDL Material.Msg
    | Start
    | Stop
    | Pause
    | Continue
