package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class Registration {
	
		private Connection con;
		HttpSession se;
		
		public Registration(HttpSession session) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3307?user=root & password=ROOT");
				se = session;
			} 
			catch(ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}

		public String Registration(String name, String email, String phone,String pw) {
			PreparedStatement pstmt;
			String status=" ";
			try {
				Statement st = null;
				ResultSet rs = null;
				st = con.createStatement();
				rs = st.executeQuery("Select * from event.client where  email='"+email+"';");
				boolean b = rs.next();
				if (b) {
					status = "existed";
				}
				else {
					pstmt = con.prepareStatement("Insert into event.client values(0,?,?,?,?,now())");
					pstmt.setString(1, name);
					pstmt.setString(2, email);
					pstmt.setString(3, phone);
					pstmt.setString(4, pw);
					int a = pstmt.executeUpdate();
					if(a>0) {
						status = "success";
					}
					else {
						status = "failure";
					}
				}
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
			return status;
		}

		public String login(String name, String pass) {
	        String status1 = "", id = "";
	        String names = "", emails = "",phones="";

	        try {
	            Statement st = null;
	            ResultSet rs = null;
	            st = con.createStatement();
	            rs = st.executeQuery("Select * from event.client where name='" + name + "' and password='" + pass + "';");
	            boolean c = rs.next();
	            if (c == true) {
	                id = rs.getString("SlNo");
	                names = rs.getString("Name");
	                emails = rs.getString("Email");
	                phones = rs.getString("phone");
	                se.setAttribute("id", id);
	                se.setAttribute("uname", names);
	                se.setAttribute("email", emails);
	                se.setAttribute("phone", phones);
	                status1 = "success";
	            }
	            else {
	                status1 = "failure";
	            }
	        }
	        catch (Exception e) {
	            e.printStackTrace();
	        }

	        return status1;
	    }
		
		public ArrayList<Dproduct> get_eventinfo(String event_category) {
	        ArrayList<Dproduct> al = new ArrayList<Dproduct>();
	        Statement st = null;
	        ResultSet rs = null;
	        try {
	            st = con.createStatement();
	            String qry = " select * from event.events where event_category='" + event_category + " ';";
	            rs = st.executeQuery(qry);
	            while (rs.next()) {
	                Dproduct d = new Dproduct();
	                d.setP_id(rs.getString("event_id")); // 1..r---db 2.. pass the data or value to Dproduct class set method
	                d.setP_image(rs.getString("event_image"));
	                d.setP_name(rs.getString("event_name"));
	                d.setP_cost(rs.getString("event_cost"));
	                d.setP_details(rs.getString("event_details"));
	                System.out.println(d.getP_id());
	                System.out.println(d.getP_image());
	                al.add(d);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return al;

	    }
		
		public Dproduct getEventFormInfo(String event_id) {
	        Statement st = null;
	        ResultSet rs = null;
	        Dproduct s = null;
	        System.out.println("book");
	        try {
	        	System.out.println("book");
	            st = con.createStatement();
	            rs = st.executeQuery("select * from event.events where event_id= '" + event_id + "'");
	            boolean b = rs.next();
	            if (b == true) {
	                s = new Dproduct();
	                s.setP_name(rs.getString("event_name"));
	                s.setP_cost(rs.getString("event_cost"));
	            } else {
	                s = null;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return s;
	    }


		public String Booknow(HttpServletRequest request) {
			String status = "";
	        ResultSet rs = null;
	        try {
	            Statement st = con.createStatement();
	            rs = st.executeQuery("select event_id from event.bookevent where eventdate= '" + request.getParameter("edate") + "'");
	            boolean b = rs.next();
	            if (b == true) {
	                status = "existed";
	            } else {
	            	System.out.println("Success");
	                String qry = "insert into event.bookevent select 0,event_image,event_name,'" + 
	                              request.getParameter("pno") + "', '" + request.getParameter("email") + "','" + 
	                		      request.getParameter("address") + "',event_cost,'" + se.getAttribute("uname") +
	                		      "'," + se.getAttribute("id") + " ,'pending',now(),'" + request.getParameter("edate") + 
	                		      "' from event.events where event_id=" + request.getParameter("event_id") + ";";
	                int a = st.executeUpdate(qry);
	                if (a > 0) {
	                    status = "success";
	                    System.out.println("Success1");
	                } else {
	                    status = "failure";
	                }
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return status;

		}
		public int deleteevent(int event_id) {
			int status = 0;
			try {
			            Statement st = null;
			st = con.createStatement();
			            String qry = "update event.bookevent set status='cancelled' where event_id=' " + event_id + "' ";
			status = st.executeUpdate(qry);
			        } catch (Exception e) {
			e.printStackTrace();
			        }
			return status;
			    }
		
		public ArrayList<Dproduct> geteventstatus() {
	        ArrayList<Dproduct> al = new ArrayList<Dproduct>();
	        Statement st = null;
	        ResultSet rs = null;
	        
	        try {
	            st = con.createStatement();
	            String qry = " select *,date_format(date,'%d %b,%Y') as date1,date_format(eventdate,'%d %b,%Y') as date2 from event.bookevent where uid='" + se.getAttribute("id") + " ';";
	            rs = st.executeQuery(qry);
	            while (rs.next()) {
	                Dproduct d = new Dproduct(); // 1..r---db 2.. pass the data or value to Dproduct class set method
	                d.setP_id(rs.getString("event_id"));
	                d.setP_image(rs.getString("event_image"));
	                d.setP_name(rs.getString("event_name"));
	                d.setP_cost(rs.getString("event_cost"));
	                d.setPhone(rs.getString("phone"));
	                d.setEmail(rs.getString("email"));
	                d.setDate(rs.getString("date1"));
	                d.setEventdate(rs.getString("date2"));
	                d.setStatus(rs.getString("status"));
	                al.add(d);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return al;

	    }
		

}


