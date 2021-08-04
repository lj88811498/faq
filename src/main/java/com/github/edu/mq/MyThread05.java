package com.github.edu.mq;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class MyThread05 extends Thread{
    public static void test3() throws Exception{
	    final Lock lock = new ReentrantLock();
	    lock.lock();
	    Thread.sleep(1000);
	    Thread t1 = new Thread(new Runnable(){
	        @Override
	        public void run() {
	            a( lock);
	        }
	    });
	    t1.start();
//	    Thread.sleep(1000);

		Thread t2= new Thread(new Runnable(){
			@Override
			public void run() {
				a( lock);
			}
		});
		t2.start();
		t2.interrupt();
//	    Thread.sleep(1000);
	}

	static void a(Lock lock) {
		lock.lock();
		try {
			lock.lockInterruptibly();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(Thread.currentThread().getName()+" interrupted.");
	}

	public static void main(String[] args) throws Exception{
		test3();
	}
}