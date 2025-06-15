module Main exposing (main)

import Browser
import Graphql.Http exposing (Error, queryRequest, send)
import Graphql.Operation exposing (RootQuery)
import Graphql.SelectionSet exposing (SelectionSet, map3)
import Html exposing (Html, div, h1, img, text)
import Html.Attributes exposing (alt, class, src)
import Imageboard.Object.Image exposing (id, title, url)
import Imageboard.Object.ImagesConnection exposing (nodes)
import Imageboard.Query exposing (allImages)
import RemoteData exposing (RemoteData(..), fromResult)
import String exposing (fromInt)


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( Loading, makeRequest flags.graphQLUrl )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg _ =
    case msg of
        GotResponse response ->
            ( response, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


view : Model -> Html Msg
view model =
    case model of
        NotAsked ->
            div [] [ text "Images are not yet asked." ]

        Loading ->
            div [] [ text "Images are loading..." ]

        Failure _ ->
            div [] [ text "There was a failure when we try to load the image." ]

        Success response ->
            case response of
                Nothing ->
                    div [] [ text "No response could be retrieve from the server." ]

                Just images ->
                    div
                        []
                        [ h1 [] [ text "Imageboard" ]
                        , div [ class "gallery" ] (List.map viewImage images)
                        ]


viewImage : Maybe Image -> Html Msg
viewImage maybeImage =
    case maybeImage of
        Nothing ->
            div [] [ text "No data could be retrieve from the server." ]

        Just image ->
            img
                [ src image.url, Html.Attributes.id (fromInt image.id), alt image.title ]
                []


makeRequest : String -> Cmd Msg
makeRequest graphQLUrl =
    send (fromResult >> GotResponse) (queryRequest graphQLUrl query)


query : SelectionSet (Maybe (List (Maybe Image))) RootQuery
query =
    allImages identity (nodes (map3 Image title url id))


type Msg
    = GotResponse Model


type alias Model =
    RemoteData (Error Response) Response


type alias Response =
    Maybe (List (Maybe Image))


type alias Image =
    { title : String
    , url : String
    , id : Int
    }


type alias Flags =
    { graphQLUrl : String
    }
