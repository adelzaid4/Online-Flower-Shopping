/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Extra;
import dao.ExtraDao;
import java.util.ArrayList;

/**
 *
 * @author alaa
 */
public class ExtraService {
    
    public ArrayList<Extra> getExtras () {
        ExtraDao eDao = new ExtraDao();
        return eDao.selectAllExtras();
    }
    
}
