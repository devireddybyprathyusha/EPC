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

@WebServlet("/UploadServlet")
@MultipartConfig(
    maxFileSize = 1024 * 1024 * 1024,       // 1 GB
    maxRequestSize = 1024 * 1024 * 1024,    // 1 GB
    fileSizeThreshold = 1024 * 1024         // 1 MB
)
public class UploadServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Database configuration
    private static final String DB_URL =
            "jdbc:mysql://localhost:3306/report";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        try {

            // Get form values
            String id = request.getParameter("id");
            String profile = request.getParameter("profile");

            if (id == null || id.trim().isEmpty()) {
                out.println("<h3 style='color:red'>ID is required.</h3>");
                return;
            }

            int uploadId = Integer.parseInt(id);

            // Get uploaded file
            Part filePart = request.getPart("fname");

            if (filePart == null || filePart.getSize() == 0) {
                out.println("<h3 style='color:red'>Please select a file.</h3>");
                return;
            }

            // Connect to database
            Class.forName("com.mysql.cj.jdbc.Driver");

            String query =
                    "INSERT INTO filesupload (id, profile, file) VALUES (?, ?, ?)";

            try (Connection con = DriverManager.getConnection(
                        DB_URL, DB_USER, DB_PASSWORD);
                 PreparedStatement pst = con.prepareStatement(query);
                 InputStream inputStream = filePart.getInputStream()) {

                // Set values
                pst.setInt(1, uploadId);
                pst.setString(2, profile);

                // Set file as BLOB
                pst.setBlob(3, inputStream);

                // Execute INSERT
                int result = pst.executeUpdate();

                if (result > 0) {
                    out.println(
                        "<h3 style='color:green; text-align:center;'>" +
                        "File inserted successfully into the database" +
                        "</h3>"
                    );
                } else {
                    out.println(
                        "<h3 style='color:red;'>File upload failed.</h3>"
                    );
                }
            }

        } catch (NumberFormatException e) {

            out.println(
                "<h3 style='color:red;'>Invalid ID format.</h3>"
            );

        } catch (Exception e) {

            e.printStackTrace();

            out.println(
                "<h3 style='color:red;'>" +
                "Error while uploading file: " +
                e.getMessage() +
                "</h3>"
            );
        }
    }
}