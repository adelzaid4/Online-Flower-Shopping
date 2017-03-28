package adminFacade;

import Entities.Client;
import dao.ClientDao;

/**
 *
 * @author Moamenovic
 */
public class ClientService {

    public boolean addClient(Client client) {
        ClientDao clientDao = new ClientDao();
        return clientDao.insertClient(client);
    }

    public Client getClientById(int id) {
        ClientDao clientDao = new ClientDao();
        return clientDao.selectById(id);
    }

    public boolean removeClient(int id) {
        ClientDao clientDao = new ClientDao();
        return clientDao.deleteClientById(id);
    }
}
