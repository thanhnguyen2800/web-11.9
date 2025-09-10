package baitap4.service;

import baitap4.model.User;
import baitap4.repository.UserRepo;

public class UserService {
    private final UserRepo userRepo = new UserRepo();

    public User updateUserProfile(Long id, String fullName, String phone, String imagePath) {
        User user = id != null ? userRepo.findById(id) : null;
        if (user == null) {
            user = new User();
        }
        user.setFullName(fullName);
        user.setPhone(phone);
        if (imagePath != null && !imagePath.isEmpty()) {
            user.setImagePath(imagePath);
        }
        return userRepo.save(user);
    }
}


