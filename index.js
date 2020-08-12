const express = require('express');
const app = express();

const port = process.env.PORT || 8080;

app.listen(port, () => {
  console.log('API REST escuchando en puerto...', port);
});

app.get('/status', async (req, res) => {
    res.json({status: 'ok'});
  });