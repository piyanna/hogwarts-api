import * as teachersRepository from "../repositories/teachersRepository.js";

async function getAllTeachers(req, res) {
  try {
    const teachers = await teachersRepository.getAllTeachers();
    res.status(200).json(teachers);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function getTeacherById(req, res) {
  try {
    const id = req.params.id;

    if (isNaN(id) || id <= 0 || !Number.isInteger(Number(id))) {
      return res.status(400).json({ error: "Invalid ID" });
    }

    const teacher = await teachersRepository.getTeacherById(id);

    if (!teacher) {
      return res.status(404).json({ error: "Teacher not found" });
    }

    res.status(200).json(teacher);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function createTeacher(req, res) {
  try {
    const name = req.body.name;
    const house = req.body.house;

    if (!name || !house) {
      return res.status(400).json({ error: "Name and house are required" });
    }

    const teacher = await teachersRepository.createTeacher(name, house);

    res.status(201).json(teacher);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function updateTeacher(req, res) {
  try {
    const id = req.params.id;
    const name = req.body.name;
    const house = req.body.house;

    if (isNaN(id) || id <= 0 || !Number.isInteger(Number(id))) {
      return res.status(400).json({ error: "Invalid ID" });
    }

    if (!name || !house) {
      return res.status(400).json({ error: "Name and house are required" });
    }

    const teacher = await teachersRepository.updateTeacher(id, name, house);

    if (!teacher) {
      return res.status(404).json({ error: "Teacher not found" });
    }

    res.status(200).json(teacher);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function deleteTeacher(req, res) {
  try {
    const id = req.params.id;

    if (isNaN(id) || id <= 0 || !Number.isInteger(Number(id))) {
      return res.status(400).json({ error: "Invalid ID" });
    }

    const teacher = await teachersRepository.deleteTeacher(id);

    if (!teacher) {
      return res.status(404).json({ error: "Teacher not found" });
    }

    res.status(204).send();
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

export { getAllTeachers, getTeacherById, createTeacher, updateTeacher, deleteTeacher };
