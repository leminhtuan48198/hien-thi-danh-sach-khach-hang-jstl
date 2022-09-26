import com.example.model.Client;

import java.util.ArrayList;
import java.util.List;

public class ClientController {
    public static void main(String[] args) {
        List<Client> clientList =new ArrayList<>();
        clientList.add(new Client("Tuan","04-08-1998","Ha Noi","link"));
        clientList.add(new Client("Han","1996","Ninh Binh","link"));
        clientList.add(new Client("Vinh","04-08-2000","Ha Noi","link"));
    }


}
