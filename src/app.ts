import express, { Request, Response } from 'express';

const app = express();
const port = 3000;

app.get('/', (req: Request, res: Response) => {
  res.send('Hello, test-express-app!');
});

app.listen(port, () => {
  console.log(`test-express-app is listening at http://localhost:${port}`);
});