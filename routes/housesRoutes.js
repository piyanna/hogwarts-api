import express from "express";
import * as housesController from "../controllers/housesController.js";

const router = express.Router();

router.get("/", housesController.getAllHouses);
router.get("/:id", housesController.getHouseById);

export default router;
