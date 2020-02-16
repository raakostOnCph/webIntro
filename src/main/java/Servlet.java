import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "Servlet",urlPatterns = {"/Servlet"} )
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String navn = request.getParameter("navn");

        System.out.println(navn);

        request.setAttribute("minAtribut",navn);


        List<String> stringList = new ArrayList<>();

        stringList.add("palle");
        stringList.add("jon");
        stringList.add("Arne");
        stringList.add("tur");
        stringList.add("nik");

        request.setAttribute("minArayliste",stringList);



        Map<String, String> stringMap = new HashMap<>();

        stringMap.put("jørgen", "313");
        stringMap.put("ulla","17");
        stringMap.put("holger B", "42");
        stringMap.put("knud", "13");


        request.setAttribute("mitMap", stringMap);

        request.getRequestDispatcher("Velkommen.jsp").forward(request,response);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
