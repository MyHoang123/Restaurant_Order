const express = require('express')
const cors = require('cors');
require('dotenv').config()
const { checkToken } = require('../Middleware/JWTAction')
const  { checkTokenOrder }  = require('../Middleware/JWTOrder')
const ProductController = require('../Controllers/ProductController')
const OrderController = require('../Controllers/OrderController')
const ImgController = require('../Controllers/ImgController')
const CommentController = require('../Controllers/CommentController')
let router = express.Router()
const apiRoute = (app) => {
  // ORDER
  router.post('/createqr',checkToken,OrderController.createQR)
  router.get('/getproductorder',checkTokenOrder,OrderController.getProductOrder)
  router.get('/getcateorder',checkTokenOrder,OrderController.getCateOrder)
  router.get('/getproductbillorder',checkTokenOrder,OrderController.showProductOrder)
  router.get('/getproductbillordertable/:IdTable',checkTokenOrder,OrderController.showProductOrderAdmin)
  router.get('/getbillorder',checkTokenOrder,OrderController.showBillOrder)
  router.post('/filterproductcate',checkTokenOrder,OrderController.fillterProductCate)
  router.post('/createtable',checkToken,OrderController.createTable)
  router.post('/deletetable',checkToken,OrderController.deleteTable)
  router.get('/showtable',ProductController.showTable)
  router.get('/showtableqr',ProductController.showTableQR)
  router.get('/showimgproduct/:product',ImgController.getImgProduct)
  router.post('/createdetailproduct',ProductController.createDetailProduct)
  router.get('/showtype',ProductController.showType)
  router.post('/showcommentorder',CommentController.showComment)
  router.get('/avtuser/:user',ImgController.Avt)
  router.post('/createbillorder',checkTokenOrder,OrderController.createBillOrder)
  router.post('/showproductid',ProductController.showProductId)
  return ( 
      app.use(cors({
          origin: [process.env.IP_CLIENT, 'http://localhost:3000']
        })),
      app.use('/api/v12/',router)
    );
    
}
module.exports = apiRoute
