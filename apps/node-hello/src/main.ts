import express from 'express';

const app = express();
const port = process.env.PORT || 3000;

app.get('/api/hello', (req, res) => {
  res.json({ message: 'hello world' });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
