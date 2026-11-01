import express from "express";
import pool from "./db.js";
import housesRoutes from "./routes/housesRoutes.js";
import teachersRoutes from "./routes/teachersRoutes.js";
import studentsRoutes from "./routes/studentsRoutes.js";
import coursesRoutes from "./routes/coursesRoutes.js";

const app = express();
const port = 3000;

app.use(express.json());

app.use("/houses", housesRoutes);
app.use("/teachers", teachersRoutes);
app.use("/students", studentsRoutes);
app.use("/courses", coursesRoutes);

app.get("/db-test", async (req, res) => {
  try {
    const result = await pool.query("SELECT NOW()");
    res.status(200).json(result.rows);
  } catch (error) {
    res.status(500).json({ error: "Database error" });
  }
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
