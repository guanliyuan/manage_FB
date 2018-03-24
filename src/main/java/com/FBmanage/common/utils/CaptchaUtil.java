package com.FBmanage.common.utils;

import java.awt.Color;
import java.io.IOException;
import java.io.OutputStream;

import com.FBmanage.common.web.captcha.CurvesRippleFilterFactory;
import com.FBmanage.common.web.captcha.EncoderHelper;
import com.FBmanage.common.web.captcha.SingleColorFactory;
import com.FBmanage.common.web.captcha.service.ConfigurableCaptchaService;

public class CaptchaUtil {
	public static String getChallangeAndWriteImage(OutputStream os)
			throws IOException {
		ConfigurableCaptchaService cs = new ConfigurableCaptchaService();
		cs.setColorFactory(new SingleColorFactory(new Color(25, 60, 170)));
		cs.setFilterFactory(new CurvesRippleFilterFactory(cs.getColorFactory()));
		String s = EncoderHelper.getChallangeAndWriteImage(cs, "png", os);
		return s;
	}
}
