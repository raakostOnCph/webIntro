import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "Servlet",urlPatterns = {"/Servlet"} )
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String navn = request.getParameter("navn");

        System.out.println(navn);


        request.setAttribute("minAtribut",navn);


        List<String> liste = new ArrayList<>();

        liste.add("jønke");
        liste.add("blondie");
        liste.add("blondie");
        liste.add("blondie");
        liste.add("gøjler");
        liste.add("feehaar");


        Map<String,String> map = new HashMap<>();

        map.put("jønke", "58");
        map.put("blondie", "62");
        map.put("gøjler", "54");
        map.put("feehår", "49");

        Set<String> set = new HashSet<>(liste);


        request.setAttribute("setRokkere", set);

        request.setAttribute("mapRokkere",map);






        request.setAttribute("rockerListe",liste);




        request.getRequestDispatcher("Velkommen.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
