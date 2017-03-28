/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Category;
import Entities.Product;
import Entities.Flower;
import Entities.Interests;
import dao.CategoryDao;
import dao.FlowerDao;
import dao.InterestsDao;
import dao.ProductDoa;
import java.util.ArrayList;

/**
 *
 * @author alaa
 */
public class HomeService {

    public ArrayList<Category> getCategories() {
        CategoryDao cDao = new CategoryDao();
        return new ArrayList<Category>(cDao.selectAll());
    }

    public ArrayList<Product> getProducts() {
        ProductDoa pDao = new ProductDoa();
        return pDao.selectAllProducts();
    }

    public ArrayList<Flower> getFlowers() {
        FlowerDao fDao = new FlowerDao();
        return fDao.selectAllFlowers();
    }

    public ArrayList<Product> getHighRated() {
        ProductDoa pDao= new ProductDoa();
        return pDao.selectHighRatedProducts();
    }

    public ArrayList<Interests> getInterest() {
        InterestsDao dao = new InterestsDao();
       return  dao.selectAll();
    }

    public ArrayList<Interests> getInterestByName(String[] interestsNames) {
        InterestsDao dao = new InterestsDao();
        Interests interest = new Interests();
        ArrayList<Interests> interets = new ArrayList<>();
        for (int i = 0; i < interestsNames.length; i++) {
            String interestsName = interestsNames[i];
            interest = dao.selectInterestByName(interestsName);
            interets.add(interest);
        }
       return  interets;
    }
}
