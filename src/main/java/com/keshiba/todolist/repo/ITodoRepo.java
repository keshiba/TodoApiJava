package com.keshiba.todolist.repo;

import com.keshiba.todolist.model.TodoItem;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ITodoRepo extends JpaRepository<TodoItem, Long> {

}
