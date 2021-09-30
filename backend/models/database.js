const { Sequelize } = require('sequelize');


const db = new Sequelize('flutter-node-app', 'root', '', {
    host : 'localhost',
    dialect : 'mariadb'
})

module.exports =  db;