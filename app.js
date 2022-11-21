const express = require('express')
const app = express()
const cors = require('cors')

app.use(cors())

app.get('/', (req, res) => {
    res.json([
        {
            id: 1,
            title: "Book Review: The Bear & The Nightingale.."
        },
        {
            id: 2,
            title: "Game Review: Pokemon Brilliant Diamond" // change made
        },
        {
            id: 3,
            title: "Show Review: Alice in Borderland"
        }
    ])
})

module.exports = app;