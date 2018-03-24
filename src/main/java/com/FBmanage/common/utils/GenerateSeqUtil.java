package com.FBmanage.common.utils;

import java.text.DecimalFormat;
import java.text.FieldPosition;
import java.text.Format;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;

/**
 * 生成唯一序列号		短信验证码
 * @author caoxu
 *
 */
public class GenerateSeqUtil {
	
	// 开始位
	private static final FieldPosition POSITION = new FieldPosition(0);
	
	// 时间格式化
	private final static Format dft = new SimpleDateFormat("yyyyMMddHHmm");
	
	// 四位数格式
	private final static NumberFormat nft = new DecimalFormat("0000");
	
	// 累加变量
	private static int seq = 0;
	
	// 最大值
	private static final int MAX = 9999;
	
	/**
	 * 获得指定长度的 随机码
	 * @param len	短信验证码
	 * @return
	 */
	public static String getRandomCode(int len) {
		StringBuffer rntStr = new StringBuffer();
		Random r = new Random();
		for (int i = 0; i < len; i++) {
			rntStr.append(r.nextInt(10));
		}
		return rntStr.toString();
	}

	/**
	 * 生成时间序列号（流水号）
	 * @return
	 */
	public static synchronized String generateSeqNo() {
		Calendar rightNow = Calendar.getInstance();
		StringBuffer buffer = new StringBuffer();
		dft.format(rightNow.getTime(), buffer, POSITION);
		nft.format(seq, buffer, POSITION);
		if (seq == MAX) {
			seq = 0;
		} else {
			seq++;
		}
		return buffer.toString();
	}
	
	/**
	 * 生成前置随机码
	 * 确保整体唯一且没有规律性
	 * @return
	 */
	public static synchronized String generatePreRadomCode() {
		Calendar rightNow = Calendar.getInstance();
		StringBuffer buffer = new StringBuffer();
		dft.format(rightNow.getTime(), buffer, POSITION);
		nft.format(seq, buffer, POSITION);
		if (seq == MAX) {
			seq = 0;
		} else {
			seq++;
		}
		return getRandomCode(4) + buffer.toString();
	}
	
	/**
	 * 生成后置随机码
	 * 确保整体唯一且没有规律性
	 * @return
	 */
	public static synchronized String generateEndRadomCode() {
		Calendar rightNow = Calendar.getInstance();
		StringBuffer buffer = new StringBuffer();
		dft.format(rightNow.getTime(), buffer, POSITION);
		nft.format(seq, buffer, POSITION);
		if (seq == MAX) {
			seq = 0;
		} else {
			seq++;
		}
		return buffer.toString() + getRandomCode(4);
	}
	
	/**
	 * 生成后置随机码
	 * 确保整体唯一且没有规律性
	 * @return
	 */
	public static synchronized String generateEndRadomCode(int length) {
		Calendar rightNow = Calendar.getInstance();
		StringBuffer buffer = new StringBuffer();
		dft.format(rightNow.getTime(), buffer, POSITION);
		nft.format(seq, buffer, POSITION);
		if (seq == MAX) {
			seq = 0;
		} else {
			seq++;
		}
		return buffer.toString() + getRandomCode(4);
	}
	
	public static void main(String[] args) {
		System.out.println(GenerateSeqUtil.getRandomCode(4));
		Long s = System.currentTimeMillis();
		System.out.println(GenerateSeqUtil.generatePreRadomCode());
		System.out.println("耗时：" + (System.currentTimeMillis() - s) + "毫秒");
		s = System.currentTimeMillis();
		System.out.println(GenerateSeqUtil.generateEndRadomCode());
		System.out.println("耗时：" + (System.currentTimeMillis() - s) + "毫秒");
	}
	
}
