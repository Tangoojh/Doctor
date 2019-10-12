package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyou100.mapper.ChargeMapper;
import com.zhiyou100.model.ChargeManager;
@Controller
public class ChargeServiceImpl implements ChargeService{
   @Autowired
   private ChargeMapper chargemapper;
	@Override
	public List<ChargeManager> findCharge(Map<String, String> map) {
		 List<ChargeManager> charge = chargemapper.findCharge(map);
		return charge;
	}
	@Override
	public void insertInfo(ChargeManager chma) {
		chargemapper.insertInfo(chma);		
	}

}
