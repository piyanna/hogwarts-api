import * as studentsRepository from "../repositories/studentsRepository.js";

async function getAllStudents(req, res) {
  try {
    const students = await studentsRepository.getAllStudents();
    res.status(200).json(students);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function getStudentById(req, res) {
  try {
    const id = req.params.id;

    if (isNaN(id) || id <= 0 || !Number.isInteger(Number(id))) {
      return res.status(400).json({ error: "Invalid ID" });
    }

    const student = await studentsRepository.getStudentById(id);

    if (!student) {
      return res.status(404).json({ error: "Student not found" });
    }

    res.status(200).json(student);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function createStudent(req, res) {
  try {
    const { name, year, house } = req.body;

    if (!name || !year || !house) {
      return res.status(400).json({ error: "Name, year and house are required" });
    }

    const student = await studentsRepository.createStudent(name, year, house);
    res.status(201).json(student);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function updateStudent(req, res) {
  try {
    const id = req.params.id;
    const { name, year, house } = req.body;

    if (isNaN(id) || id <= 0 || !Number.isInteger(Number(id))) {
      return res.status(400).json({ error: "Invalid ID" });
    }

    if (!name || !year || !house) {
      return res.status(400).json({ error: "Name, year and house are required" });
    }

    const student = await studentsRepository.updateStudent(id, name, year, house);

    if (!student) {
      return res.status(404).json({ error: "Student not found" });
    }

    res.status(200).json(student);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function deleteStudent(req, res) {
  try {
    const id = req.params.id;

    if (isNaN(id) || id <= 0 || !Number.isInteger(Number(id))) {
      return res.status(400).json({ error: "Invalid ID" });
    }

    const student = await studentsRepository.deleteStudent(id);

    if (!student) {
      return res.status(404).json({ error: "Student not found" });
    }

    res.status(204).send();
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

export { getAllStudents, getStudentById, createStudent, updateStudent, deleteStudent };
