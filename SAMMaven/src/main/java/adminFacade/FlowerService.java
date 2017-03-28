/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminFacade;

import Entities.Flower;
import dao.FlowerDao;

/**
 *
 * @author Adel Zaid
 */
public class FlowerService {
    public boolean addFlower(Flower flower){
        FlowerDao flowerDao=new FlowerDao();
        return flowerDao.insertProduct(flower);
    }
}
