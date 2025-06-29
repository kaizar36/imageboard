-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Imageboard.Mutation exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Imageboard.Object
import Imageboard.Interface
import Imageboard.Union
import Imageboard.Scalar
import Imageboard.InputObject
import Imageboard.ScalarCodecs
import Graphql.Internal.Builder.Object as Object
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Json.Decode as Decode exposing (Decoder)
import Graphql.Internal.Encode as Encode exposing (Value)

type alias CreateImageRequiredArguments = { input : Imageboard.InputObject.CreateImageInput }

{-| Creates a single `Image`.

  - input - The exclusive input argument for this mutation. An object type, make sure to see documentation for this object’s fields.

-}
createImage : CreateImageRequiredArguments
 -> SelectionSet decodesTo Imageboard.Object.CreateImagePayload
 -> SelectionSet (Maybe decodesTo) RootMutation
createImage requiredArgs____ object____ =
      Object.selectionForCompositeField "createImage" [ Argument.required "input" requiredArgs____.input (Imageboard.InputObject.encodeCreateImageInput) ] (object____) (Basics.identity >> Decode.nullable)


type alias UpdateImageRequiredArguments = { input : Imageboard.InputObject.UpdateImageInput }

{-| Updates a single `Image` using its globally unique id and a patch.

  - input - The exclusive input argument for this mutation. An object type, make sure to see documentation for this object’s fields.

-}
updateImage : UpdateImageRequiredArguments
 -> SelectionSet decodesTo Imageboard.Object.UpdateImagePayload
 -> SelectionSet (Maybe decodesTo) RootMutation
updateImage requiredArgs____ object____ =
      Object.selectionForCompositeField "updateImage" [ Argument.required "input" requiredArgs____.input (Imageboard.InputObject.encodeUpdateImageInput) ] (object____) (Basics.identity >> Decode.nullable)


type alias UpdateImageByIdRequiredArguments = { input : Imageboard.InputObject.UpdateImageByIdInput }

{-| Updates a single `Image` using a unique key and a patch.

  - input - The exclusive input argument for this mutation. An object type, make sure to see documentation for this object’s fields.

-}
updateImageById : UpdateImageByIdRequiredArguments
 -> SelectionSet decodesTo Imageboard.Object.UpdateImagePayload
 -> SelectionSet (Maybe decodesTo) RootMutation
updateImageById requiredArgs____ object____ =
      Object.selectionForCompositeField "updateImageById" [ Argument.required "input" requiredArgs____.input (Imageboard.InputObject.encodeUpdateImageByIdInput) ] (object____) (Basics.identity >> Decode.nullable)


type alias DeleteImageRequiredArguments = { input : Imageboard.InputObject.DeleteImageInput }

{-| Deletes a single `Image` using its globally unique id.

  - input - The exclusive input argument for this mutation. An object type, make sure to see documentation for this object’s fields.

-}
deleteImage : DeleteImageRequiredArguments
 -> SelectionSet decodesTo Imageboard.Object.DeleteImagePayload
 -> SelectionSet (Maybe decodesTo) RootMutation
deleteImage requiredArgs____ object____ =
      Object.selectionForCompositeField "deleteImage" [ Argument.required "input" requiredArgs____.input (Imageboard.InputObject.encodeDeleteImageInput) ] (object____) (Basics.identity >> Decode.nullable)


type alias DeleteImageByIdRequiredArguments = { input : Imageboard.InputObject.DeleteImageByIdInput }

{-| Deletes a single `Image` using a unique key.

  - input - The exclusive input argument for this mutation. An object type, make sure to see documentation for this object’s fields.

-}
deleteImageById : DeleteImageByIdRequiredArguments
 -> SelectionSet decodesTo Imageboard.Object.DeleteImagePayload
 -> SelectionSet (Maybe decodesTo) RootMutation
deleteImageById requiredArgs____ object____ =
      Object.selectionForCompositeField "deleteImageById" [ Argument.required "input" requiredArgs____.input (Imageboard.InputObject.encodeDeleteImageByIdInput) ] (object____) (Basics.identity >> Decode.nullable)
