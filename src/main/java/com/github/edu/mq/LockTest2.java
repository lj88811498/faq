package com.github.edu.mq;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class LockTest2 {
 
    private Lock lock = new ReentrantLock();
 
    public void doBussiness() {
        String name = Thread.currentThread().getName();
 
        try {
            System.out.println(name + " 开始获取锁");
            lock.lock();
            System.out.println(name + " 得到锁");
            System.out.println(name + " 开工干活");
            for (int i=0; i<5; i++) {
                Thread.sleep(1000);
                System.out.println(name + " : " + i);
            }
        } catch (InterruptedException e) {
            System.out.println(name + " 被中断");
            System.out.println(name + " 做些别的事情");
        } finally {
            try {
                lock.unlock();
                System.out.println(name + " 释放锁");
            } catch (Exception e) {
                System.out.println(name + " : 没有得到锁的线程运行结束");
            }
        }
    }
 
    public static void main(String[] args) throws InterruptedException {
 
        LockTest2 lockTest = new LockTest2();
 
        Thread t0 = new Thread(
                new Runnable() {
                    public void run() {
                        lockTest.doBussiness();
                    }
                }
                );
 
        Thread t1 = new Thread(
                new Runnable() {
                    public void run() {
                        lockTest.doBussiness();
                    }
                }
                );
 
        // 启动线程t1
        t0.start();
        Thread.sleep(10);
        // 启动线程t2
        t1.start();
        Thread.sleep(2000);
        System.out.println("t1上场！！！！！");
        // 线程t1没有得到锁，中断t1的等待
        t1.interrupt();
    }
}