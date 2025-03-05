const { Pool } = require("pg");
require("dotenv").config();

const connectionString = `postgres://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:5432/${process.env.DB_NAME}`;

const pool = new Pool({
  connectionString,
});

pool.on("connect", () => {
  console.log("Database connected...");
});

module.exports = pool;
