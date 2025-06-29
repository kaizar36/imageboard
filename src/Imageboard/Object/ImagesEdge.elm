-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Imageboard.Object.ImagesEdge exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Imageboard.Object
import Imageboard.Interface
import Imageboard.Union
import Imageboard.Scalar
import Imageboard.InputObject
import Imageboard.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)

{-| A cursor for use in pagination.
-}
cursor : SelectionSet (Maybe Imageboard.ScalarCodecs.Cursor) Imageboard.Object.ImagesEdge
cursor =
      Object.selectionForField "(Maybe ScalarCodecs.Cursor)" "cursor" [] (Imageboard.ScalarCodecs.codecs |> Imageboard.Scalar.unwrapCodecs |> .codecCursor |> .decoder |> Decode.nullable)


{-| The `Image` at the end of the edge.
-}
node : SelectionSet decodesTo Imageboard.Object.Image
 -> SelectionSet (Maybe decodesTo) Imageboard.Object.ImagesEdge
node object____ =
      Object.selectionForCompositeField "node" [] (object____) (Basics.identity >> Decode.nullable)
