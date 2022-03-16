/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import entity.ProductDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.DispatcherType;

/**
 *
 * @author trinh
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
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
    public List<Product> getAllProductByCategory(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "Select * from Product\n" +
        "where cateID = ?";
        try {
            conn = new DBContext().getConnection();
           
            ps = conn.prepareStatement(query);
             ps.setString(1, cid);//mo ket noi voi sql
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
    public Product getAllProductByID(String id) {
        String query = "Select * from Product\n" +
        "where ID = ?";
        try {
            conn = new DBContext().getConnection();
           
            ps = conn.prepareStatement(query);
             ps.setString(1, id);//mo ket noi voi sql
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
       return null; 
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getAllProductByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select *From product\n" +
        "where [name] like ?";
        try {
            conn = new DBContext().getConnection();
           
            ps = conn.prepareStatement(query);
             ps.setString(1, "%"+ txtSearch+"%");//mo ket noi voi sql
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
    
    public Product getLast() {
        String query = "select top 1 * from product\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
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
    public Account login(String user, String pass){
    
        String query ="select* from Account\n" +
"where [USER] = ? "
                + "and pass = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery(); 
            while(rs.next()){
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
    public Account CheckExist(String user){
    
        String query ="select* from Account\n" +
"where [USER] = ? "
              ;
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery(); 
            while(rs.next()){
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
    public  void signup(String user, String pass){
    String query = "insert into Account\n" +
"values(?,?,0,0)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
           
        } catch (Exception e) {
        }
    
    }
    public List<Product> getAllProductBySell_id(int id) {
        List<Product> list = new ArrayList<>();
        String query = "Select * from Product\n" +
        "where sell_ID = ?";
        try {
            conn = new DBContext().getConnection();
           
            ps = conn.prepareStatement(query);
             ps.setInt(1, id);//mo ket noi voi sql
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
    
    public void deleteProduct(String pid){
    String query ="delete from Product\n" +
        "where id = ?";
        try {
             conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
           
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void InsertProduct(String name , String image, String price, String title, String description, String category,int sid ){
        String query ="insert [dbo].[product]\n"
                + "([name],[image],[price],[title],[description],[cateID],[sell_ID])\n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
           
            ps = conn.prepareStatement(query);
             ps.setString(1, name);
             ps.setString(2, image);
             ps.setString(3, price);
             ps.setString(4, title);
             ps.setString(5, description);
             ps.setString(6, category);
             ps.setInt(7, sid);
            rs = ps.executeQuery();
            
            
        } catch (Exception e) {
        }
    
    
    }
    public int InsertAcount(String user , String pass, String isSell, String isAdmin){
        String query ="insert [dbo].[Account]\n"
                + "([user],[pass],[isSell],[isAdmin])\n"
                + "VALUES(?,?,?,?)";
        int a=0;
        try {
            conn = new DBContext().getConnection();
           
            ps = conn.prepareStatement(query);
             ps.setString(1, user);
             ps.setString(2, pass);
             ps.setString(3, isSell);
             ps.setString(4, isAdmin);
            a=ps.executeUpdate();
            
          
            
        } catch (Exception e) {
        }
    return a;
  
    }
    public   List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from Account";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                rs.getString(3),
                rs.getInt(4), 
                rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void EditProduct(String name , String image, String price, String title, String description, String category,String pid ){
        String query ="UPDATE product\n"
                + "set [name]=?,\n"
                + "[image]=?,\n"
                + "[price]=?,\n"
                + "[title]=?,\n"
                + "[description]=?,\n"
                + "[cateID]=?\n"
                + "where id=?\n";
               
        try {
            conn = new DBContext().getConnection();
           
            ps = conn.prepareStatement(query);
             ps.setString(1, name);
             ps.setString(2, image);
             ps.setString(3, price);
             ps.setString(4, title);
             ps.setString(5, description);
             ps.setString(6, category);
             ps.setString(7, pid);
            rs = ps.executeQuery();
            
            
        } catch (Exception e) {
        }
    
    
    }
    public List<ProductDetail> getAll() {
        String query = "select * from product";
        List<ProductDetail> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductDetail(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                rs.getInt(5))
                );
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public ProductDetail getProduct(String txt) {
        String query = "select * from product where id = ?";
        List<Product> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, txt);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductDetail(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
       
        List<Account> list = dao.getAllAccount();
        

        for (Account o : list) {
            System.out.println(o);
        }
    }

}
