const { connect } = require("../database");

async function getAllModules() {
  const connection = await connect();
  const [rows] = await connection.execute("SELECT * FROM modules;");

  connection.end();

  return {
    modules: rows,
  };
}

module.exports = { getAllModules };
