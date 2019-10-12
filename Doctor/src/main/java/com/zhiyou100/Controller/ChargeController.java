package com.zhiyou100.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhiyou100.Service.ChargeService;
import com.zhiyou100.model.ChargeManager;

@Controller
@RequestMapping("/hospital")
public class ChargeController {
   @Autowired
   private ChargeService chargeservice;
   @RequestMapping("/charge")
   public String find(@RequestParam("")Map<String,String> map,@RequestParam(defaultValue="1")int pageNo,Model model) {
	   PageHelper.startPage(pageNo, 2);
	   List<ChargeManager> charge = chargeservice.findCharge(map);
	   PageInfo<ChargeManager> pageinfo = new PageInfo(charge);
	   model.addAttribute("arge", pageinfo.getList());
	   model.addAttribute("page", pageinfo);
	   return "forward:/hospital/charge.jsp";
   }
   @RequestMapping("/insert")
   public String insert(ChargeManager chma) {
	   chargeservice.insertInfo(chma);
	   return "forward:/hospital/charge";
   }
}
