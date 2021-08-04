package com.github.edu.mq;

public class ThreadTest implements Runnable {
    volatile int step = 1;

    public synchronized void run() {
        for (int i = 0; i < 10; i++) {
            System.out.println(" " + i);
        }
    }

    public static void main(String[] args) {
        Runnable r1 = new ThreadTest();
        Runnable r2 = new ThreadTest();
        Thread t1 = new Thread(r1);
        Thread t2 = new Thread(r2);
        t1.start();
        t2.start();
    }
}