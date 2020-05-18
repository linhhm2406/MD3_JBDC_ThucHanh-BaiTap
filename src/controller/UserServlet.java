package controller;

import Service.UserService;
import com.mysql.cj.PreparedQuery;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/user")
public class UserServlet extends javax.servlet.http.HttpServlet {
    UserService userService = new UserService();
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";

        switch (action) {
            case "update":{
                Update(request,response);
                break;
            }
            case "delete" : {
                Delete(request,response);
                break;
            }
            case "add" : {
                Add(request,response);
                break;
            }case "findByCountry" : {
                findByCountry(request,response);
                break;
            }
        }
    }

    private void findByCountry(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ok");
        String country = request.getParameter("findByCountry");
        System.out.println(country);
        List<User> list = userService.findByCountry(country);
        System.out.println(list);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/showFindByCountry.jsp");
        request.setAttribute("list", list);
        requestDispatcher.forward(request, response);
    }

    private void Add(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("newId"));
        String name = request.getParameter("newName");
        String email = request.getParameter("newEmail");
        String country = request.getParameter("newCountry");

        User user = new User(id, name , email, country);
        userService.add(user);
        try {
            showList(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void Delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        userService.delete(id);
        try {
            showList(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void Update(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("newId"));
        String name = request.getParameter("newName");
        String email = request.getParameter("newEmail");
        String country = request.getParameter("newCountry");

        User newUser = new User (id,name,email,country);
        userService.update(newUser);
        try {
            showList(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";

        switch (action) {
            case "update":{
                showUpdate(request,response);
                break;
            }
            case "delete":{
                showDelete(request,response);
                break;
            }
            case "add":{
                showAdd(request,response);
                break;
            }
            case "findByCountry":{
                showFindByCountry(request,response);
                break;
            }
            default: {
                showList(request, response);
                break;
            }
        }
    }

    private void showFindByCountry(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/showFindByCountry.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/showAdd.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User user = userService.findById(id);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/showDelete.jsp");
        request.setAttribute("user", user);
        requestDispatcher.forward(request, response);
    }

    private void showUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User user = userService.findById(id);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/showUpdate.jsp");
        request.setAttribute("user", user);
        requestDispatcher.forward(request, response);
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> list = userService.showAllList();

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/showAll.jsp");
        request.setAttribute("list", list);
        requestDispatcher.forward(request, response);
    }


}
