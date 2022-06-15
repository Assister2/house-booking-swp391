package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Rule;
import com.housebooking.Utils.DBUtils;

public class RuleDAO {

	public List<Rule> list(String roomId) {
		ArrayList<Rule> list;
		list = new ArrayList<Rule>();

		String sql = "Select ru.*\r\n"
				+ " From Rules ru  join Building_Rules br  on ru.ruleId = br.ruleId\r\n"
				+ "	join Room r on br.building_id = r.building_id\r\n"
				+ " Where r.room_id like ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, roomId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Rule rule = new Rule();
				rule.setRuleId(rs.getInt("ruleId"));
				rule.setRuleContent(rs.getString("rule_content"));
				list.add(rule);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
}
