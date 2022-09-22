const express = require("express");
const app = express();
app.set("port", process.env.PORT || 8000);

app.get("/", (req, res) => {
  res.send("Hello Taeeun Docker~~~");
});

app.listen(app.get("port"), () => {
  console.log(app.get("port"), "Connected.");
});
