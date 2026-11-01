import * as housesRepository from "../repositories/housesRepository.js";

async function getAllHouses(req, res) {
  try {
    const houses = await housesRepository.getAllHouses();
    res.status(200).json(houses);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

async function getHouseById(req, res) {
  try {
    const id = req.params.id;

    if (isNaN(id) || id <= 0 || !Number.isInteger(Number(id))) {
      return res.status(400).json({ error: "Invalid ID" });
    }

    const house = await housesRepository.getHouseById(id);

    if (!house) {
      return res.status(404).json({ error: "House not found" });
    }

    res.status(200).json(house);
  } catch (error) {
    res.status(500).json({ error: "Something went wrong" });
  }
}

export { getAllHouses, getHouseById };
