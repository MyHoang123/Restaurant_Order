const db = require('../configs/connect')
const getCommentProduct = function (IdProduct,callback)  {
    db.query('SELECT c.Id, c.Containt,c.Star,c.RepComment,a.UserName,a.Classify,a.Avt FROM comment c INNER JOIN account a ON c.IdAcc = a.Id WHERE c.IdProduct = ? ORDER BY c.Id DESC',[IdProduct] , function(err,data) {
       if(err || data.length <= 0) {
           callback (null)
       }
       else {
           callback (data)
       }
    })
} 
module.exports = {
    getCommentProduct,

}