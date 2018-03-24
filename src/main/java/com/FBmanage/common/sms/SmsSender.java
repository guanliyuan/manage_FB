package com.FBmanage.common.sms;

/**
 * Created by setsun on 2017/10/26.
 */
public interface SmsSender {

   void sendSms(String phone, String Code);  //, String params


}
