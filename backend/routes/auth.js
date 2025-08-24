const express = require('express')
const router = express.Router()

router.post(async (req, res) => {
    const { id, password } = req.body();

    const user = pool.query(`
        SELECT * FROM student WHERE index=$1, password=$2;
        `, [id, password])[0];
    
        if (!user) {
            res.send({message: "User does not exist"});
            return
        }

        res.send(user)

});

module.exports = router