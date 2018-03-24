package com.FBmanage.common;


import org.apache.commons.codec.digest.DigestUtils;

/**
 * Created by setsun on 2017/10/26.
 */
public class MD5Util {
    public static String getMD5(String sourrce) {
        return DigestUtils.md5Hex(sourrce);
    }
}
