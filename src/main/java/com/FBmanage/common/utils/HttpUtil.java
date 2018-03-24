package com.FBmanage.common.utils;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by setsun on 2017/10/24.
 */

public class HttpUtil {

    private static final String ENCODING = "UTF-8";

    public static String post(String url, Map<String ,String> paramsMap){
        CloseableHttpClient client = HttpClients.createDefault();
        String responseText = "";
        CloseableHttpResponse response = null;
        try {
            HttpPost method = new HttpPost(url);
            if (paramsMap != null){
                List<NameValuePair> paeamList = new ArrayList<>();
                for (Map.Entry<String , String> param: paramsMap.entrySet()
                     ) {
                    NameValuePair pair = new BasicNameValuePair(param.getKey(),param.getValue());
                    paeamList.add(pair);
                }
                method.setEntity(new UrlEncodedFormEntity(paeamList,ENCODING));
            }
            response = client.execute(method);
            HttpEntity entity = response.getEntity();
            if (entity != null){
                responseText = EntityUtils.toString(entity);
            }

        } catch (Exception e) {
//            log.error("http request failed ",e);
            e.printStackTrace();
        }finally {
            try{
                response.close();
            }catch (Exception e) {
//                log.error("",e);
                e.printStackTrace();
            }
        }
        return responseText;
    }







}
