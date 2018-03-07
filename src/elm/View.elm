module View exposing ( view )

import Html exposing (..)
import Html.Attributes exposing ( src, style, value )
import Html.Events exposing ( onInput )
import Model exposing ( Model )
import Msg exposing ( Msg(..) )

debugView : String -> String -> Html Msg
debugView url width = iframe [ src url, style [
    ("width", width ++ "px"),
    ("height", "90vh"),
    ("margin", "10px"),
    ("flex-shrink", "0")
  ]] []

view : Model -> Html Msg
view model = div [] [
      settings model
    , debugViews model
  ]

settings model = div [] [
      input [value model.url,onInput UpdateUrl] []
    , input [value (( model.widths |> String.join " " ) ++ " ") ,onInput UpdateWidths] []
  ]

debugViews : Model -> Html Msg
debugViews model = div [
    style [
      ("display", "flex"),
      ("padding", "10px"),
      ("width", "100vw")
    ]
  ] (List.map (debugView model.url) model.widths)
