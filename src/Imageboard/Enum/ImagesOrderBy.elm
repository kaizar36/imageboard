-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Imageboard.Enum.ImagesOrderBy exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Methods to use when ordering `Image`.
-}
type ImagesOrderBy
    = Natural
    | IdAsc
    | IdDesc
    | TitleAsc
    | TitleDesc
    | UrlAsc
    | UrlDesc
    | PrimaryKeyAsc
    | PrimaryKeyDesc
list : List ImagesOrderBy
list =
    [Natural, IdAsc, IdDesc, TitleAsc, TitleDesc, UrlAsc, UrlDesc, PrimaryKeyAsc, PrimaryKeyDesc]
decoder : Decoder ImagesOrderBy
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "NATURAL" ->
                        Decode.succeed Natural

                    "ID_ASC" ->
                        Decode.succeed IdAsc

                    "ID_DESC" ->
                        Decode.succeed IdDesc

                    "TITLE_ASC" ->
                        Decode.succeed TitleAsc

                    "TITLE_DESC" ->
                        Decode.succeed TitleDesc

                    "URL_ASC" ->
                        Decode.succeed UrlAsc

                    "URL_DESC" ->
                        Decode.succeed UrlDesc

                    "PRIMARY_KEY_ASC" ->
                        Decode.succeed PrimaryKeyAsc

                    "PRIMARY_KEY_DESC" ->
                        Decode.succeed PrimaryKeyDesc

                    _ ->
                        Decode.fail ("Invalid ImagesOrderBy type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : ImagesOrderBy -> String
toString enum____ =
    case enum____ of
        Natural ->
                "NATURAL"


        IdAsc ->
                "ID_ASC"


        IdDesc ->
                "ID_DESC"


        TitleAsc ->
                "TITLE_ASC"


        TitleDesc ->
                "TITLE_DESC"


        UrlAsc ->
                "URL_ASC"


        UrlDesc ->
                "URL_DESC"


        PrimaryKeyAsc ->
                "PRIMARY_KEY_ASC"


        PrimaryKeyDesc ->
                "PRIMARY_KEY_DESC"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ImagesOrderBy
fromString enumString____ =
    case enumString____ of
        "NATURAL" ->
                Just Natural


        "ID_ASC" ->
                Just IdAsc


        "ID_DESC" ->
                Just IdDesc


        "TITLE_ASC" ->
                Just TitleAsc


        "TITLE_DESC" ->
                Just TitleDesc


        "URL_ASC" ->
                Just UrlAsc


        "URL_DESC" ->
                Just UrlDesc


        "PRIMARY_KEY_ASC" ->
                Just PrimaryKeyAsc


        "PRIMARY_KEY_DESC" ->
                Just PrimaryKeyDesc

        _ ->
                Nothing
