package com.revature.poms.dao;

import com.revature.poms.model.User;

public interface UserDao {

	User findUser(String userId, String userPass);

	User findUser(String userId);

}