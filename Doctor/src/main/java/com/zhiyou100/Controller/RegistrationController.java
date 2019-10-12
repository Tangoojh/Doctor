package com.zhiyou100.Controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhiyou100.Service.RegistrationService;
import com.zhiyou100.model.RegistrationInfor;

@Controller
@RequestMapping("/registration")
public class RegistrationController {
	@Autowired
	private RegistrationService registrationService;
	@RequestMapping("/index")
	public String find(String medicalrecord,String doctorname,String sectionname,String time,String time2,@RequestParam(defaultValue="1")int PageNo,Model model) {
		Map<String,Object> map = new HashMap<>();
		map.put("medicalrecord", medicalrecord);
		map.put("doctorname", doctorname);
		map.put("sectionname", sectionname);
		map.put("time", time);
		map.put("time2", time2);
		int total = registrationService.count();
		System.out.println(total);
		 PageHelper.startPage(PageNo, 3);
	List<RegistrationInfor>	listr = registrationService.findThree(map);
	System.out.println(listr);
	    PageInfo<RegistrationInfor> pageinfo = new PageInfo<>(listr);
	    model.addAttribute("plistr", pageinfo.getList());
	    model.addAttribute("page", pageinfo);
	    model.addAttribute("total", total);
		return "forward:/registration/index.jsp";
	}
	@RequestMapping("/look")
	public String look(String str,Model model) {
		System.out.println(str);
		RegistrationInfor registrationInfor = registrationService.lookAll(str);
		model.addAttribute("k", registrationInfor);
		return "forward:/registration/look.jsp";		
	}
	@RequestMapping("/edit")
	public String edit(RegistrationInfor registrationInfor) {
		registrationService.edit(registrationInfor);		
		return "forward:/registration/index";		
	}
	@RequestMapping("/delete")
	public String delete(String[] check) {
		List list = new ArrayList();
		System.out.println(Arrays.toString(check));
		for (String str : check) {	
			list.add(str);
		}
		registrationService.deleteInfo(list);
		return "forward:/registration/index";		
	}
	@RequestMapping("/check")
	public String check(String str,Model model) {
		RegistrationInfor registrationInfor = registrationService.check(str);
           model.addAttribute("re", registrationInfor);
		return "forward:/registration/add.jsp";		
	}
	@RequestMapping("/update")
	public String update(RegistrationInfor registrationInfor) {
		registrationService.update(registrationInfor);
		System.out.println(registrationInfor);
		return "forward:/registration/index";		
	}
}
