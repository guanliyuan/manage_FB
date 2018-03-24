package com.FBmanage.common.sms;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.FBmanage.common.Constants;

import com.FBmanage.common.utils.HttpUtil;
import com.FBmanage.common.utils.Message;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by setsun on 2017/10/26.
 */

public class MiaoDiSmsSender implements SmsSender {

    private static String operation = "/sms/send";

    public void sendSms(String phone, String Code){
        try{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            String timestamp = sdf.format(new Date());
//            String sig = MD5Util.getMD5(Constants.MDSMS_ACCOUNT_SID+Constants.REQUEST_AUTH_TOKEN+timestamp);
            String url = Constants.REQUEST_REST_URL+operation;
            String paramsMsg = "您好，您的注册密码是："+Code+"。 \n" +
                    "请牢记密码哦!";   //在一分钟内输入，验证码会在一分钟后过期
            Map<String,String> param = new HashMap<>();
            param.put("name", Constants.MDSMS_NAME);
            param.put("mobile",phone);
            param.put("msg",paramsMsg);
            param.put("timestamp",timestamp);
            param.put("pswd", Constants.REQUEST_PASSWORD);
            param.put("respDataType","json");
            String result = HttpUtil.post(url,param);
            JSONObject jsonObject = JSON.parseObject(result);
            if (jsonObject.getString("msgid").equals("")){
//                log.error("fail to send sms to "+phone+":"+params+":"+result);
                Message.error("fail to send sms to "+phone+":"+Code+":"+result);
                System.out.println("fail to send sms to "+phone+":"+Code+":"+result);
            }

        }catch (Exception e){
//            log.error("fail to send sms to "+phone+":"+params);
            Message.error("fail to send sms to "+phone+":");
            System.out.println("fail to send sms to "+phone+":");
        }

    }

    /**
     * 测试短信接口代码
     * @param args
     */
    public static void main(String[] args) {
        System.out.println("发送短信中");
        SmsSender smsSender = new MiaoDiSmsSender();
        smsSender.sendSms("手机号","验证码");
        System.out.println("发送完毕");

    }



}
