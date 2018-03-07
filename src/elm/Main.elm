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
model = {
      url = "http://localhost:8080"
    , widths = [ "300", "500", "1200"]
  }

update : Msg -> Model -> Model
update msg model =
  case msg of
    UpdateUrl newUrl -> { model | url = newUrl }
    UpdateWidths inputValue -> { model | widths = String.words inputValue }

-- CSS STYLES
styles : { img : List ( String, String ) }
styles =
  {
    img =
      [ ( "width", "33%" )
      , ( "border", "4px solid #337AB7")
      ]
  }
