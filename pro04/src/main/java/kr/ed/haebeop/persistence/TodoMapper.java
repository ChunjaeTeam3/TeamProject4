package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Todo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TodoMapper {
    public List<Todo> todoList(String id) throws Exception;
    public Todo todoGet(int tdno) throws Exception;
    public void todoInsert(Todo dto) throws Exception;
    public void todoEdit(Todo todo) throws Exception;
    public void todoDelete(int tdno) throws Exception;
}
