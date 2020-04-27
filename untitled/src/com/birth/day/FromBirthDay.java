package com.birth.day;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;


public class FromBirthDay {

    public static void main(String[] agrs) throws ParseException{
        //使用多态创建一个Calendar子类对象
        Calendar c = Calendar.getInstance();
        System.out.println(c);
        //打印日历中的年份
        System.out.println(c.get(Calendar.YEAR));
        //设置日历中的值
        c.set(Calendar.YEAR,2101);
        c.set(2101,12,21);
        System.out.println(c.get(Calendar.YEAR));
        c.add(Calendar.YEAR,2);
        System.out.println(c.get(Calendar.YEAR));
        //把日历转化为日期格式
        System.out.println(c.getTime());
        //定义源数组和目标数组
        int[] src = {1,2,3,4,5};
        int[] dest = {6,7,8,9,10};
        System.arraycopy(src,3,dest,2,2);
        System.out.println(Arrays.toString(dest));
        //1。使用Scanner中next获取一个出生日期
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入你的出生日期,格式为yyyy-MM-dd");
        //2.输入生日日期
        String birthdayDateString = sc.next();
        //3.创建一个DateFormat对象，并指定日期时间模式
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        //4.将输入的文本模式日期时间字符串解析为Date日期
        Date birthdayDateTime = sdf.parse(birthdayDateString);
        //5.将Date日期解析为毫秒值
        long birthdaySeconds = birthdayDateTime.getTime();
        //获取当前日期
        long nowDateSeconds = new Date().getTime();
        //将现在的日期解析为毫秒值
        long leftOverSeconds = nowDateSeconds - birthdaySeconds;
        System.out.print(leftOverSeconds/1000/60/60/24);
    }
}
