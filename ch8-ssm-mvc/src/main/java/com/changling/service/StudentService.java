package com.changling.service;

import com.changling.doman.Student;

import java.util.List;

/**
 * @author wensheng
 * @date 2023年10月10日 10:14
 */
public interface StudentService {
    int addStudent(Student student);
    List<Student> findAll();
}
