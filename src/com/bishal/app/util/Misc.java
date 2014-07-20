package com.bishal.app.util;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import net.coobird.thumbnailator.Thumbnails;

public class Misc {
	public static String path = "C:\\images";

	public static int startRows = 0;
	public static int maxRows = 10;

	public static Date getCurrentDate() {
		java.util.Date today = new java.util.Date();
		return new java.sql.Date(today.getTime());
	}

	/**
	 * Creates thumbNail of input Image
	 * @param fileName
	 */
	public static void createThumbNail(String fileName) {
		try {
			Thumbnails.of(new File("C:\\images\\" + fileName)).size(160, 160)
					.toFile(new File("C:\\images\\thumbs\\" + fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
