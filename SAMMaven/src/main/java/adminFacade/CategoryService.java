/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminFacade;

import Entities.Category;
import Entities.Product;
import dao.CategoryDao;
import dao.CategoryProductDao;
import dao.ProductDoa;
import dto.CategoryProduct;
import java.util.ArrayList;

/**
 *
 * @author Adel Zaid
 */
public class CategoryService {

    public boolean addCategory(Category category) {
        CategoryDao categoryDao = new CategoryDao();
        CategoryProductDao categoryProductDao = new CategoryProductDao();
        ProductDoa productDoa = new ProductDoa();
        if (categoryDao.insertCategory(category)) {
            int categoryID = categoryDao.selectCategoryID(category.getName());
            CategoryProduct categoryProduct = null;
            for (Product product : category.getProductList()) {
                int productID = productDoa.selectProductId(product.getName());
                categoryProduct = new CategoryProduct();
                categoryProduct.setCategoryID(categoryID);
                categoryProduct.setProductID(productID);
                categoryProductDao.insertCategoryProdcut(categoryProduct);
            }
            return true;
        } else {
            return false;
        }
    }

    public boolean deleteCategory(int id) {
        CategoryDao categoryDao = new CategoryDao();
        Category category = new Category();
        category.setId(id);
        if (categoryDao.deleteCategoryById(category)) {

            return true;
        } else {
            return false;
        }
    }

    public ArrayList<Category> getCategories() {
        CategoryDao categoryDao = new CategoryDao();
        return categoryDao.selectAll();
    }

    public Category getCategory(int id) {
        CategoryDao categoryDao = new CategoryDao();
        CategoryProductDao categoryProductDao = new CategoryProductDao();
        ProductDoa productDoa = new ProductDoa();
        ArrayList<CategoryProduct> categoryProducts = categoryProductDao.selectCategoryProductsByCategoryId(id);
        Category category = new Category();

        category.setId(id);
        category = categoryDao.selectById(category);
        category.setProductList(productDoa.selectProductsByCategory(id));

        return category;
    }

    public boolean updateCategory(Category category) {
        CategoryDao categoryDao = new CategoryDao();
        CategoryProductDao categoryProductDao = new CategoryProductDao();
        ProductDoa productDoa = new ProductDoa();
        if (categoryDao.updateCategory(category)) {
            int id = categoryDao.selectCategoryID(category.getName());
            categoryProductDao.deleteCategoryProducts(id);
            for (Product product : category.getProductList()) {
                CategoryProduct categoryProduct = new CategoryProduct();
                categoryProduct.setCategoryID(id);
                categoryProduct.setProductID(productDoa.selectProductId(product.getName()));
                categoryProductDao.insertCategoryProdcut(categoryProduct);
            }
            return true;
        } else {
            return false;
        }
    }
}
