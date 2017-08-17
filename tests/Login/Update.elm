module Login.Update exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)

import Pages.Login.Model as Login exposing (..)
import Pages.Login.Update as Subject exposing (..)

suite : Test
suite =
  describe "Page Login Update Module"
    [ describe "Updating model token"

      [ test "should set model token" <|
        \_  ->

          let

            expected =
              "a token"

            msg =
              Subject.SetToken expected

            model =
              Login.initModel

          in

            model
              |> Subject.update msg
              |> Tuple.first
              |> .token
              |> Expect.equal expected

      , test "should set Cmd to none" <|
        \_  ->

          let

            expected =
              "a token"

            msg =
              Subject.SetToken expected

            model =
              Login.initModel

          in

            model
              |> Subject.update msg
              |> Tuple.second
              |> Expect.equal Cmd.none
      ]
    ]
