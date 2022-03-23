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
public class NewClass {
    int cusID;
    int pID;
    double totalMoney;
    Date date;

    public NewClass() {
    }

    public NewClass(int cusID, int pID, double totalMoney, Date date) {
        this.cusID = cusID;
        this.pID = pID;
        this.totalMoney = totalMoney;
        this.date = date;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "NewClass{" + "cusID=" + cusID + ", pID=" + pID + ", totalMoney=" + totalMoney + ", date=" + date + '}';
    }
    
    
}
