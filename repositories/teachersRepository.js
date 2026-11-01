import pool from "../db.js";

async function getAllTeachers() {
  const result = await pool.query("SELECT * FROM firstdb.teachers ORDER BY id ASC");

  return result.rows;
}

async function getTeacherById(id) {
  const result = await pool.query("SELECT * FROM firstdb.teachers WHERE id = $1", [id]);

  return result.rows[0];
}

async function createTeacher(name, house) {
  const result = await pool.query('INSERT INTO firstdb.teachers ("teacher-name", house) VALUES ($1, $2) RETURNING *', [name, house]);

  return result.rows[0];
}

async function updateTeacher(id, name, house) {
  const result = await pool.query('UPDATE firstdb.teachers SET "teacher-name" = $1, house = $2 WHERE id = $3 RETURNING *', [name, house, id]);

  return result.rows[0];
}

async function deleteTeacher(id) {
  const result = await pool.query("DELETE FROM firstdb.teachers WHERE id = $1 RETURNING *", [id]);

  return result.rows[0];
}

export { getAllTeachers, getTeacherById, createTeacher, updateTeacher, deleteTeacher };
