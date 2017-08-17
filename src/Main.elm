module Main exposing (..)

import Html exposing (Html, div, text, program)
import App as App exposing (initModel, Model)


init : ( App.Model, Cmd Msg )
init =
    ( App.initModel, Cmd.none )

type Msg
    = NoOp

view : Model -> Html Msg
view model =
    div []
        [ text model ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
