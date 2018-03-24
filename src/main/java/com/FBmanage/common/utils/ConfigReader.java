package com.FBmanage.common.utils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

/**
 * Created by setsun on 2017/12/22
 * 配置文件获取类
 * 
 */
public class ConfigReader {
	public ConfigReader() {
	}

	private static Properties props = new Properties();

	/**
	 * 获取配置文件的值  第三方的配置信息 建议写在properties配置文件里 方便修改维护
	 * 	ConfigReader.getValue("msgUri", "lvcheng.properties");
	 * @param key
	 * @param properties
	 * @return
	 */
	public static String getValue(String key, String properties) {
		try {
			props.load(Thread.currentThread().getContextClassLoader().getResourceAsStream(properties));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return props.getProperty(key);
	}

}