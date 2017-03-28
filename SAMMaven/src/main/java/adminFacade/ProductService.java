/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminFacade;

import Entities.Flower;
import Entities.ImageEntity;
import Entities.Product;
import dto.ProductFlower;
import dao.FlowerDao;
import dao.ProductDoa;
import dao.ProductFlowerDao;
import dao.ProductImageDao;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adel Zaid
 */
public class ProductService {

    public boolean addProduct(Product product, List<String> imgPaths) {
        ProductDoa productDoa = new ProductDoa();
        ProductImageDao productImageDao = new ProductImageDao();
        ProductFlowerDao productFlowerDao = new ProductFlowerDao();
        FlowerDao flowerDao = new FlowerDao();
        ImageEntity imageEntity = null;
        if (productDoa.insertProduct(product)) {
            int prodctID = productDoa.selectProductId(product.getName());
            for (String imgPath : imgPaths) {
                imageEntity = new ImageEntity();
                imageEntity.setUrl(imgPath);
                imageEntity.setProductID(prodctID);
                productImageDao.insertProductImage(imageEntity);
            }
            for (Flower flower : product.getFlowers()) {
                ProductFlower productFlower = new ProductFlower();
                productFlower.setProductID(prodctID);
                productFlower.setFlowerID(flowerDao.selectFlowerID(flower.getName()));
                productFlowerDao.insertProductWithFlowers(productFlower);
            }
            return true;
        } else {
            return false;
        }
    }

    public Product getProduct(int id) {
        ProductDoa productDoa = new ProductDoa();
        ProductImageDao productImageDao = new ProductImageDao();
        FlowerDao flowerDao = new FlowerDao();
        ArrayList<ImageEntity> imageList = productImageDao.selectProductImagesByProductId(id);
        Product product = productDoa.selectOneProduct(id);
        ArrayList<Flower> flowers = flowerDao.selectFlowerByProductId(id);
        product.setFlowers(flowers);
        product.setImages(imageList);
        return product;
    }

    public boolean deleteProduct(int id) {
        ProductDoa productDoa = new ProductDoa();
        return productDoa.deleteProduct(id);
    }

    public boolean updateProduct(Product product, List<String> imgPaths) {
        ProductDoa productDoa = new ProductDoa();
        ProductFlowerDao productFlowerDao = new ProductFlowerDao();
        FlowerDao flowerDao = new FlowerDao();
        if (productDoa.updateProduct(product)) {
            int prodctID = productDoa.selectProductId(product.getName());
            productFlowerDao.deleteProductFlowers(prodctID);
            for (Flower flower : product.getFlowers()) {
                ProductFlower productFlower = new ProductFlower();
                productFlower.setProductID(prodctID);
                productFlower.setFlowerID(flowerDao.selectFlowerID(flower.getName()));
                productFlowerDao.insertProductWithFlowers(productFlower);
            }
            return true;
        } else {
            return false;
        }
    }
}
