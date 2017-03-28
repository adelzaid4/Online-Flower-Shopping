/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Extra;
import com.google.gson.Gson;
import dao.ExtraDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sheko
 */
@WebServlet(name = "GetExtraDetail", urlPatterns = {"/GetExtraDetail"})
public class GetExtraDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gson gson=new Gson();
        Integer []ids=gson.fromJson(req.getParameter("extrasId"), Integer[].class);
        resp.setContentType("application/json");
        resp.getWriter().write(gson.toJson(getExtras(ids)));
    }
    private  static ArrayList<Extra> getExtras(Integer [] ids)
    {
        ArrayList<Extra>extras=new ArrayList<>();
        ExtraDao dao=new ExtraDao();
        for(int i=0;i<ids.length;i++)
        {
             extras.add( dao.selectOneExtra(ids[i]));
        }
        return extras;
    }

    

}
