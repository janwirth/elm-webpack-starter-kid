module Main exposing (..)

import Html

import View exposing ( view )
import Model exposing ( Model )
import Msg exposing ( Msg(..) )

-- APP
main : Program Never Model Msg
main =
  Html.beginnerProgram { model = model, view = view, update = update }

model : Model
model = 0

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp -> model
    Increment -> model + 1
    Decrement -> model - 1
