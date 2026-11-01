import pool from "../db.js";

async function getAllCourses() {
  const result = await pool.query("SELECT * FROM firstdb.course ORDER BY id ASC");
  return result.rows;
}

async function getCourseById(id) {
  const result = await pool.query("SELECT * FROM firstdb.course WHERE id = $1", [id]);
  return result.rows[0];
}

async function createCourse(name, teacher) {
  const result = await pool.query("INSERT INTO firstdb.course (course_name, teacher) VALUES ($1, $2) RETURNING *", [name, teacher]);
  return result.rows[0];
}

async function updateCourse(id, name, teacher) {
  const result = await pool.query("UPDATE firstdb.course SET course_name = $1, teacher = $2 WHERE id = $3 RETURNING *", [name, teacher, id]);
  return result.rows[0];
}

async function deleteCourse(id) {
  await pool.query("DELETE FROM firstdb.course_students WHERE course_id = $1", [id]);

  const result = await pool.query("DELETE FROM firstdb.course WHERE id = $1 RETURNING *", [id]);
  return result.rows[0];
}

async function changeTeacher(id, teacher) {
  const result = await pool.query("UPDATE firstdb.course SET teacher = $1 WHERE id = $2 RETURNING *", [teacher, id]);
  return result.rows[0];
}

async function addStudent(courseId, studentId) {
  const result = await pool.query("INSERT INTO firstdb.course_students (course_id, student_id) VALUES ($1, $2) ON CONFLICT DO NOTHING RETURNING *", [courseId, studentId]);
  return result.rows[0];
}

async function removeStudent(courseId, studentId) {
  const result = await pool.query("DELETE FROM firstdb.course_students WHERE course_id = $1 AND student_id = $2 RETURNING *", [courseId, studentId]);
  return result.rows[0];
}

async function getCourseStudents(courseId) {
  const result = await pool.query(
    `SELECT students.*
     FROM firstdb.students
     JOIN firstdb.course_students
     ON students.id = course_students.student_id
     WHERE course_students.course_id = $1`,
    [courseId],
  );
  return result.rows;
}

export { getAllCourses, getCourseById, createCourse, updateCourse, deleteCourse, changeTeacher, addStudent, removeStudent, getCourseStudents };
