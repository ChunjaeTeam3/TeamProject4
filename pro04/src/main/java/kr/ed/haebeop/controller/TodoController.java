package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Todo;
import kr.ed.haebeop.service.TodoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/todo/")
public class TodoController {

    @Autowired
    private TodoService todoService;

    @GetMapping("list")
    public String todoList(HttpServletRequest request, Model model) throws Exception{
        String id =request.getParameter("sid");
        List<Todo> todoList = todoService.todoList(id);

        model.addAttribute("todo", todoList);

        return "/todo/todoList";
    }

}
