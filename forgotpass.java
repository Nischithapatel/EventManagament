package Controller;

import java.io.IOException;

import Model.Forgotpass;
import Model.Registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/event")
public class forgotpass extends HttpServlet{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Forgotpass e1 = new Forgotpass(session);

		if (req.getParameter("continue") != null) {
			
			String email = req.getParameter("email");
			String status = e1.forgot(email);
			if (status.equals("success")) {
				RequestDispatcher rd1 = req.getRequestDispatcher("Change.jsp");
				rd1.forward(req, resp);
			} 
			else if (status.equals("failure")) {
				req.setAttribute("status", "Invalid email");
				RequestDispatcher rd1 = req.getRequestDispatcher("ForgotPassword.jsp");
				rd1.forward(req, resp);
			}

		} 
		else if (req.getParameter("change") != null) {
			String pword = req.getParameter("pwd");
			String cword = req.getParameter("cp");
			if (pword.equals(cword)) {
				String status = e1.change(pword);
				if (status.equals("existed")) {
					req.setAttribute("status", "existed password");
					RequestDispatcher rd1 = req.getRequestDispatcher("Change.jsp");
					rd1.forward(req, resp);
				} 
				else if (status.equals("success")) {
					req.setAttribute("status", "password updated successfully");
					RequestDispatcher rd1 = req.getRequestDispatcher("login & register.jsp");
					rd1.forward(req, resp);
				}
				else if (status.equals("failure")) {
					req.setAttribute("status", "upadation failed");
					RequestDispatcher rd1 = req.getRequestDispatcher("Change.jsp");
					rd1.forward(req, resp);
				}
			}
			else {
				req.setAttribute("status","Password Mismatch ");
				RequestDispatcher rd1 = req.getRequestDispatcher("Change.jsp");
				rd1.forward(req, resp);
				
			}

		}
	}
}

