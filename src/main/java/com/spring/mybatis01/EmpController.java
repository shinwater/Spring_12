package com.spring.mybatis01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.model.DeptDTO;
import com.spring.model.EmpDAO;
import com.spring.model.EmpDTO;

@Controller
public class EmpController {
	
	@Autowired
	private EmpDAO dao;
	
	@RequestMapping("emp_list.do")
	public String list(Model model) {
		List<EmpDTO> list = dao.getList();
		model.addAttribute("List", list);
		return "emp_list";
	}
	
	@RequestMapping("emp_write.do")
	public String write(Model model) {
		
		List<DeptDTO> list = dao.deptList();
		model.addAttribute("dept", list);
		return "emp_write";
	}
	
	@RequestMapping(value="emp_write_ok.do", method= RequestMethod.POST)
	public void writeOk(EmpDTO dto,HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		int res = dao.insertEmp(dto);
		
		if(res>0) {
			out.println("<script>");
			out.println("alert('사우너등록성공!~')");
			out.println("location.href='emp_list.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('ㅅㄹ패!~ㅜㅠㅠㅠ')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	@RequestMapping("emp_cont.do")
	public String read(@RequestParam("no") int empno, Model model) {
		EmpDTO dto = dao.content(empno); //상세내역 조회 메섣,
		model.addAttribute("cont", dto);
		
		return "emp_cont";
	}
	
	@RequestMapping("emp_update.do")
	public String update(@RequestParam("no") int empno,Model model) {
		EmpDTO dto = dao.content(empno); //상세내역 조회 메섣,
		List<DeptDTO> list = dao.deptList();

		model.addAttribute("cont", dto);
		model.addAttribute("dept", list);
		
		return "emp_update";
	}
	
	@RequestMapping("emp_update_ok.do")
	public void updateOk(EmpDTO dto, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		int res = dao.updateEmp(dto);
		
		if(res>0) {
			out.println("<script>");
			out.println("alert('사우너정보수정성공!~')");
			out.println("location.href='emp_cont.do?no="+dto.getEmpno()+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('ㅅㄹ패!~ㅜㅠㅠㅠ')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	
	
	@RequestMapping("emp_delete.do")
	public void delete(@RequestParam("no") int empno,HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		int res = dao.deleteEmp(empno);
		
		if(res>0) {
			out.println("<script>");
			out.println("alert('사우너정보삭제성공!~')");
			out.println("location.href='emp_list.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('ㅅㄹ패!~ㅜㅠㅠㅠ')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	
	
}
