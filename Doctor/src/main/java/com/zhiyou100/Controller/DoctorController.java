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
import com.zhiyou100.Service.DoctorService;
import com.zhiyou100.model.Doctor;

@Controller
@RequestMapping("/doctor")
public class DoctorController {
	 @Autowired
     private DoctorService doctorService;
	 @RequestMapping("/index")
	 public String findAll(@RequestParam()Map<String,String> map ,@RequestParam(defaultValue="1")int pageNo,Model model) {
		 PageHelper.startPage(pageNo, 3);
	 List<Doctor> doctor = doctorService.findAll(map);
	 PageInfo<Doctor> pageinfo = new PageInfo<>(doctor);
	 System.out.println(pageinfo.getTotal());
	  model.addAttribute("doctor", pageinfo.getList());
	  model.addAttribute("page",pageinfo);
		 return "forward:/doctor/index.jsp";
	 }
     @RequestMapping("/look")
     public String lookOne(int id,Model model) {
    	Doctor doc = doctorService.lookOne(id);
    	 model.addAttribute("doc", doc);
    	 return "forward:/doctor/look.jsp";
     }
     @RequestMapping("/add")
     public String add(Doctor doctor) {
    	 doctorService.addInfo(doctor);
    	 return "forward:/doctor/index";
     }
     @RequestMapping("/edit")
     public String find(int id,Model model) {
    	Doctor doctor = doctorService.findDoctorById(id);
    	model.addAttribute("d", doctor);
    	 return "forward:/doctor/edit.jsp";
     }
     @RequestMapping("/update")
     public String update(Doctor doctor) {
    	 System.out.println(doctor);
    	 doctorService.updateInfo(doctor);
    	 return "forward:/doctor/index";
     }
}
