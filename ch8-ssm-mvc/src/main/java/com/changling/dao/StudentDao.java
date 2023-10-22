package com.changling.dao;

import com.changling.doman.Student;

import java.util.List;

/**
 * @author wensheng
 * @date 2023年10月10日 10:02
 */
public interface StudentDao {
    int insertStudent(Student student);
    List<Student> selectStudents();
}
