# Imageboard

## Description

A web application that allows visitors to see images and editors to add, modify or remove images.

The application uses the following technologies :
- [Elm](https://elm-lang.org/)
- [GraphQL](https://graphql.org/)
- [PostGraphile](https://postgraphile.org/)
- [PostgreSQL](https://www.postgresql.org/)

A live version is available [here](https://imageboard-u5u0.onrender.com/).

### Architecture

![architecture](./docs/architecture.drawio.svg)

Note : this diagram was created with [diagrams.net](https://www.drawio.com/) and uses the following assets :
- [Person icons created by yaicon - Flaticon](https://www.flaticon.com/free-icons/person)
- [Url icons created by xnimrodx - Flaticon](https://www.flaticon.com/free-icons/url)

### Usage

Go to the home page `/` in order to see all the images.

Go to the page `/graphiql`, in order to create an image, and on the GraphiQL user interface create a [mutation](https://graphql.com/learn/mutations) with the following content

```js
mutation AddImage($createImageInput: CreateImageInput!) {
  createImage(input: $createImageInput) {
    image {
      id
      title
      url
    }
  }
}
```

and the following variable

```json
{
  "createImageInput": {
    "image": {
      "title": "${title}",
      "url": "${url}"
    }
  }
}
```

Replace `${title}` and `${url}` with the title and the url of the image that you want to add.

## UML Diagrams

The UML diagrams are built with [PlantUML](https://plantuml.com/).

### Use case diagram

![Use case diagram](./docs/use-case-diagram.svg)

### Class diagram

![Class diagram](./docs/class-diagram.svg)

### Entity relationship diagram

![Entity relationship diagram](./docs/entity-relationship-diagram.svg)

### Sequences diagrams

#### See the list of the images

![Sequence diagram list all the images](./docs/sequence-diagram-list-images.svg)

#### Add an image

![Sequence diagram add the image](./docs/sequence-diagram-add-image.svg)

#### Modify an image

![Sequence diagram modify the image](./docs/sequence-diagram-modify-image.svg)

#### Remove an image

![Sequence diagram remove the image](./docs/sequence-diagram-remove-image.svg)

## Installation

1. Install Elm using the [official guide](https://guide.elm-lang.org/install/elm.html).
2. Install [PostgreSQL](https://www.postgresql.org/).
3. Create the database using the script [init-database.sql](./init-database.sql).
4. Install [Node.js](https://nodejs.org/), it's needed for installing Postgraphile.
5. Install the dependencies with `npm install`
6. Build the application with `npm run build`
7. Create the `.env` in the root folder with the following content
```
DATABASE_URL=postgresql://${username}$:${password}@${hostname}:${port}/imageboard
```
and replace the variables `${username}`, `${password}`, `${hostname}` and `${port}` with the correct values in order to have a good PostgreSQL connection string.
For example, you can have the following connection string : `postgresql://alice:secret@localhost:5432/imageboard`.

8. Run the application with `npm start`

Note that a build tool like [Parcel](https://parceljs.org/) or [Webpack](https://webpack.js.org/) can be used in order to automate the compilation and the run of this web application. But in order to keep the tutorial simple, these tools are not used.

9. Open a web browser on the url <http://localhost:8080> in order to see the list of the images.
10. Open a web browser on the url <http://localhost:8080/graphiql> in order to add, modify and remove the images using [GraphiQL](https://github.com/graphql/graphiql). 

### Launch and debug with Visual Studio Code

You can easily debug the server part of this application (the Node.js program that launchs the web server and PostGraphile) using the [Visual Studio Code Debugger](https://code.visualstudio.com/docs/debugtest/debugging).

### Debug with ELM Debugger

You can activate the [ELM time travel debugger](https://elm-lang.org/news/the-perfect-bug-report) by running the command `npm run build:debug`.
Once this command executed, you will be able to see, on your web browser, the ELM time travel debugger, when you navigate to the web application.
