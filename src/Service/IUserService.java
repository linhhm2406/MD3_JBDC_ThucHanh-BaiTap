package Service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    List<User> showAllList();
    User findById(int id);
    void update(User user);
    void delete(int id);
    void add(User user);
    List<User> findByCountry(String country);
}
