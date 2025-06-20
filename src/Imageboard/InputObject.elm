-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Imageboard.InputObject exposing (..)


import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Imageboard.Object
import Imageboard.Interface
import Imageboard.Union
import Imageboard.Scalar
import Imageboard.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)




buildCreateImageInput : CreateImageInputRequiredFields
 -> (CreateImageInputOptionalFields -> CreateImageInputOptionalFields)
 -> CreateImageInput
buildCreateImageInput required____ fillOptionals____ =

    let
        optionals____ =
            
            fillOptionals____
                { clientMutationId = Absent }
    in
    { clientMutationId = optionals____.clientMutationId, image = required____.image }

type alias CreateImageInputRequiredFields =
    { image : ImageInput }
type alias CreateImageInputOptionalFields =
    { clientMutationId : (OptionalArgument String) }


{-| Type for the CreateImageInput input object.
-}
type alias CreateImageInput =
    { clientMutationId : (OptionalArgument String)
 , image : ImageInput }
    

{-| Encode a CreateImageInput into a value that can be used as an argument.
-}
encodeCreateImageInput : CreateImageInput -> Value
encodeCreateImageInput input____ =
    Encode.maybeObject
        [ ( "clientMutationId", (Encode.string)  |> Encode.optional input____.clientMutationId ), ( "image", (encodeImageInput)  input____.image |> Just ) ]


buildDeleteImageByIdInput : DeleteImageByIdInputRequiredFields
 -> (DeleteImageByIdInputOptionalFields -> DeleteImageByIdInputOptionalFields)
 -> DeleteImageByIdInput
buildDeleteImageByIdInput required____ fillOptionals____ =

    let
        optionals____ =
            
            fillOptionals____
                { clientMutationId = Absent }
    in
    { clientMutationId = optionals____.clientMutationId, id = required____.id }

type alias DeleteImageByIdInputRequiredFields =
    { id : Int }
type alias DeleteImageByIdInputOptionalFields =
    { clientMutationId : (OptionalArgument String) }


{-| Type for the DeleteImageByIdInput input object.
-}
type alias DeleteImageByIdInput =
    { clientMutationId : (OptionalArgument String)
 , id : Int }
    

{-| Encode a DeleteImageByIdInput into a value that can be used as an argument.
-}
encodeDeleteImageByIdInput : DeleteImageByIdInput -> Value
encodeDeleteImageByIdInput input____ =
    Encode.maybeObject
        [ ( "clientMutationId", (Encode.string)  |> Encode.optional input____.clientMutationId ), ( "id", (Encode.int)  input____.id |> Just ) ]


buildDeleteImageInput : DeleteImageInputRequiredFields
 -> (DeleteImageInputOptionalFields -> DeleteImageInputOptionalFields)
 -> DeleteImageInput
buildDeleteImageInput required____ fillOptionals____ =

    let
        optionals____ =
            
            fillOptionals____
                { clientMutationId = Absent }
    in
    { clientMutationId = optionals____.clientMutationId, nodeId = required____.nodeId }

type alias DeleteImageInputRequiredFields =
    { nodeId : Imageboard.ScalarCodecs.Id }
type alias DeleteImageInputOptionalFields =
    { clientMutationId : (OptionalArgument String) }


{-| Type for the DeleteImageInput input object.
-}
type alias DeleteImageInput =
    { clientMutationId : (OptionalArgument String)
 , nodeId : Imageboard.ScalarCodecs.Id }
    

{-| Encode a DeleteImageInput into a value that can be used as an argument.
-}
encodeDeleteImageInput : DeleteImageInput -> Value
encodeDeleteImageInput input____ =
    Encode.maybeObject
        [ ( "clientMutationId", (Encode.string)  |> Encode.optional input____.clientMutationId ), ( "nodeId", ((Imageboard.ScalarCodecs.codecs |> Imageboard.Scalar.unwrapEncoder .codecId))  input____.nodeId |> Just ) ]


buildImageCondition : (ImageConditionOptionalFields -> ImageConditionOptionalFields)
 -> ImageCondition
buildImageCondition fillOptionals____ =

    let
        optionals____ =
            
            fillOptionals____
                { id = Absent, title = Absent, url = Absent }
    in
    { id = optionals____.id, title = optionals____.title, url = optionals____.url }


type alias ImageConditionOptionalFields =
    { id : (OptionalArgument Int)
 , title : (OptionalArgument String)
 , url : (OptionalArgument String) }


{-| Type for the ImageCondition input object.
-}
type alias ImageCondition =
    { id : (OptionalArgument Int)
 , title : (OptionalArgument String)
 , url : (OptionalArgument String) }
    

{-| Encode a ImageCondition into a value that can be used as an argument.
-}
encodeImageCondition : ImageCondition -> Value
encodeImageCondition input____ =
    Encode.maybeObject
        [ ( "id", (Encode.int)  |> Encode.optional input____.id ), ( "title", (Encode.string)  |> Encode.optional input____.title ), ( "url", (Encode.string)  |> Encode.optional input____.url ) ]


