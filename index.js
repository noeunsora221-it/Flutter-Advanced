const express = require('express');

const app = express();

app.get('https://jsonplaceholder.typicode.com/posts', (req, res) => {

  res.json([
    {
      id: 1,
      name: "Sophal",
      email: "test@gmail.com"
    },
    {
      id: 2,
      name: "Dara",
      email: "dara@gmail.com"
    }
  ]);

});

app.listen(3000, () => {
  console.log("Server running...");
});