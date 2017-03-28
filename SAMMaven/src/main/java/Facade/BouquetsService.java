/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Flower;
import Entities.Product;
import dao.ProductDoa;
import java.util.ArrayList;

/**
 *
 * @author alaa
 */
public class BouquetsService {

    public ArrayList<Product> getBouquetsFormFlower(int id) {
        ProductDoa pDao = new ProductDoa();
        return pDao.selectProductsByFlower(id);
    }

    public ArrayList<Product> getBouquetsFormCategory(int id) {
        ProductDoa pDao = new ProductDoa();
        return pDao.selectProductsByCategory(id);
    }

    public Product getBouquetById(int id) {
        ProductDoa pDao = new ProductDoa();
        return pDao.selectOneProduct(id);
    }

    public Product getBouquetByName(String name) {
        ProductDoa pDao = new ProductDoa();
        return pDao.selectProductByName(name);
    }

    public ArrayList<Product> getBouquetsByFlowers(ArrayList<Flower> flowers) {
        ProductDoa pDao = new ProductDoa();
        ArrayList<Product> simliarProducts = new ArrayList<>();
        ArrayList<Product> productOfOneFlower = new ArrayList<>();
        for (int i = 0; i < flowers.size(); i++) {
            Flower flower = flowers.get(i);
            productOfOneFlower = pDao.selectProductsByFlower(flower.getId());
        }
        simliarProducts.addAll(productOfOneFlower);
        return simliarProducts;
    }
}
