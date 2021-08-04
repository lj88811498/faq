package com.github.edu.test;

import java.util.Scanner;

public class test2 {

    public static void main (String[] agrs) {

        Scanner s = new Scanner(System.in);
        String s1 = s.nextLine();
        String s2 = s.nextLine();
        String temp = s1.toLowerCase();

        int num = temp.length() - temp.replaceAll(s2.toLowerCase(), "").length();
        System.out.println(num);
    }


}