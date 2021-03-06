const jwt = require('jsonwebtoken');

const generateToken = (uid = '') => {
    return new Promise((resolve, reject) => {
        const payload = { uid };

        jwt.sign(payload, process.env.SECRETORPRIVATEKEY, {
            expiresIn: '12h'
        }, (err, token) => {
            if (err) {
                console.log(err);
                reject('Error generating token')
            } else {
                resolve(token);
            }
        })

    })
}

module.exports = {
    generateToken
}