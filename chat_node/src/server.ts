import express from 'express';

const app = express();

app.get("/", (req, res) => {
    return res.json({
        mensaage: "NLW 05"
    })
})

app.post("/", (req, res) => {
    return res.json({
        mensaage: "Usuario salvo com sucesso!"
    })
})

app.listen(3333, () => console.log("Server is run on port 3333")) ;