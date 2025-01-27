import express from 'express';
import { getCurrentDateTime } from '@swe-learn/node-hello-libs';

export const app = express();
const port = process.env.PORT || 3000;

app.get('/api/hello', (req, res) => {
  res.json({ message: `hello world: ${getCurrentDateTime()}` });
});

if (import.meta.env?.PROD !== true) {
  app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
  });
}
