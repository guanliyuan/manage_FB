package com.FBmanage.common;

/**
 * Created by setsun on 2017/12/21.
 * 存放第三方接口的配置信息
 */
public class Constants {


	/**** 配置文件的写法  用哪个都行 这是例子 ****/
	/*public static String msg_uri = ConfigReader.getValue("msgUri", "lvcheng.properties");
	public static String msg_ID = ConfigReader.getValue("msgId", "lvcheng.properties");
	public static String msg_pass = ConfigReader.getValue("msgPsw", "lvcheng.properties");
	public static String msg_expire = ConfigReader.getValue("msgExpire", "lvcheng.properties");*/
	/**** sms ****/

	/**自定义状态码 **/
	//正常
	public static final int RESP_STATUS_OK = 200;
	//没有授权
	public static final int RESP_STATUS_NOAUTH = 401;
	//服务器内部错误
	public static final int RESP_STATUS_INTERNAL_ERROR = 500;
	//找不到地址
	public static final int RESP_STATUS_BADREQUEST = 400;
	/**自定义状态码 **/

	/**  绿信通SMS  start ***/

	public static final String MDSMS_NAME="lcxxznjj ";

	public static final String REQUEST_PASSWORD="lcxxznjj001";

	public static final String REQUEST_REST_URL="http://api.china95059.net:8080";
	/**  绿信通SMS  end ***/


}
