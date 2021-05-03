const mysql = require("mysql2/promise");

async function connect() {
  const connection = await mysql.createConnection({
    host: "mysql",
    user: "root",
    password: "wowsuchsecret",
    database: "pfa",
  });

  return connection;
}

module.exports = { connect };
