package com.spring.shop.service;

import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

@Service
public class HomeService {

    public int method() {
        Random random = new Random();
        int massage = random.nextInt(100);
        return massage;
    }
    public String date(){
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
        Date date = new Date();
        return dateFormat.format(date);
    }

}
