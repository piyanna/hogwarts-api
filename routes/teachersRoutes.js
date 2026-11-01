import express from "express";
import * as teachersController from "../controllers/teachersController.js";

const router = express.Router();

router.get("/", teachersController.getAllTeachers);
router.get("/:id", teachersController.getTeacherById);
router.post("/", teachersController.createTeacher);
router.put("/:id", teachersController.updateTeacher);
router.delete("/:id", teachersController.deleteTeacher);

export default router;
