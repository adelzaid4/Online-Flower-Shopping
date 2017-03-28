/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Client;
import Entities.Order;
import Entities.OrderDetails;
import Entities.Product;
import dao.CartDao;
import dao.CartDetailDao;
import dao.OrderDao;
import dao.OrderDetailsDao;
import dao.OrderExtraDetail;
import dao.ProductDoa;
import dto.CartProductDetails;
import dto.BuyOrder;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sheko
 */
public class BuyService {

    HttpSession session;

    public BuyService(HttpSession session) {
        this.session = session;
    }

    private int getClientId() {
        Client client = (Client) session.getAttribute("user");
        return client.getId();
    }

    private boolean clientCredit(int price) {
        ClientService clientService = new ClientService();
        return clientService.buy(getClientId(), price);
    }

    private void updateCreditForUserSession(int price) {
        Client client = (Client) session.getAttribute("user");
        client.setCridetlimit(client.getCridetlimit() - price);
        session.setAttribute("user", client);
    }

    public boolean buy(BuyOrder buyOrder) {
        if (!clientCredit((int) buyOrder.getPrice())) {
            return false;
        }
        Order order = new Order();
        order.setPrice(buyOrder.getPrice());
        Timestamp timestamp = new Timestamp(new Date().getTime());
        order.setStamp(timestamp);
        order.setClientId(getClientId());
        OrderDao orderDao = new OrderDao();
        int orderId = orderDao.insertOrder(order);
        buyExtra(orderId, buyOrder);
        buyProduct(orderId);
        updateCreditForUserSession((int) buyOrder.getPrice());
        return true;
    }

    private void buyExtra(int orderId, BuyOrder buyOrder) {
        OrderExtraDetail orderExtraDetail = new OrderExtraDetail();
        orderExtraDetail.insertOrderDetail(buyOrder.getIds(), orderId);
    }

    private void buyProduct(int orderId) {
        CartService cartService = new CartService(session);

        List<CartProductDetails> cartProducts = cartService.getcartDetailFromDB();
        ProductDoa productDoa = new ProductDoa();
        Product product;
        for (CartProductDetails cpd : cartProducts) {
            product = productDoa.selectOneProduct(cpd.getProductId());
            product.setQuantity(product.getQuantity() - cpd.getQuntity());
            productDoa.updateProduct(product);
        }
        CartDetailDao cartDetailDao = new CartDetailDao();
        cartDetailDao.deleteByClientId(getClientId());
        OrderDetailsDao detailsDao = new OrderDetailsDao();
        detailsDao.insertOrderDetails(cartProducts, orderId);
    }
}
