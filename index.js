const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Meu projeto docker");
});

app.listen(3000, () => {
    console.log('Server started on port 3000! 🚀 🚀 🚀');
});