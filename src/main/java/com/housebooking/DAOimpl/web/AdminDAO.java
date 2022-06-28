/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.housebooking.DAOimpl.web;

import com.housebooking.Model.Room;
import com.housebooking.Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ACER
 */
public class AdminDAO {

    public List<Room> getAllRoom() {
        ArrayList<Room> list;
        list = new ArrayList<Room>();

        String sql = "select * from Room";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Room room = new Room();
                fillDataInRoom(rs, room);
                list.add(room);
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return list;
    }

    private void fillDataInRoom(ResultSet rs, Room room) throws SQLException {
        room.setRoomId(rs.getString("room_id"));
        room.setRoomName(rs.getNString("room_name"));
        room.setRoomDesc(rs.getNString("room_desc"));
        room.setRoomStatus(rs.getNString("room_status"));
        room.setPrice(rs.getFloat("room_price"));
        room.setTypeId(rs.getString("type_id"));

    }

    public List<Room> getRoomByStatus(String status) {
        List<Room> list = new ArrayList<>();
        String query = "select * from Room \n"
                + "where room_status like '?'\n"
                + "";
        try {
            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(query);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Room room = new Room();
                fillDataInRoom(rs, room);
                list.add(room);
            }

        } catch (Exception e) {
        }
        return null;
    }

    public boolean setRoomStatusByID(String rID) {
        String query = "UPDATE Room\n"
                + " SET room_status = 'active'\n"
                + " WHERE room_id like ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, rID);
            ps.executeUpdate();
        } catch (Exception e) {
            return false;
        }
        return true;

    }
    public boolean setRoomHiddenStatusByID(String rID) {
        String query = "UPDATE Room\n"
                + " SET room_status = 'hidden'\n"
                + " WHERE room_id like ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, rID);
            ps.executeUpdate();
        } catch (Exception e) {
            return false;
        }
        return true;

    }

}
