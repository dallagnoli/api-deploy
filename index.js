const express = require("express");
const app = express();

app.use(express.json());

app.get("/health", (req, res) => {
  res.json({ status: "ok" });
});

app.post("/auth/login", (req, res) => {
  res.json({ token: "fake-jwt-token" });
});

app.get("/users", (req, res) => {
  res.json([{ id: 1, name: "gab" }]);
});

app.listen(3000, () => {
  console.log("API running on port 3000");
});
