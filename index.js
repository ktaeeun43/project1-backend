const express = require("express");
const mysql = require("mysql");
const app = express();
app.set("port", process.env.PORT || 8000);

const connection = mysql.createConnection({
  host: "test.cvzgozjbabbk.us-east-1.rds.amazonaws.com",
  user: "root",
  password: "root1234",
  database: "test",
});

app.get("/", (req, res) => {
  connection.connect(function (err) {
    if (err) {
      throw err;
    } else {
      connection.query("SELECT * FROM fruit", function (err, rows, fields) {
        console.log(rows);
        res.send(rows);
      });
    }
  });
});

app.listen(app.get("port"), () => {
  console.log(app.get("port"), "Connected.");
});
