package baitap4.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

import baitap4.model.User;
import baitap4.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(name = "updateProfile", value = "/profile/update")
@MultipartConfig
public class UpdateProfile extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/profile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStr = req.getParameter("id");
        Long id = null;
        if (idStr != null && !idStr.isEmpty()) {
            try { id = Long.parseLong(idStr); } catch (NumberFormatException ignored) {}
        }
        String fullName = req.getParameter("fullname");
        String phone = req.getParameter("phone");

        String uploadDirPath = getServletContext().getRealPath("/uploads");
        File uploadDir = new File(uploadDirPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        Part imagePart = req.getPart("image");
        String savedRelativePath = null;
        if (imagePart != null && imagePart.getSize() > 0) {
            String submitted = imagePart.getSubmittedFileName();
            String ext = "";
            if (submitted != null && submitted.contains(".")) {
                ext = submitted.substring(submitted.lastIndexOf('.'));
            }
            String fileName = UUID.randomUUID() + ext;
            Path target = new File(uploadDir, fileName).toPath();
            Files.copy(imagePart.getInputStream(), target, StandardCopyOption.REPLACE_EXISTING);
            savedRelativePath = "uploads/" + fileName;
        }

        User user = userService.updateUserProfile(id, fullName, phone, savedRelativePath);
        req.setAttribute("user", user);
        req.getRequestDispatcher("/success.jsp").forward(req, resp);
    }
}


