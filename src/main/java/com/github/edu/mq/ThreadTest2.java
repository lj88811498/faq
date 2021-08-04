package com.github.edu.mq;

public class ThreadTest2 extends Thread {


    public synchronized void run() {
        for (int i = 0; i < 10; i++) {
            System.out.println(" " + i);
        }
    }

    public static void main(String[] args) {

        Thread t1 = new ThreadTest2();
        Thread t2 = new ThreadTest2();
        t1.start();
        t2.start();
    }
}