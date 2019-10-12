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
import com.zhiyou100.Service.DispensingService;
import com.zhiyou100.model.Dispensing;

@Controller
@RequestMapping("/hospital")
public class DispensingController {
   @Autowired
   private DispensingService dispensingservice;
   @RequestMapping("/dispensing")
   public String find(@RequestParam("")Map<String,String> map,
   @RequestParam(defaultValue="1")int pageNo,Model model) {
	   PageHelper.startPage(pageNo, 2);
	   List<Dispensing> disp = dispensingservice.findAll(map);
	   PageInfo<Dispensing> pageinfo = new PageInfo(disp);
	   model.addAttribute("dp", pageinfo.getList());
	   model.addAttribute("page",pageinfo);
	   return "forward:/hospital/dispensing.jsp";
   }
   @RequestMapping("/loo")
   public String look(String medicalRecord,Model model) {
	   Dispensing sing = dispensingservice.lookOne(medicalRecord);
	   model.addAttribute("b", sing);
	   return "forward:/hospital/dispensing-look.jsp";
   }
}