buildImageInput : ImageInputRequiredFields
 -> (ImageInputOptionalFields -> ImageInputOptionalFields)
 -> ImageInput
buildImageInput required____ fillOptionals____ =

    let
        optionals____ =
            
            fillOptionals____
                { id = Absent }
    in
    { id = optionals____.id, title = required____.title, url = required____.url }

type alias ImageInputRequiredFields =
    { title : String
 , url : String }
type alias ImageInputOptionalFields =
    { id : (OptionalArgument Int) }


{-| Type for the ImageInput input object.
-}
type alias ImageInput =
    { id : (OptionalArgument Int)
 , title : String
 , url : String }
    

{-| Encode a ImageInput into a value that can be used as an argument.
-}
encodeImageInput : ImageInput -> Value
encodeImageInput input____ =
    Encode.maybeObject
        [ ( "id", (Encode.int)  |> Encode.optional input____.id ), ( "title", (Encode.string)  input____.title |> Just ), ( "url", (Encode.string)  input____.url |> Just ) ]


buildImagePatch : (ImagePatchOptionalFields -> ImagePatchOptionalFields)
 -> ImagePatch
buildImagePatch fillOptionals____ =

    let
        optionals____ =
            
            fillOptionals____
                { id = Absent, title = Absent, url = Absent }
    in
    { id = optionals____.id, title = optionals____.title, url = optionals____.url }


type alias ImagePatchOptionalFields =
    { id : (OptionalArgument Int)
 , title : (OptionalArgument String)
 , url : (OptionalArgument String) }


{-| Type for the ImagePatch input object.
-}
type alias ImagePatch =
    { id : (OptionalArgument Int)
 , title : (OptionalArgument String)
 , url : (OptionalArgument String) }
    

{-| Encode a ImagePatch into a value that can be used as an argument.
-}
encodeImagePatch : ImagePatch -> Value
encodeImagePatch input____ =
    Encode.maybeObject
        [ ( "id", (Encode.int)  |> Encode.optional input____.id ), ( "title", (Encode.string)  |> Encode.optional input____.title ), ( "url", (Encode.string)  |> Encode.optional input____.url ) ]


buildUpdateImageByIdInput : UpdateImageByIdInputRequiredFields
 -> (UpdateImageByIdInputOptionalFields -> UpdateImageByIdInputOptionalFields)
 -> UpdateImageByIdInput
buildUpdateImageByIdInput required____ fillOptionals____ =

    let
        optionals____ =
            
            fillOptionals____
                { clientMutationId = Absent }
    in
    { clientMutationId = optionals____.clientMutationId, imagePatch = required____.imagePatch, id = required____.id }

type alias UpdateImageByIdInputRequiredFields =
    { imagePatch : ImagePatch
 , id : Int }
type alias UpdateImageByIdInputOptionalFields =
    { clientMutationId : (OptionalArgument String) }


{-| Type for the UpdateImageByIdInput input object.
-}
type alias UpdateImageByIdInput =
    { clientMutationId : (OptionalArgument String)
 , imagePatch : ImagePatch
 , id : Int }
    

{-| Encode a UpdateImageByIdInput into a value that can be used as an argument.
-}
encodeUpdateImageByIdInput : UpdateImageByIdInput -> Value
encodeUpdateImageByIdInput input____ =
    Encode.maybeObject
        [ ( "clientMutationId", (Encode.string)  |> Encode.optional input____.clientMutationId ), ( "imagePatch", (encodeImagePatch)  input____.imagePatch |> Just ), ( "id", (Encode.int)  input____.id |> Just ) ]


buildUpdateImageInput : UpdateImageInputRequiredFields
 -> (UpdateImageInputOptionalFields -> UpdateImageInputOptionalFields)
 -> UpdateImageInput
buildUpdateImageInput required____ fillOptionals____ =

    let
        optionals____ =
            
            fillOptionals____
                { clientMutationId = Absent }
    in
    { clientMutationId = optionals____.clientMutationId, nodeId = required____.nodeId, imagePatch = required____.imagePatch }

type alias UpdateImageInputRequiredFields =
    { nodeId : Imageboard.ScalarCodecs.Id
 , imagePatch : ImagePatch }
type alias UpdateImageInputOptionalFields =
    { clientMutationId : (OptionalArgument String) }


{-| Type for the UpdateImageInput input object.
-}
type alias UpdateImageInput =
    { clientMutationId : (OptionalArgument String)
 , nodeId : Imageboard.ScalarCodecs.Id
 , imagePatch : ImagePatch }
    

{-| Encode a UpdateImageInput into a value that can be used as an argument.
-}
encodeUpdateImageInput : UpdateImageInput -> Value
encodeUpdateImageInput input____ =
    Encode.maybeObject
        [ ( "clientMutationId", (Encode.string)  |> Encode.optional input____.clientMutationId ), ( "nodeId", ((Imageboard.ScalarCodecs.codecs |> Imageboard.Scalar.unwrapEncoder .codecId))  input____.nodeId |> Just ), ( "imagePatch", (encodeImagePatch)  input____.imagePatch |> Just ) ]
