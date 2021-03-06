package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.JavaBeans.Customer;
import chap14.JavaBeans.Employee;

/**
 * Servlet implementation class S14Servlet99
 */
@WebServlet("/S14Servlet99")
public class S14Servlet99 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet99() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		if(id != null) {
			
		
		String sql = "SELECT EmployeeID, LastName, FirstName, BirthDate, Photo, Notes "
				+ "FROM Employees "
				+ "WHERE EmployeeID = ?";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql)){
			while(rs.next()) {
				Employee emp = new Employee();
				
				emp.setId(rs.getInt(1));
				emp.setLastName(rs.getString(2));
				emp.setFirstName(rs.getString(3));
				emp.setBirthDate(rs.getString(4));
				emp.setPhoto(rs.getString(5));
				emp.setNotes(rs.getString(6));
				
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "INSERT INTO EmployeeS (LastName, FirstName, BirthDate, Photo, Notes) VALUES (?, ?, ?, ?, ?)";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		int result = 0;
		
		try (Connection con = ds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
				){
			String lastName = request.getParameter("lastName");
			String firstName = request.getParameter("firstName");
			String birthDate = request.getParameter("birthDate");
			String photo = request.getParameter("pic");
			String notes = request.getParameter("notes");
			
			pstmt.setString(1, lastName);
			pstmt.setString(2, firstName);
			pstmt.setString(3, birthDate);
			pstmt.setString(4, photo);
			pstmt.setString(5, notes);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		String path = "S14Servlet15";
		
		if(result == 1) {
			path += "?success=true";
		} else {
			path += "?success=false";
		}
		response.sendRedirect(path);
	}

}
