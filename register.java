package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import Model.Registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register" )
public class register extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// type of the response sent to the client or browser
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Registration reg = new Registration(session);
		try {
			if (request.getParameter("register1") != null) {
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				String pw = request.getParameter("pwd");
				String cp = request.getParameter("cp");
				if (pw.equals(cp)) {
					String status = reg.Registration(name, email, phone, pw);

					if (status.equals("existed")) {
						request.setAttribute("status", "Existed record");
						RequestDispatcher rd1 = request.getRequestDispatcher("login & register.jsp");
						rd1.forward(request, response);
					} else if (status.equals("success")) {
						request.setAttribute("status", "Successfully Registered");
						RequestDispatcher rd1 = request.getRequestDispatcher("login & register.jsp");
						rd1.forward(request, response);
					} else if (status.equals("failure")) {
						request.setAttribute("status", "Registration failed");
						RequestDispatcher rd1 = request.getRequestDispatcher("login & register.jsp");
						rd1.forward(request, response);
					}
				}
			}
			else if (request.getParameter("login1") != null) {
				String name = request.getParameter("name");
				String pass = request.getParameter("pass");
				String status = reg.login(name, pass);

				if (status.equals("success")) {
					System.out.println("Login successfull");
					RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
					rd1.forward(request, response);
				}
				else if (status.equals("failure")) {
					request.setAttribute("status", "Login failed");
					RequestDispatcher rd1 = request.getRequestDispatcher("login & register.jsp");
					rd1.forward(request, response);
				}
			}
		 else if (request.getParameter("logout") != null) {
		 session.invalidate();
		 RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
		 rd1.forward(request, response);
		 }
		 else if (session.getAttribute("uname") != null && request.getParameter("bookevent") != null) {
			 System.out.println("Booknow");
             String status = reg.Booknow(request);
             if (status.equals("success")) {
                 request.setAttribute("status", "Booking successful.<a href='Eventstatus.jsp'>Check status</a> .");
                 RequestDispatcher rd = request.getRequestDispatcher("EventBooking.jsp?event_id=" + request.getParameter("event_id"));
                 rd.forward(request, response);
             } else if (status.equals("failure")) {
                 request.setAttribute("status", "Booking failed");
                 RequestDispatcher rd = request.getRequestDispatcher("EventBooking.jsp?event_id=" + request.getParameter("event_id"));
                 rd.forward(request, response);
             } else if (status.equals("existed")) {
                 request.setAttribute("status", "Date not available for event");
                 RequestDispatcher rd = request.getRequestDispatcher("EventBooking.jsp?event_id=" + request.getParameter("event_id"));
                 rd.forward(request, response);
             }
         }
		 else if (session.getAttribute("uname") != null &&request.getParameter("cancelevent") != null) {
			 int event_id = Integer.parseInt(request.getParameter("event_id"));
			 int status = reg.deleteevent(event_id);
			 if (status > 0) {
			 RequestDispatcher rd = request.getRequestDispatcher("Eventstatus.jsp");
			 rd.forward(request, response);
			                 }
		 }}  

         
		
		 catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}

	public String getServletInfo() {
		return "Short description";
	}

}
