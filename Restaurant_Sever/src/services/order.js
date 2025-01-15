const SocketJWT = require('../Middleware/JWTSocket')
const OrderController = require('../Controllers/OrderController')
require('dotenv').config()
const socket = (server) => {
  const clients = [];
  // web SOCKet
  const io = require('socket.io')(server, {
    cors: {
      origin: [process.env.IP_CLIENT, 'http://localhost:3000'],
      methods: ['GET', 'POST'],
    },
  });
  io.use(SocketJWT)
  io.on('connection', (socket) => {
    if (socket.user.Id === 1) {
      const IdClient = {
        Client: socket.user.Id,
        ClientId: socket.id
      }
      clients.push(IdClient)
    } else {
      const IdClient = {
        Client: socket.user.IdTable,
        ClientId: socket.id
      }
      clients.push(IdClient)
      OrderController.updateTable('Đang Dùng', socket.user.IdTable, (Status) => {
        if (Status === 'Thanh cong') {
          for (let i = 0; i < clients.length; i++) {
            if (clients[i].Client === 1) {
              io.to(clients[i].ClientId).emit('connectuser', socket.user.IdTable);
            }
          }
        }
      })
    }
    console.log('ConnectServer')
    console.log(clients)
    socket.on('createProductTable', (data) => {
      for (let i = 0; i < clients.length; i++) {
        if (clients[i].Client === 1) {
          io.to(clients[i].ClientId).emit('notiBillTable', data, 'Có Đơn Hàng Mới');
        }
      }
    });
    socket.on('checkoutuser', () => {
      for (let i = 0; i < clients.length; i++) {
        if (clients[i].Client === 1) {
          io.to(clients[i].ClientId).emit('checkoutuser', socket.user.IdTable);
        }
      }
    });
    socket.on('updateProduct', (IdDetail, table, Status) => {
      OrderController.updateProductOrder(Status, IdDetail, (data) => {
        if (data === 'Thanh cong') {
          for (let i = 0; i < clients.length; i++) {
            if (clients[i].Client === `${table}`) {
              io.to(clients[i].ClientId).emit('updateProduct', { IdDetail: IdDetail, Status: Status });
            }
          }
        }
      })
    });
    socket.on('checkoutsuccess', (table, callback) => {
      OrderController.checkOut(table, (data) => {
        if (data === 'Thanh cong') {
          for (let i = 0; i < clients.length; i++) {
            if (clients[i].Client === `${table}`) {
              io.to(clients[i].ClientId).emit('repcheckoutsuccess');
              callback('Thanh cong')
            }
          }
        }
      })
    });
    socket.on('newBill', () => {
      for (let i = 0; i < clients.length; i++) {
        if (clients[i].Client === 1) {
          io.to(clients[i].ClientId).emit('repNewbill', socket.user.IdTable);
        }
      }
    });
    socket.on('disconnect', () => {
      for (let i = 0; i < clients.length; i++) {
        if (clients[i].ClientId === socket.id) {
          clients.splice(i, 1)
        }
      }
      console.log('disconnect', (socket.id))
      console.log(clients)
    });
  });
  return io;
}
module.exports = socket