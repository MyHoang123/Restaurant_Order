const db = require('../configs/connect')

// 
const getTable = function (callback) {
    db.query("SELECT * FROM tables", function(err, data) {
        if(err) {
            callback (null)
        }
        else {
            callback (data)
        }
    })
}
const getTableQr = function (callback) {
    db.query("SELECT * FROM tables WHERE Status = ?",['Bàn Trống'], function(err, data) {
        if(err) {
            callback (null)
        }
        else {
            callback (data)
        }
    })
}
const inserDetailtProduct = (IdType, IdProduct,callback) => {
     db.query('INSERT INTO detailproducts (IdType,IdProduct)  VALUE(?,?)',[IdType,IdProduct],function(err, data) {
        if(err) {
            callback (null)
        }
        else {
            callback (data)
        }
    })
}
const getAllTypes = function (callback) {
    db.query("SELECT * FROM types", function(err, data) {
        if(err) {
            callback (null)
        }
        else {
            callback (data)
        }
    })
}
const getProductId = function (id, callback)  {
    db.query("SELECT Id, Name, Price, Img, Dsription, IdCategoris , Sales FROM products WHERE Id = ?",[id],function(err, data) {
        if(err) {
            callback (null)
        }
        else {
            callback (data)
        }
    })
} 
const getStarProduct = function (callback) {
    db.query("SELECT Star,IdProduct FROM comment" ,function(err, data) {
        if(err) {
            callback (0)
        }
        else {
            callback (data)
        }
    })
}
module.exports = {
    getTableQr,
    getProductId,
    getAllTypes,
    inserDetailtProduct,
    getStarProduct,
    getTable,
}