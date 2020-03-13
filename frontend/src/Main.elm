module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Events exposing (..)
import Http
import Html.Attributes exposing (..)
import Json.Encode as Encode
import Json.Decode as D

main : Program () Model Msg
main =
    Browser.element {
        init = init
        , view = view
        , subscriptions = \_ -> Sub.none
        , update = update
    }

type alias Model =
    { source : String
    , result : String
    }

type Msg = Click | GotResult (Result Http.Error String) | ChangeSource String

init : () -> (Model, Cmd Msg)
init _ = ( {source = "", result = ""}, Cmd.none)

view : Model -> Html Msg
view model =
    div []
    [ div [] [textarea [onInput ChangeSource, rows 20] [ text model.source]]
    , button [onClick Click] [ text "Compile!"]
    , div [] [textarea [rows 10, readonly True] [text model.result]]
    ]

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Click ->
            (model, Http.post
                { url = "/compile"
                , body = Http.jsonBody (Encode.object [ ("code", Encode.string model.source)])
                , expect = Http.expectJson GotResult (D.field "outout" D.string)})

        ChangeSource newsource ->
            ({model | source = newsource}, Cmd.none)

        GotResult (Result.Ok resultcode) ->
            ({model | result = resultcode}, Cmd.none)
        
        GotResult (Result.Err error) ->
            ({model | result = Debug.toString error}, Cmd.none)