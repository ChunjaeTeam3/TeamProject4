package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Review;
import kr.ed.haebeop.domain.Todo;
import kr.ed.haebeop.service.TodoService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/todo/*")
public class TodoController {

    @Autowired
    private TodoService todoService;
    @Autowired
    HttpSession session;

    @PostMapping("insert")
    @ResponseBody
    public List<Todo> ajaxTodo(@RequestBody Todo todo) throws Exception {
        String id = (String) session.getAttribute("sid");
        todo.setId((String) session.getAttribute("sid"));
        todoService.todoInsert(todo);
        List<Todo> todoList = todoService.todoList(id);
        return todoList;
    }

    @PostMapping("delete")
    public void todoDelete(@RequestParam int tdno, HttpServletResponse response) throws Exception{
        todoService.todoDelete(tdno);

        String id = (String) session.getAttribute("sid");
        List<Todo> todoList = todoService.todoList(id);
        JSONArray jsonArray = new JSONArray();
        for(Todo todo : todoList) {
            JSONObject obj = new JSONObject();
            obj.put("tdno", todo.getTdno());
            obj.put("id", todo.getId());
            obj.put("tdtitle", todo.getTdtitle());
            obj.put("status", todo.getStatus());
            jsonArray.put(obj);
        }

        PrintWriter out = response.getWriter();
        out.println(jsonArray);
    }

    @PostMapping("edit")
    @ResponseBody
    public Todo todoEdit(@RequestParam("tdno") int tdno, HttpServletRequest request, Model model) throws Exception {
        Todo todo = todoService.todoGet(tdno);

        if(todo.getStatus() == 1) {
            todo.setStatus(0);
        } else {
            todo.setStatus(1);
        }
        todo.setTdno(tdno);

        todoService.todoEdit(todo);

        return todo;
    }
}
