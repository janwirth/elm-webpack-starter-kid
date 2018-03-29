module View exposing ( view )

import Html exposing (..)
import Html.Events exposing ( onClick )
import Model exposing ( Model )
import Msg exposing ( Msg(..) )

-- VIEW
-- Html is defined as: elem [ attribs ][ children ]
-- CSS can be applied via class names or inline style attrib
view : Model -> Html Msg
view model = div [] [
    button [onClick Increment] [ text ("Add 1 to " ++ toString model) ]
  , button [onClick Decrement] [ text ("Subtract 1 from " ++ toString model) ]
  ]
  

