package com.spring_boot_final.project.service;

import java.util.ArrayList;

import com.spring_boot_final.project.model.PointVO; 
	interface IPointService {
		
	public void insertMemIdPoint(String memId);

	public void insertPoint(String memId);
	
	public void changePoint(String memId, int pointAdd, String pointDescription);
	
	public void updatePoint(String memId, int pointAdd);
	
	public void changePoint2(String memId, int pointUsed, String pointDescription);
	
	public void updatePoint2(String memId, int pointUsed);
	
	public int pointTotalCheck(String memId);
	
	public ArrayList<PointVO> pointView(String memId);
}
