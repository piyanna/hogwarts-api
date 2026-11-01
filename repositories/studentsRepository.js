import pool from "../db.js";

async function getAllStudents() {
  const result = await pool.query("SELECT * FROM firstdb.students ORDER BY id ASC");
  return result.rows;
}

async function getStudentById(id) {
  const result = await pool.query("SELECT * FROM firstdb.students WHERE id = $1", [id]);
  return result.rows[0];
}

async function createStudent(name, year, house) {
  const result = await pool.query("INSERT INTO firstdb.students (student_name, year, house) VALUES ($1, $2, $3) RETURNING *", [name, year, house]);
  return result.rows[0];
}

async function updateStudent(id, name, year, house) {
  const result = await pool.query("UPDATE firstdb.students SET student_name = $1, year = $2, house = $3 WHERE id = $4 RETURNING *", [name, year, house, id]);
  return result.rows[0];
}

async function deleteStudent(id) {
  const result = await pool.query("DELETE FROM firstdb.students WHERE id = $1 RETURNING *", [id]);
  return result.rows[0];
}

export { getAllStudents, getStudentById, createStudent, updateStudent, deleteStudent };
