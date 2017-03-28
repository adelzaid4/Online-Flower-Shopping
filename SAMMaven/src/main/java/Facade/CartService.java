/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Cart;
import Entities.CartDetails;
import Entities.Client;
import Entities.Product;
import dao.CartDao;
import dao.CartDetailDao;
import dao.ProductDoa;
import dto.CartProductDetails;
import dto.CartProducts;
import dto.LocalProducts;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sheko
 */
public class CartService {

    HttpSession session;

    public CartService(HttpSession session) {
        this.session = session;
    }


    public void removeFromUserCart(LocalProducts localProducts) {
        LinkedList<CartProductDetails> savedProducts = (LinkedList<CartProductDetails>) getcartDetailFromDB();
        boolean Exist = false;
        for (CartProductDetails saved : savedProducts) {
            if (saved.getProductId() == localProducts.getId()) {
                Exist = true;
                if (saved.getQuntity() != localProducts.getValue()) {
                    updateDbQuantity(localProducts);
                }
                break;
            }
        }
        if (Exist) {
            CartDetailDao cartDetailDao=new CartDetailDao();
            CartDetails cartDetails=new  CartDetails();
            cartDetails.setProductId(localProducts.getId());
            cartDetailDao.deleteByProductId(cartDetails, getClientId());
        }
    }
    public void updateUserCart(LocalProducts localProducts) {
        LinkedList<CartProductDetails> savedProducts = (LinkedList<CartProductDetails>) getcartDetailFromDB();
        boolean notExist = true;
        for (CartProductDetails saved : savedProducts) {
            if (saved.getProductId() == localProducts.getId()) {
                notExist = false;
                if (saved.getQuntity() != localProducts.getValue()) {
                    updateDbQuantity(localProducts);
                }
                break;
            }
        }
        if (notExist) {
            insertDbQuantity(localProducts);
        }
    }

    private int getClientId() {
        Client client = (Client) session.getAttribute("user");
        return client.getId();
    }

    private int getCartID() {
        Client client = (Client) session.getAttribute("user");
        if (client == null) {
            return -1;
        }
        CartDao cartDao = new CartDao();
        Cart cart = cartDao.selectByCLientId(client.getId());
        return cart.getId();
    }

    private void insertDbQuantity(LocalProducts localProducts) {
//        int cartId = getCartID();
        CartDetailDao cartDetailDao = new CartDetailDao();
        CartDetails details;
        details = new CartDetails();
//        details.setCartId(cartId);
        details.setProductId(localProducts.getId());
        details.setQuantity(localProducts.getValue());
        cartDetailDao.insertCartDetail(details, getClientId());
    }

    private void insertDbQuantity(ArrayList<LocalProducts> insertProduct) {
//        int cartId = getCartID();
        CartDetailDao cartDetailDao = new CartDetailDao();
        CartDetails details;
        for (LocalProducts cpd : insertProduct) {
            details = new CartDetails();
//            details.setCartId(cartId);
            details.setProductId(cpd.getId());
            details.setQuantity(cpd.getValue());
            cartDetailDao.insertCartDetail(details, getClientId());
        }
    }

    private void updateDbQuantity(LocalProducts localProducts) {
//        int cartId = getCartID();
        CartDetailDao cartDetailDao = new CartDetailDao();
        CartDetails details;
        details = new CartDetails();
//        details.setCartId(cartId);
        details.setProductId(localProducts.getId());
        details.setQuantity(localProducts.getValue());
        cartDetailDao.updateCartDetails(details, getClientId());

    }

    private void updateDbQuantity(ArrayList<CartProductDetails> updateDb) {
//        int cartId = getCartID();
        CartDetailDao cartDetailDao = new CartDetailDao();
        CartDetails details;
        int clientid = getClientId();
        for (CartProductDetails cpd : updateDb) {
            details = new CartDetails();
//            details.setCartId(cartId);
            details.setProductId(cpd.getProductId());
            details.setQuantity(cpd.getQuntity());
            cartDetailDao.updateCartDetails(details, clientid);
        }

    }

    public ArrayList<LocalProducts> syncCart(ArrayList<LocalProducts> localProducts) {

        LinkedList<CartProductDetails> savedProducts = (LinkedList<CartProductDetails>) getcartDetailFromDB();
        if (savedProducts == null) {
            return localProducts;
        }

        boolean notexist = true;
        ArrayList<LocalProducts> insertIntoDb = new ArrayList<>();
        ArrayList<LocalProducts> mergedList = new ArrayList<>();
        for (LocalProducts local : localProducts) {
            notexist = true;
            for (CartProductDetails saved : savedProducts) {
                if (local.getId() == saved.getProductId()) {
                    notexist = false;
                }
            }
            if (notexist) {
                insertIntoDb.add(local);
                mergedList.add(local);
            }
        }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////        
        LocalProducts lp;
        for (CartProductDetails saved : savedProducts) {
            notexist = true;
            for (LocalProducts merged : mergedList) {
                if (saved.getProductId() == merged.getId()) {
                    notexist = false;
                }
            }
            if (notexist) {
                lp = new LocalProducts();
                lp.setId(saved.getProductId());
                lp.setValue(saved.getQuntity());
                mergedList.add(lp);
            }
        }
        insertDbQuantity(insertIntoDb);
        return mergedList;
    }

    public List<CartProductDetails> getcartDetailFromDB() {
        Client client = (Client) session.getAttribute("user");
        if (client == null) {
            return null;
        }
        CartDetailDao cartDetailDao = new CartDetailDao();
        return cartDetailDao.selectCartProductsDetailById(client.getId());
    }
    public int getAvailableProductQuantity(int id)
    {
        ProductDoa productDoa=new ProductDoa();
        Product product=productDoa.selectOneProduct(id);
        return product.getQuantity();
    }
}
