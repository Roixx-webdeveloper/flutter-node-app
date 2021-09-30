const  {DataTypes}  = require('sequelize');
const db = require('./database');


const Customer = db.define('Customer' , {
    name : {
        type : DataTypes.STRING
    },
    phone : {
        type : DataTypes.STRING
    } ,
    email : {
        type : DataTypes.STRING
    } ,
    rating : {
        type : DataTypes.STRING
    },

});


module.exports =  {Customer}
