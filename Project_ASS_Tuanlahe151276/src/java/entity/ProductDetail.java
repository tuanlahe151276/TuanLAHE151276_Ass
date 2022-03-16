/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author anhtu
 */
public class ProductDetail {
    
    private int id;
    private String name;
    private String image;
    private double price;
    private int amount;

    public ProductDetail() {
    }

    public ProductDetail(int id, String name, String image, double price, int amount) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "ProductDetail{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", amount=" + amount + '}';
    }
    
    
}
