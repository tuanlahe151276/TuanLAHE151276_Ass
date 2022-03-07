/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;
import Context.DBContext;
import Entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author anhtu
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
public List<Product> getAllProduct(){
    List<Product> list = new ArrayList<>();
    String query = "select * from product";
    try {
        conn = new DBContext().getConnection();
        ps= conn.prepareStatement(query);
        rs = ps.executeQuery();
        while(rs.next()){
        list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6)));
        }
    } catch (Exception e) {
    }
    return list;
}
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        for (Product product : list) {
            System.out.println(product);
        }
    }
}
