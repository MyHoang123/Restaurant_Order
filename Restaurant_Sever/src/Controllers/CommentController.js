const Comment = require('../models/CommentModal')
exports.showComment = (req, res) => {
    const { IdProduct } = req.body;
    Comment.getCommentProduct(IdProduct,function(data) {
        if(data === null) {
            return res.status(200).json({
               massege: 'That bai',
            })
        }
        else {
            return res.status(200).json({
                massege: 'Thanh Cong',
                data: data
                })
        }
    })
}
