/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Account;
import Entity.Category;
import Entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javafx.print.Printer;

/**
 *
 * @author Quang Vinh
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProDuct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getNewest() {
        String query = "select top 1 * from Product\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProDuctByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where cateID = ?";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProDuctBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where sellerID = ?";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteProduct(String pid) {
        String query = "delete from Product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Product getProDuctByID(String id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where [name] like ?";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account login(String username, String password) {
        String query = "select * from Account\n"
                + "where [username] = ?\n"
                + "and [password] = ?";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String username) {
        String query = "select * from Account\n"
                + "where [username] = ?";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int indexSignup() {
        String query = "select top 1 * from Account\n"
                + "order by userid desc";
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            return rs.getInt(1);
        } catch (Exception e) {
        }
        return 0;
    }

    public void signup(String username, String password) {
        String query = "insert into Account\n"
                + "values(?,?,?,0,0)";
        int index = indexSignup();
        try {
            conn = new DBContext().getConnection();//open connection with SQL server
            ps = conn.prepareStatement(query);
            ps.setInt(1, index + 1);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProDuct();
        List<Category> listC = dao.getAllCategory();
        for (Category o : listC) {
            System.out.println(o);
        }
    }
}
