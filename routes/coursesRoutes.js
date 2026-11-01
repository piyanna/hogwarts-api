import express from "express";
import * as coursesController from "../controllers/coursesController.js";

const router = express.Router();

router.get("/", coursesController.getAllCourses);
router.get("/:id", coursesController.getCourseById);
router.post("/", coursesController.createCourse);
router.put("/:id", coursesController.updateCourse);
router.delete("/:id", coursesController.deleteCourse);

router.put("/:id/teacher", coursesController.changeTeacher);

router.get("/:id/students", coursesController.getCourseStudents);
router.post("/:id/students/:studentId", coursesController.addStudent);
router.delete("/:id/students/:studentId", coursesController.removeStudent);

export default router;
