package com.saurav.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.saurav.dao.ModalDAO;
import com.saurav.modal.Modal;

@Controller
public class ControllerClass {

	@Autowired
	ModalDAO modalDAO;

	@RequestMapping("/home")
	public String ctrl(Model model) {
		model.addAttribute("page", "home");

		List<Modal> list = this.modalDAO.getAll();
		model.addAttribute("empList", list);

		return "home";
	}

	@RequestMapping("/add")
	public String addList(Model model) {

		Modal modal = new Modal();
		model.addAttribute("page", "add");
		model.addAttribute("modal", modal);
		return "home";
	}

	@RequestMapping(value = "/saveForm", method = RequestMethod.POST)
	public String saveForm(@ModelAttribute("modal") Modal modal, Model model) {
		model.addAttribute("page", "home");
		this.modalDAO.save(modal);
		return "home";
	}

}
