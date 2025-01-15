const path = require('path');
exports.Avt = async (req, res) => {
    const User  = req.params.user
        if(User !== null) {
            return res.sendFile(path.join(__dirname, '..', 'public', 'img', `${User}`));
        }
}

exports.getImgProduct = async (req, res) => {
    const Product  = req.params.product
    if(Product !== null) {
        return res.sendFile(path.join(__dirname, '..', 'public', 'img', `${Product}`));
    }
    
}