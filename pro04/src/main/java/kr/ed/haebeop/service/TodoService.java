package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Todo;

import java.util.List;

public interface TodoService {
    public List<Todo> todoList(String id) throws Exception;
    public Todo todoGet(int tdno) throws Exception;
    public void todoInsert(Todo dto) throws Exception;
    public void todoEdit(Todo todo) throws Exception;
    public void todoDelete(int tdno) throws Exception;
}
