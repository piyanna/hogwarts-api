import pool from "../db.js";

async function getAllHouses() {
  const result = await pool.query("SELECT * FROM firstdb.houses ORDER BY id ASC");

  return result.rows;
}

async function getHouseById(id) {
  const result = await pool.query("SELECT * FROM firstdb.houses WHERE id = $1", [id]);

  return result.rows[0];
}

export { getAllHouses, getHouseById };
