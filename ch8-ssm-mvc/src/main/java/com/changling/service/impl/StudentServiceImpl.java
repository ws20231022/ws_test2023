package com.changling.service.impl;

import com.changling.dao.StudentDao;
import com.changling.doman.Student;
import com.changling.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wensheng
 * @date 2023年10月10日 10:15
 */
@Service
public class StudentServiceImpl implements StudentService {

   //引用类型，使用自动注入   @Autowired   ,   @Resource
    @Autowired
    private StudentDao studentDao;

    @Override
    public int addStudent(Student student) {
        int num = studentDao.insertStudent(student);
        return num;
    }

    @Override
    public List<Student> findAll() {
        List<Student> students = studentDao.selectStudents();
        return students;
    }
}
