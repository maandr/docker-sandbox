const express = require("express");
const app = express();

const PORT = 3000;

app.get("/", function(req, res) {
    console.log("Saying Hello World!");
    res.send("Hello World!");
});

app.get("/say-what", function(req, res) {
    console.log("Saying what.");
    res.send("What!");
});

app.listen(PORT, function() {
    console.log("App started on port " + PORT);
});