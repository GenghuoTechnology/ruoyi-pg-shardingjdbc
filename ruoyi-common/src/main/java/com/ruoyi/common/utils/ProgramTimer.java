package com.ruoyi.common.utils;

import java.util.Date;

public class ProgramTimer {
    public Date startTime;
    public Date endTime;

    public void start() {
        startTime = new Date();
    }

    public void stop() {
        endTime = new Date();
    }

    public long getElapsedTime() {
        return endTime.getTime() - startTime.getTime();
    }

//    public static void main(String[] args) {
//        ProgramTimer timer = new ProgramTimer();
//        timer.start();
//
//        // 在这里写下你的程序逻辑
//
//        timer.stop();
//        long elapsedTime = timer.getElapsedTime();
//        System.out.println("程序运行时长：" + elapsedTime + "毫秒");
//
//        Date startDate = timer.startTime;
//        Date endDate = timer.endTime;
//        System.out.println("开始时间：" + startDate);
//        System.out.println("结束时间：" + endDate);
//    }
}
