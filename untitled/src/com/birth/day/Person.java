package com.birth.day;

public class Person {
    private int birthday;
    private int live_day;
    private int age_day;

    public Person(int birthday, int live_day, int age_day) {
        this.birthday = birthday;
        this.live_day = live_day;
        this.age_day = age_day;
    }

    public int getBirthday() {
        return birthday;
    }

    public void setBirthday(int birthday) {
        this.birthday = birthday;
    }

    public int getLive_day() {
        return live_day;
    }

    public void setLive_day(int live_day) {
        this.live_day = live_day;
    }

    public int getAge_day() {
        return age_day;
    }

    public void setAge_day(int age_day) {
        this.age_day = age_day;
    }
}
