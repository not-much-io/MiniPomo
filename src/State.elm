module State exposing (..)

import Types exposing (..)
import Material


model : Model
model =
    { state = NotRunning
    , runningTime = 0
    , mdl = Material.model
    }
