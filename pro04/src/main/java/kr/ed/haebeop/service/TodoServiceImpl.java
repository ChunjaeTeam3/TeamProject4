package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Todo;
import kr.ed.haebeop.persistence.TodoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TodoServiceImpl implements TodoService{
    @Autowired
    private TodoMapper todoMapper;

    @Override
    public List<Todo> todoList(String id) throws Exception {
        return todoMapper.todoList(id);
    }

    @Override
    public void todoInsert(Todo dto) throws Exception {
        todoMapper.todoInsert(dto);
    }

    @Override
    public void todoEdit(Todo dto) throws Exception {
        todoMapper.todoEdit(dto);
    }

    @Override
    public void todoDelete(int tdno, String id) throws Exception {
        todoMapper.todoDelete(tdno, id);
    }
}
