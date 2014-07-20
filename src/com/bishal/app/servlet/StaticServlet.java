package com.bishal.app.servlet;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;

public class StaticServlet extends HttpServlet {

    private static final long serialVersionUID = 8458501870440200891L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String resourcePath = req.getServletPath() + req.getPathInfo();
        String realPath = getServletContext().getRealPath(resourcePath);
        FileInputStream fileInputStream = new FileInputStream(realPath);
        try {
            IOUtils.copy(fileInputStream, resp.getOutputStream());
        } finally {
            fileInputStream.close();
        }
    }

}