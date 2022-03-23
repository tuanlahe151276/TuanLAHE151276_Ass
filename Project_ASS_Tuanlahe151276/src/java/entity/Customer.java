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
public class Customer {
    int cusID;
    String cusName;
    String Phone;
    String address;

    public Customer() {
    }

    public Customer(int cusID, String cusName, String Phone, String address) {
        this.cusID = cusID;
        this.cusName = cusName;
        this.Phone = Phone;
        this.address = address;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "cusID=" + cusID + ", cusName=" + cusName + ", Phone=" + Phone + ", address=" + address + '}';
    }
    
}
