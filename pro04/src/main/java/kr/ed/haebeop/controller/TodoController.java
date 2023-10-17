package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Todo;
import kr.ed.haebeop.service.TodoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/todo/")
public class TodoController {

    @Autowired
    private TodoService todoService;
    @Autowired
    HttpSession session;

    @GetMapping("list")
    public String todoList(HttpServletRequest request, Model model) throws Exception{
        String id = (String) session.getAttribute("sid");
        List<Todo> todoList = todoService.todoList(id);

        model.addAttribute("todoList", todoList);

        return "/todo/todoList";
    }

    @PostMapping("insert")
    @ResponseBody
    public List<Todo> ajaxTodo(@RequestBody Todo todo) throws Exception {
        String id = (String) session.getAttribute("sid");
        todo.setId((String) session.getAttribute("sid"));
        System.out.println(todo.toString());
        todoService.todoInsert(todo);
        List<Todo> todoList = todoService.todoList(id);
        return todoList;
    }

    @GetMapping("delete")
    public String todoDelete(HttpServletRequest request, Model model, @RequestParam int tdno) throws Exception{
        todoService.todoDelete(tdno);
        return "redirect:list";
    }

    @PostMapping("edit")
    @ResponseBody
    public void todoEdit(@RequestParam("tdno") int tdno, HttpServletRequest request, Model model) throws Exception {
        Todo todo = todoService.todoGet(tdno);

        if(todo.getStatus() == 1) {
            todo.setStatus(0);
        } else {
            todo.setStatus(1);
        }
        todo.setTdno(tdno);

        todoService.todoEdit(todo);
    }
}
