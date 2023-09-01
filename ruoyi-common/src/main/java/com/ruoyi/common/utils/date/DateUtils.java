package com.ruoyi.common.utils.date;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class DateUtils {
//  调用示例  String day = "2023-07-24";
public static class TimeSlot {
    private String startTime;
    private String endTime;

    public TimeSlot(String startTime, String endTime) {
        this.startTime = startTime;
        this.endTime = endTime;
    }

    public String getStartTime() {
        return startTime;
    }

    public String getEndTime() {
        return endTime;
    }
}

    public static List<TimeSlot> splitDayInto24Hours(String day) {
        List<TimeSlot> timeSlots = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // 将输入日期字符串转换为Date对象
            Date date = dateFormat.parse(day);

            // 初始化日历对象并设置为输入日期的开始时间
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);

            // 生成24小时时间段
            for (int hour = 0; hour < 24; hour++) {
                String startTime = String.format("%s %02d:00:00", day, hour);
                String endTime = String.format("%s %02d:59:59", day, hour);

                timeSlots.add(new TimeSlot(startTime, endTime));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return timeSlots;
    }
    public static List<String> getAllDatesInYear(int year) {
        List<String> dateList = new ArrayList<>();
        LocalDate startDate = LocalDate.of(year, 1, 1);
        LocalDate endDate = LocalDate.of(year, 12, 31);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        while (!startDate.isAfter(endDate)) {
            dateList.add(startDate.format(formatter));
            startDate = startDate.plusDays(1);
        }

        return dateList;
    }
    public static List<TimeSlot> splitDayInto24Hours15min(String day) throws ParseException {
        List<TimeSlot> timeSlots = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // 将输入日期字符串转换为Date对象
            Date date = dateFormat.parse(day);

            // 初始化日历对象并设置为输入日期的开始时间
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);

            SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            // 生成24小时时间段，每15分钟一次
            for (int hour = 0; hour < 24; hour++) {
                for (int minute = 0; minute < 60; minute += 15) {
                    String dateTimeStart = String.format("%s %02d:%02d:00", day, hour, minute);
                    String dateTimeEnd = String.format("%s %02d:%02d:59", day, hour, minute + 14);
                    timeSlots.add(new TimeSlot(dateTimeStart, dateTimeEnd));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return timeSlots;
    }

    public static List<TimeSlot> splitWeekIntoDays(String startDate) throws ParseException {
        List<TimeSlot> timeSlots = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // 将输入日期字符串转换为Date对象
            Date date = dateFormat.parse(startDate);

            // 初始化日历对象并设置为输入日期
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);

            SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            // 生成每天的时间段，每天一次
            for (int dayOfWeek = 0; dayOfWeek < 7; dayOfWeek++) { // Iterate through each day of the week
                // Calculate the current day
                calendar.set(Calendar.DAY_OF_WEEK, calendar.getFirstDayOfWeek() + dayOfWeek);
                String currentDay = dateFormat.format(calendar.getTime());

                // Set start time at 00:00:00 and end time at 23:59:59 for each day
                String dateTimeStart = currentDay + " 00:00:00";
                String dateTimeEnd = currentDay + " 23:59:59";
                timeSlots.add(new TimeSlot(dateTimeStart, dateTimeEnd));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return timeSlots;
    }
    public static List<TimeSlot> splitLastWeekIntoDays(String startDate) throws ParseException {
        List<TimeSlot> timeSlots = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // 将输入日期字符串转换为Date对象
            Date date = dateFormat.parse(startDate);

            // 初始化日历对象并设置为输入日期的前一周
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(Calendar.WEEK_OF_YEAR, -1);

            SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            // 生成上周每天的时间段
            for (int dayOfWeek = 0; dayOfWeek < 7; dayOfWeek++) { // Iterate through each day of the week
                // Calculate the current day
                calendar.set(Calendar.DAY_OF_WEEK, calendar.getFirstDayOfWeek() + dayOfWeek);
                String currentDay = dateFormat.format(calendar.getTime());

                // Set start time at 00:00:00 and end time at 23:59:59 for each day
                String dateTimeStart = currentDay + " 00:00:00";
                String dateTimeEnd = currentDay + " 23:59:59";
                timeSlots.add(new TimeSlot(dateTimeStart, dateTimeEnd));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return timeSlots;
    }
    public static List<TimeSlot> splitCurrentMonthIntoDays(String startDate) throws ParseException {
        List<TimeSlot> timeSlots = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // 将输入日期字符串转换为Date对象
            Date date = dateFormat.parse(startDate);

            // 初始化日历对象并设置为输入日期所在月份的第一天
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.set(Calendar.DAY_OF_MONTH, 1);

            SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            // 获取当前月的最大天数
            int maxDayOfMonth = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);

            // 生成本月每天的时间段
            for (int dayOfMonth = 1; dayOfMonth <= maxDayOfMonth; dayOfMonth++) {
                String currentDay = dateFormat.format(calendar.getTime());

                // Set start time at 00:00:00 and end time at 23:59:59 for each day
                String dateTimeStart = currentDay + " 00:00:00";
                String dateTimeEnd = currentDay + " 23:59:59";
                timeSlots.add(new TimeSlot(dateTimeStart, dateTimeEnd));

                // Move to the next day
                calendar.add(Calendar.DAY_OF_MONTH, 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return timeSlots;
    }

    public static List<TimeSlot> splitLastMonthIntoDays(String startDate) throws ParseException {
        List<TimeSlot> timeSlots = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // 将输入日期字符串转换为Date对象
            Date date = dateFormat.parse(startDate);

            // 初始化日历对象并设置为输入日期所在月份的第一天
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(Calendar.MONTH, -1);
            calendar.set(Calendar.DAY_OF_MONTH, 1);

            SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            // 获取上月的最大天数
            int maxDayOfLastMonth = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);

            // 生成上月每天的时间段
            for (int dayOfMonth = 1; dayOfMonth <= maxDayOfLastMonth; dayOfMonth++) {
                String currentDay = dateFormat.format(calendar.getTime());

                // Set start time at 00:00:00 and end time at 23:59:59 for each day
                String dateTimeStart = currentDay + " 00:00:00";
                String dateTimeEnd = currentDay + " 23:59:59";
                timeSlots.add(new TimeSlot(dateTimeStart, dateTimeEnd));

                // Move to the next day
                calendar.add(Calendar.DAY_OF_MONTH, 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return timeSlots;
    }
    public static List<TimeSlot> splitCurrentYearIntoMonths(String startDate) throws ParseException {
        List<TimeSlot> timeSlots = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // 将输入日期字符串转换为Date对象
            Date date = dateFormat.parse(startDate);

            // 初始化日历对象并设置为输入日期所在年份的第一天
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.set(Calendar.MONTH, Calendar.JANUARY);
            calendar.set(Calendar.DAY_OF_MONTH, 1);

            SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            // 生成本年每个月的时间段
            for (int month = Calendar.JANUARY; month <= Calendar.DECEMBER; month++) {
                String currentMonth = dateFormat.format(calendar.getTime());

                // Get the last day of the current month
                int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
                calendar.set(Calendar.DAY_OF_MONTH, lastDay);

                String lastDayOfMonth = dateFormat.format(calendar.getTime());

                // Set start time at 00:00:00 and end time at 23:59:59 for each month
                String dateTimeStart = currentMonth + " 00:00:00";
                String dateTimeEnd = lastDayOfMonth + " 23:59:59";
                timeSlots.add(new TimeSlot(dateTimeStart, dateTimeEnd));

                // Move to the next month
                calendar.add(Calendar.MONTH, 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return timeSlots;
    }
    public static List<TimeSlot> splitLastYearIntoMonths(String startDate) throws ParseException {
        List<TimeSlot> timeSlots = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // 将输入日期字符串转换为Date对象
            Date date = dateFormat.parse(startDate);

            // 初始化日历对象并设置为输入日期所在年份的第一天
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(Calendar.YEAR, -1);
            calendar.set(Calendar.MONTH, Calendar.JANUARY);
            calendar.set(Calendar.DAY_OF_MONTH, 1);

            SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            // 生成上年每个月的时间段
            for (int month = Calendar.JANUARY; month <= Calendar.DECEMBER; month++) {
                String currentMonth = dateFormat.format(calendar.getTime());

                // Get the last day of the current month
                int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
                calendar.set(Calendar.DAY_OF_MONTH, lastDay);

                String lastDayOfMonth = dateFormat.format(calendar.getTime());

                // Set start time at 00:00:00 and end time at 23:59:59 for each month
                String dateTimeStart = currentMonth + " 00:00:00";
                String dateTimeEnd = lastDayOfMonth + " 23:59:59";
                timeSlots.add(new TimeSlot(dateTimeStart, dateTimeEnd));

                // Move to the next month
                calendar.add(Calendar.MONTH, 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return timeSlots;
    }
    // 方法一：获取上个月的时间范围
    public static LocalDateTime[] getLastMonthRange(LocalDateTime date) {
        LocalDateTime firstDayOfLastMonth = date.minusMonths(1).withDayOfMonth(1).withHour(0).withMinute(0).withSecond(0);
        LocalDateTime lastDayOfLastMonth = date.withDayOfMonth(1).minusDays(1).withHour(23).withMinute(59).withSecond(59);

        return new LocalDateTime[] { firstDayOfLastMonth, lastDayOfLastMonth };
    }

    // 方法二：获取上周的时间范围
    public static LocalDateTime[] getLastWeekRange(LocalDateTime date) {
        LocalDate lastMonday = date.toLocalDate().minusWeeks(1).with(TemporalAdjusters.previous(DayOfWeek.MONDAY));
        LocalDateTime firstDayOfLastWeek = lastMonday.atTime(LocalTime.MIN);
        LocalDateTime lastDayOfLastWeek = lastMonday.plusDays(6).atTime(LocalTime.MAX);

        return new LocalDateTime[] { firstDayOfLastWeek, lastDayOfLastWeek };
    }

    // 方法三：获取昨天的时间范围
    public static LocalDateTime[] getYesterdayRange(LocalDateTime date) {
        LocalDateTime yesterdayStart = date.minusDays(1).withHour(0).withMinute(0).withSecond(0);
        LocalDateTime yesterdayEnd = date.minusDays(1).withHour(23).withMinute(59).withSecond(59);

        return new LocalDateTime[] { yesterdayStart, yesterdayEnd };
    }
    // 获取指定时间点当天的时间范围
    public static LocalDateTime[] getDayRange(LocalDateTime date) {
        LocalDateTime dayStart = LocalDateTime.of(date.toLocalDate(), LocalTime.MIN);
        LocalDateTime dayEnd = LocalDateTime.of(date.toLocalDate(), LocalTime.MAX);

        return new LocalDateTime[] { dayStart, dayEnd };
    }

    public static void main(String[] args) {

    }
}






