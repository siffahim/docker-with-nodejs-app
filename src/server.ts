import express, { Request, Response } from "express";
const app = express();
const port = 5000;

app.get("/", (req: Request, res: Response) => {
  res.send("<h1>Hello world from nodejs🚀</h1>");
});

app.listen(port, () => {
  console.log("Application running on port:5000");
});
