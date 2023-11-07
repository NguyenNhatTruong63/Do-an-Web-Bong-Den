import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="Login", value = "/doLogin")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.getWriter().println("Hello GET");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if(username == null || password == null){
            req.setAttribute("error", "Tên đăng nhập và Mật khẩu không được bỏ trống" );
            req.getRequestDispatcher("form.jsp").forward(req,resp);
        } else if(username.equals("admin") && password.equals("admin")){
            resp.sendRedirect("/index.jsp");

        } else {
            req.setAttribute("error", "Sai Tên đăng nhập hoặc Mật khẩu" );
            req.getRequestDispatcher("formdn.jsp").forward(req,resp);
        }
        resp.getWriter().println("username: " + username);
        resp.getWriter().println("password: " + password);
    }
}
