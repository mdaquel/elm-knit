module App.Update exposing (..)

import App.Model as App exposing (initModel, Model)

import Pages.Login.Update exposing (Msg)

initMsgs : List (Cmd Msg)
initMsgs =
  [ Cmd.map LoginMsg <| snd Pages.Login.Update.init
  ]

init : ( Login.Model, Cmd Msg  )
init =
  ( App.initModel
  , Cmd.batch initMsgs
  )

type Msg
  = LoginMsg Pages.Login.Update.Msg

  | NoOp

update : Msg 
