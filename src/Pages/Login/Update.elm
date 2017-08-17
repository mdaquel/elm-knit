module Pages.Login.Update exposing (..)

import Pages.Login.Model as Login exposing (..)
import Infrastructure.Common as Common exposing ( PageState (..) )

type Msg
  = SetToken Login.Token
  | SetTokenExpiry Login.TokenExpiry
  | SetAuthenticated Bool
  | SetUsername String
  | SetPassword String  

init : ( Login.Model, Cmd Msg )
init =
  ( initModel, Cmd.none )

update : Msg -> Login.Model -> ( Login.Model, Cmd Msg )
update msg model =
    case msg of

        SetToken token ->
          ( { model | token = token }, Cmd.none )

        SetTokenExpiry expiry ->
          ( { model | expiry = expiry }, Cmd.none )

        SetAuthenticated flag ->
          ( { model | isAuthenticated = flag }, Cmd.none )

        SetUsername username ->
          ( { model | credential = ( setUsername username model.credential ) }, Cmd.none )

        SetPassword password ->
          ( { model | credential = ( setPassword password model.credential) }, Cmd.none )

setUsername : String -> Login.Credential -> Login.Credential
setUsername username credential =
  ( { credential | username = username} )

setPassword : String -> Login.Credential -> Login.Credential
setPassword password credential =
    ( { credential | password = password} )
