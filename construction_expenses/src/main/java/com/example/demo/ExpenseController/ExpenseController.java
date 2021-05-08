package com.example.demo.ExpenseController;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.example.demo.expense.Expenses;
import com.example.demo.repository.Repository;


@Controller
public class ExpenseController {
	
	@Autowired
	Repository repo;
	
	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	@PostMapping("/uploadExpenses")
	public String uploadexpenses(Expenses expenses) {
		repo.save(expenses);
		return "home.jsp";
	}
	
	@RequestMapping("/getExpenses")
	public String getExpenses(Model model) {
		List<Expenses> exLIst=repo.findAll();
		model.addAttribute("Expenses",exLIst);
		return "List.jsp";
	}
	
	@RequestMapping("/updateExpenses/{no}")
	public ModelAndView updateExpenses(@PathVariable("no") int no) {
		ModelAndView mv = new ModelAndView("update.jsp");
		Expenses expenses = repo.getOne(no);
		mv.addObject("expenses", expenses);
		return mv;
		
	}
	
	@PostMapping("/save")
	public String saveExpenses(Expenses expenses) {
		repo.save(expenses);
		return "redirect:/getExpenses";
	}
	
	@RequestMapping("/deleteExpenses/{no}")
	public String deleteExpenses(@PathVariable("no") int no) {
		Expenses expenses= repo.getOne(no);
		repo.delete(expenses);
		return "redirect:/getExpenses";
	}
}

