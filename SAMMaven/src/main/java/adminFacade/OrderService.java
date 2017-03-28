/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminFacade;

import Entities.Order;
import Entities.OrderDetails;
import Entities.Product;
import dao.ExtraDao;
import dao.OrderDao;
import dao.OrderDetailsDao;
import dao.ProductDoa;
import dao.ProductImageDao;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adel Zaid
 */
public class OrderService {

    List<Order> orders = new ArrayList<>();

    public List<Order> selectOrdersByCLientID(int id) {

        orders = new OrderDao().selectOrdersByClientID(id);
        for (Order o : orders) {

            o.setOrderDetails(new OrderDetailsDao().selectOrdersByClientID(o.getID()));
            o.setExtras(new ExtraDao().selectExtrasByClientID(o.getID()));
        }

        return orders;
    }

    public String returnProductName(int id) {
        ProductDoa pd = new ProductDoa();
        return pd.selectProductName(id);

    }

    public String returnExtraName(int id) {
        ExtraDao ed = new ExtraDao();
        return ed.selectExtraName(id);
    }
}
