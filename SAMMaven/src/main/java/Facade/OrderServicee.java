/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author alaa
 */
public class OrderServicee {

    public boolean isBirthdayToday(String date) {

        String dob = "03/22/2017";
        Date today = new Date();
        try {
            Date dobDate = new SimpleDateFormat("MM/dd/yyyy").parse(dob);
            if (dobDate.compareTo(today) == 0) {
                //before or equals today
                System.out.println("today");
                return true;
            } else {
                return false;
            }
        } catch (ParseException e) {
            e.printStackTrace();
            return false;
        }
    }

//        if (date.equals(new Date())) {
//           
//        } else {
//          
//        }
}
