package com.FileUpload;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
@MultipartConfig(maxFileSize=1000000000) // upto 1GB bytes
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UploadServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uploadId = Integer.parseInt(request.getParameter("id"));
		
		String name =request.getParameter("profile");
		
		Part filepart=request.getPart("fname");
		
		
		
		InputStream inputfile=null;
		
		if(filepart !=null) {
			
			inputfile=filepart.getInputStream();
		}
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/report","root","root");
			
            String query="insert into filesupload values(?,?,?)";

            PreparedStatement pst=con.prepareStatement(query);

                   pst.setInt(1, uploadId);
                   pst.setString(2, name);
                   
                   if(inputfile!=null)
                   {
                	   int size=(int) filepart.getSize();
                	   
                	   pst.setBinaryStream(3, inputfile, size);
                   }
                    
                  int num= pst.executeUpdate();      // non select

			if(num>0) {
				response.setContentType("text/html");
				
				PrintWriter out=response.getWriter();
				
				out.println("<h3 style='color:green' 'text-align:centre'>File inserted Successfully into the database</h3>");
			}
		}catch(Exception e) {
			
			
			e.printStackTrace();
		}
		
	}

}
