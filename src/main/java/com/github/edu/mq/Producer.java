//package com.github.edu.mq;
//
//import com.alibaba.fastjson.JSON;
//import org.apache.rocketmq.client.exception.MQClientException;
//import org.apache.rocketmq.client.producer.DefaultMQProducer;
//import org.apache.rocketmq.client.producer.SendResult;
//import org.apache.rocketmq.common.message.Message;
//import org.apache.rocketmq.remoting.common.RemotingHelper;
//
//import java.util.Random;
//
//public class Producer {
//    public static void main(String[] args) throws MQClientException, InterruptedException {
//
//        //声明并初始化一个producer
//        //需要一个producer group名字作为构造方法的参数，这里为producer1
//        DefaultMQProducer producer = new DefaultMQProducer("producer1");
//
//        //设置NameServer地址,此处应改为实际NameServer地址，多个地址之间用；分隔
//        //NameServer的地址必须有，但是也可以通过环境变量的方式设置，不一定非得写死在代码里
//        producer.setNamesrvAddr("localhost:9876");
//
//        //调用start()方法启动一个producer实例
//        producer.start();
//
//        String[] names = new String[] {"张三", "李四", "王五", "赵六", "田七", "王八"};
//        //发送n条消息到Topic为TopicTest，tag为TagA，消息内容为“Hello RocketMQ”拼接上i的值
//        for (int i = 0; i < names.length; i++) {
//            try {
//                Random r =  new Random();
//                Stu stu = new Stu();
//                stu.setName(names[i]);
//                stu.setChinese(r.nextInt(100));
//                stu.setMath(r.nextInt(100));
//                stu.setEnglish(r.nextInt(100));
//
//                Message msg = new Message("BenchmarkTest1",// topic
//                        "TagA",// tag
//                        JSON.toJSONString(stu).getBytes(RemotingHelper.DEFAULT_CHARSET)
//                        //(stu.toString()).getBytes(RemotingHelper.DEFAULT_CHARSET)// body
//                );
//
//                //调用producer的send()方法发送消息
//                //这里调用的是同步的方式，所以会有返回结果
//                SendResult sendResult = producer.send(msg);
//
//                //打印返回结果，可以看到消息发送的状态以及一些相关信息
//                System.out.println(sendResult);
//            } catch (Exception e) {
//                e.printStackTrace();
//                Thread.sleep(1000);
//            }
//        }
//
//        //发送完消息之后，调用shutdown()方法关闭producer
//        producer.shutdown();
//    }
//}