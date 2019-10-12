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
import com.zhiyou100.Service.HospitalService;
import com.zhiyou100.model.HospitalInfor;

@Controller
@RequestMapping("/hospital")
public class HospitalController {
	 @Autowired
     private HospitalService hospitalService;
     @RequestMapping("/index")
     public String find(@RequestParam("")Map<String,String> map,@RequestParam(defaultValue="1") int pageNo,Model model) {
    	 PageHelper.startPage(pageNo, 2);
    	 List<HospitalInfor> hospital = hospitalService.findAll(map);
    	 PageInfo<HospitalInfor> pageinfo = new PageInfo(hospital);
    	 model.addAttribute("hr", pageinfo.getList());
    	 model.addAttribute("page", pageinfo);
    	 return "forward:/hospital/index.jsp";
     }
     @RequestMapping("/look")
     public String look(String medicalRecord,Model model) {
    	 HospitalInfor hosp = hospitalService.findOne(medicalRecord);
    	 model.addAttribute("k", hosp);
    	 return "forward:/hospital/look.jsp";
     }
     @RequestMapping("/add")
     public String add(HospitalInfor hospitalInfor) {
    	 hospitalService.addInfo(hospitalInfor);
    	 return "forward:/hospital/index";
     }
     @RequestMapping("/delete")
     public String delete(String medicalRecord) {
    	 hospitalService.deleteOne(medicalRecord);
    	 return "forward:/hospital/index";
     }
     @RequestMapping("/check")
     public String check(String medicalRecord,Model model) {
    	 HospitalInfor hospt = hospitalService.checkOne(medicalRecord);
    	 model.addAttribute("p", hospt);
    	 return "forward:/hospital/edit.jsp";
     }
     @RequestMapping("/update")
     public String update(HospitalInfor infor) {
    	 hospitalService.updateInfo(infor);
    	 return "forward:/hospital/index";
     }
}
