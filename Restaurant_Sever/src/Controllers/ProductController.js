
const Product = require('../models/ProductModel')
exports.showTable = async (req, res) => {
    Product.getTable(function (data) {
        return res.status(200).json({
            massege: 'thanh cong',
            data: data
        })
    })
}

exports.showTableQR = async (req, res) => {
    Product.getTableQr(function (data) {
        return res.status(200).json({
            massege: 'thanh cong',
            data: data
        })
    })
}
exports.createDetailProduct = async (req, res) => {
    const { IdType, IdProduct } = req.body;
    Product.inserDetailtProduct(parseInt(IdType), parseInt(IdProduct), (data) => {
        if (data !== null) {
            return res.status(200).json({
                massege: 'Thanh cong',
            })
        }
        else {
            return res.status(200).json({
                massege: 'That bai',
            })
        }
    })
}
exports.showType = async (req, res) => {
    Product.getAllTypes(function (data) {
        return res.status(200).json({
            massege: 'thanh cong',
            data: data
        })
    })
}
exports.showProductId = async (req, res) => {
    const { IdProduct } = req.body
    Product.getProductId(IdProduct, function (data) {
        Product.getStarProduct((star) => {
            for (let i = 0; i < data.length; i++) {
                let allstar = 0.0
                let dem = 0
                for (let j = 0; j < star.length; j++) {
                    if (data[i].Id === star[j].IdProduct) {
                        allstar = allstar + star[j].Star
                        dem = dem + 1
                    }
                }
                const totalStar = allstar / dem
                data[i].Star = parseFloat(totalStar.toFixed(1))
            }
            return res.status(200).json({
                massege: 'thanh cong',
                data: data
            })
        })
    })
}