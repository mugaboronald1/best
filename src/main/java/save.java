import static org.junit.Assert.*;

import org.junit.Test;

import dao.UserDAO;
import domain.User;

public class save {

	@Test
	public void test() {
		User user = new User();
		user.setUser_id("200");
		user.setFirst_name("ronald");
		UserDAO dao = new UserDAO();
		dao.addUser(user);
		assertNotNull(user.getUser_id());
	}

}
