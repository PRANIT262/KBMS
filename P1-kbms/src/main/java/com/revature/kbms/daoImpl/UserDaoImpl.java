package com.revature.poms.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.revature.poms.constant.Constant;
import com.revature.poms.dao.UserDao;
import com.revature.poms.model.User;
import com.revature.poms.util.ConnectionFactory;
import com.revature.poms.util.DbUtil;

public class UserDaoImpl implements UserDao {

	private Connection connection;
	private PreparedStatement preparedStatment;

	public UserDaoImpl() {
	}

	@Override
	public User findUser(String userId, String userPass) {

		ResultSet rs = null;
		User found = null;

		try {
			connection = ConnectionFactory.getConnection();
			preparedStatment = connection.prepareStatement(Constant.SELECT_USER);
			preparedStatment.setString(1, userId.toUpperCase());
			preparedStatment.setString(2, userPass);
			rs = preparedStatment.executeQuery();
			if (rs.next()) {
				found = new User(rs.getString(1), rs.getString(2));
			}

		} catch (SQLException e) {
			System.out.println("SQLException in get() method");
			e.printStackTrace();
		} finally {
			DbUtil.close(rs);
			DbUtil.close(preparedStatment);
			DbUtil.close(connection);
		}
		return found;
	}

	@Override
	public User findUser(String userId) {

		ResultSet rs = null;
		User found = null;

		try {
			connection = ConnectionFactory.getConnection();
			preparedStatment = connection.prepareStatement(Constant.SELECT_USER_BY_ID);
			preparedStatment.setString(1, userId.toUpperCase());
			rs = preparedStatment.executeQuery();
			if (rs.next()) {
				found = new User(rs.getString(1), rs.getString(2));
			}

		} catch (SQLException e) {
			System.out.println("SQLException in get() method");
			e.printStackTrace();
		} finally {
			DbUtil.close(rs);
			DbUtil.close(preparedStatment);
			DbUtil.close(connection);
		}
		return found;
	}

}