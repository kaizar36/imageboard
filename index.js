import "dotenv/config";
import express from "express";
import { postgraphile } from "postgraphile";

const app = express();

app.use(
    postgraphile(
        process.env.DATABASE_URL,
        "public",
        {
            watchPg: true,
            graphiql: true,
            enhanceGraphiql: true
        }
    )
);

app.use(express.static("public"));

const port = process.env.PORT || 8080;

app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});
