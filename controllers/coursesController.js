import * as coursesRepository from "../repositories/coursesRepository.js";

async function getAllCourses(req, res) {
  try {
    const courses = await coursesRepository.getAllCourses();
    res.status(200).json(courses);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function getCourseById(req, res) {
  try {
    const course = await coursesRepository.getCourseById(req.params.id);

    if (!course) {
      return res.status(404).json({ error: "Course not found" });
    }

    res.status(200).json(course);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function createCourse(req, res) {
  try {
    const { name, teacher } = req.body;

    if (!name || !teacher) {
      return res.status(400).json({ error: "Name and teacher are required" });
    }

    const course = await coursesRepository.createCourse(name, teacher);
    res.status(201).json(course);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function updateCourse(req, res) {
  try {
    const { name, teacher } = req.body;

    if (!name || !teacher) {
      return res.status(400).json({ error: "Name and teacher are required" });
    }

    const course = await coursesRepository.updateCourse(req.params.id, name, teacher);

    if (!course) {
      return res.status(404).json({ error: "Course not found" });
    }

    res.status(200).json(course);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function deleteCourse(req, res) {
  try {
    const course = await coursesRepository.getCourseById(req.params.id);

    if (!course) {
      return res.status(404).json({ error: "Course not found" });
    }

    await coursesRepository.deleteCourse(req.params.id);
    res.status(204).send();
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function changeTeacher(req, res) {
  try {
    const { teacher } = req.body;

    if (!teacher) {
      return res.status(400).json({ error: "Teacher is required" });
    }

    const course = await coursesRepository.changeTeacher(req.params.id, teacher);

    if (!course) {
      return res.status(404).json({ error: "Course not found" });
    }

    res.status(200).json(course);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function addStudent(req, res) {
  try {
    const { id, studentId } = req.params;

    const course = await coursesRepository.getCourseById(id);

    if (!course) {
      return res.status(404).json({ error: "Course not found" });
    }

    const student = await coursesRepository.addStudent(id, studentId);

    if (!student) {
      return res.status(409).json({ error: "Student already enrolled" });
    }

    res.status(201).json(student);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function removeStudent(req, res) {
  try {
    const { id, studentId } = req.params;

    const student = await coursesRepository.removeStudent(id, studentId);

    if (!student) {
      return res.status(404).json({ error: "Enrollment not found" });
    }

    res.status(204).send();
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function getCourseStudents(req, res) {
  try {
    const course = await coursesRepository.getCourseById(req.params.id);

    if (!course) {
      return res.status(404).json({ error: "Course not found" });
    }

    const students = await coursesRepository.getCourseStudents(req.params.id);
    res.status(200).json(students);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

export { getAllCourses, getCourseById, createCourse, updateCourse, deleteCourse, changeTeacher, addStudent, removeStudent, getCourseStudents };
