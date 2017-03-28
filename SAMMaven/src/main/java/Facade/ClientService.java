/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Cart;
import Entities.Client;
import Entities.Interests;
import dao.CartDao;
import dao.ClientDao;
import dao.InterestsDao;
import java.util.ArrayList;

/**
 *
 * @author Sheko
 */
public class ClientService {

    static ArrayList<String> loginEmails = new ArrayList<>();

    synchronized private boolean isloggedIn(String email) {
        
        for (String userMail : loginEmails) {
            if (userMail.equalsIgnoreCase(email)) {
                return true;
            }
        }
        loginEmails.add(email);
        return false;
    }

    synchronized public void logout(String email) {
        for (int i = 0; i < loginEmails.size(); i++) {
            if (loginEmails.get(i).equalsIgnoreCase(email)) {
                loginEmails.remove(i);
                return;
            }
        }
    }

    public int Login(String email, String password) {
        if (email == null || isloggedIn(email)) {
            return 0; // false alredy logged in 
        }
        Client client = new Client();
        client.setMail(email);
        client.setPassword(password);
        ClientDao clientDao = new ClientDao();
        boolean flag = clientDao.validclient(client);
        if (flag == true) {
            return 1; // true
        } else {
            return 2; // false not found user 
        }
    }
    public boolean loginForCookie(String email,String password){
          Client client = new Client();
        client.setMail(email);
        client.setPassword(password);
        ClientDao clientDao = new ClientDao();
        return clientDao.validclient(client);
    }

    public boolean CheckPassword(String email, String password) {
        Client client = new Client();
        client.setMail(email);
        client.setPassword(password);
        ClientDao clientDao = new ClientDao();
        return clientDao.validclient(client);
    }

    public boolean signUp(Client client ) {

        ClientDao clientDao = new ClientDao();
        InterestsDao iDao = new InterestsDao();
        Client clientInfo;
        if (!clientDao.existMail(client)) {

            clientDao.insertClient(client);
            clientInfo = clientDao.selectByEmail(client.getMail());
            iDao.insert(client.getInterests(), clientInfo.getId());
            CartDao cartDao = new CartDao();
            Cart cart = new Cart();
            cart.setCustomerId(clientInfo.getId());
            boolean flag = cartDao.insertCart(cart);
            return flag;

        }
        return false;
    }

    public Client getUser(String mail) {
        ClientDao clientDao = new ClientDao();
        return clientDao.selectByEmail(mail);
    }

    public boolean updateUser(Client client) {
        ClientDao clientDao = new ClientDao();
        System.out.println("updateuser : " + clientDao.updateClient(client));
        return clientDao.updateClient(client);
    }

    public boolean buy(int clientId,int price) {
        ClientDao clientDao=new ClientDao();
        return clientDao.updateCredit(clientId, price);
    }
}
