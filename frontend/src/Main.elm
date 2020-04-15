module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode as D
import Json.Encode as Encode
import Material
import Material.Button as Button
import Material.Options as Options
import Material.TextField as TextField


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , subscriptions = subscriptions
        , update = update
        }


type alias Model =
    { source : String
    , result : String
    , mdc : Material.Model Msg
    }


type Msg
    = Click
    | GotResult (Result Http.Error String)
    | ChangeSource String
    | Mdc (Material.Msg Msg)


init : () -> ( Model, Cmd Msg )
init _ =
    ( { source = "", result = "", mdc = Material.defaultModel }, Material.init Mdc )


subscriptions : Model -> Sub Msg
subscriptions model =
    Material.subscriptions Mdc model


view : Model -> Html Msg
view model =
    div []
        [ div []
            [ TextField.view Mdc
                "source"
                model.mdc
                [ TextField.label model.source
                , Options.onChange ChangeSource
                , Options.rows 20
                ]
                []
            ]
        , Button.view Mdc "button" model.mdc [ Button.ripple, Options.onClick Click ] [ text "Compile!" ]
        , div []
            [ TextField.view Mdc
                "output"
                model.mdc
                [ Options.rows 10, Options.readonly True, TextField.label model.result ]
                []
            ]
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Click ->
            ( model
            , Http.post
                { url = "/compile"
                , body = Http.jsonBody (Encode.object [ ( "code", Encode.string model.source ) ])
                , expect = Http.expectJson GotResult (D.field "outout" D.string)
                }
            )

        ChangeSource newsource ->
            ( { model | source = newsource }, Cmd.none )

        GotResult (Result.Ok resultcode) ->
            ( { model | result = resultcode }, Cmd.none )

        GotResult (Result.Err error) ->
            ( { model | result = Debug.toString error }, Cmd.none )

        Mdc msg_ ->
            Material.update Mdc msg_ model
