package com.github.edu.test;


import java.util.Scanner;

public class test {



    public static Integer getLength(String str) {
        String[] s = null;
        if (!"".equals(str)) {
            s = str.split(" ");
        } else {
            return 0;
        }
        if (s != null) {
            String temp = s[s.length - 1];
//            System.out.println(temp);
            if (!"".equals(temp)){
                return temp.length();
            }

        }

        return 0;
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.println(getLength(s.nextLine()));


    }


}
