module Pages.Login.Model exposing (..)

import Infrastructure.Common as Common exposing (PageState)
import Json.Encode as Encode exposing (..)

type alias Token = String

type alias TokenExpiry = Int

type alias Credential =
  { username: String
  , password : String
  }

type Message
  = None
  | Error String

type alias Model =
  { token : Token
  , expiry : TokenExpiry
  , isAuthenticated : Bool
  , credential : Credential
  , status : Common.PageState
  , message : Message
  }

initModel : Model
initModel =
  { token =  ""
  , expiry = 100
  , isAuthenticated = False
  , credential = Credential "" ""
  , status = Common.Init
  , message = None
  }

encodeCredential : Credential -> Encode.Value
encodeCredential credential =
  Encode.object
  [ ("username", Encode.string credential.username)
  , ("password", Encode.string credential.password)
  ]
