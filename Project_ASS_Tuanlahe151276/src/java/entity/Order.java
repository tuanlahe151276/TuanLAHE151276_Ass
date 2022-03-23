/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author anhtu
 */
public class Order {
    int OrderId;
    int  cusID;
    Date orderDate;

    public Order() {
    }

    public Order(int OrderId, int cusID, Date orderDate) {
        this.OrderId = OrderId;
        this.cusID = cusID;
        this.orderDate = orderDate;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int OrderId) {
        this.OrderId = OrderId;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public String toString() {
        return "Order{" + "OrderId=" + OrderId + ", cusID=" + cusID + ", orderDate=" + orderDate + '}';
    }
    
    
    
}
