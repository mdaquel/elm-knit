module App.Model exposing (..)

import Pages.Dashboard as Dashboard exposing (initModel, Model)
import Pages.Login.Model as Login exposing (initModel, Model)

type Page
  = Dashboard
  | Login

type alias Model =
  { token : Login.Token
  , page : Page
  }


initModel : Model
initModel =
  { token = ""
  , page = Login
  }
