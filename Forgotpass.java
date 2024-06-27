package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.http.HttpSession;

public class Forgotpass {
	HttpSession se;
	Connection con = null;
	public Forgotpass(HttpSession session) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307? user=root & password=ROOT");
			se = session;
		} 
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}// load the drivers

		
	}

	public String forgot(String email) {
		PreparedStatement ps = null;
		String status = " ";
		String Q1 = "Select * from event.client where Email=?";
		try {
			ResultSet rs = null;
			ps = con.prepareStatement(Q1);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if (rs.next() == true) {
				String mail = rs.getString("email");
				se.setAttribute("email", mail);
				status = "success";
			} else {
				status = "failure";
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public String change(String pwrd) {
		PreparedStatement ps = null;
		String status = "";
		String Q1 = "Select * from event.client where email=?";
		String Q2 = "Update event.client set password=? where email=?";
		try {
			ResultSet rs = null;
			String em = (String) se.getAttribute("email");
			ps = con.prepareStatement(Q1);
			ps.setString(1, em);
			rs = ps.executeQuery();
			if (rs.next() == true) {
				String pd = rs.getString("password");
				if (pd.equals(pwrd)) {
					status = "existed";
				} 
				else {
					ps = con.prepareStatement(Q2);
					ps.setString(1, pwrd);
					ps.setString(2, em);
					int up = ps.executeUpdate();
					if (up > 0) {
						status = "success";
					} 
					else {
						status = "failure";
					}
				}
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
