package hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.net.InetAddress;
import java.net.UnknownHostException;

@SpringBootApplication
@RestController
public class Application {

    @RequestMapping("/")
    public String home() {
	InetAddress ip = null;
        try {
          ip = InetAddress.getLocalHost();
        } catch (UnknownHostException e) {
          e.printStackTrace();
        }
        return "Hello Docker World\nMy IP is : " + ip.getHostAddress();
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}
