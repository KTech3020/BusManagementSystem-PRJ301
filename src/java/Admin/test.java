/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Admin;

import java.util.ArrayList;

/**
 *
 * @author HP
 */
public class test {
    public static void main(String[] args){
    ArrayList<Admin> list = AdminDB.listAll();
        for (Admin item : list) {
            System.out.println(item);
        }
    }
}
