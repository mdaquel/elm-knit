module Login.Model exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)

import Pages.Login.Model as Subject exposing (..)
import Json.Encode as Encode exposing (..)

suite : Test
suite =
  describe "Page Login Model"
    [ describe "Credential encoding"
      [ test "should encode credential" <|
        \_  ->
          let

            expected =
              Encode.object
              [ ("username", Encode.string "usr")
              , ("password", Encode.string "pwd")
              ]

            credential =
              Subject.Credential "usr" "pwd"

          in

            credential
              |> Subject.encodeCredential
              |> Expect.equal expected
      ]
    ]
