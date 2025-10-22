/**
 * Minimal Career Assistant API skeleton
 */
require('dotenv').config();
const express = require('express');
const app = express();
app.use(express.json());

app.get('/', (req, res) => res.json({ status: 'Career Assistant API - beta' }));
app.get('/health', (req, res) => res.send('OK'));

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Server listening on ${port}`));
