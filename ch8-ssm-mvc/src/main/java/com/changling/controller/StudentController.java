package com.changling.controller;

import com.changling.doman.Student;
import com.changling.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author wensheng
 * @date 2023年10月10日 10:23
 */
@Controller
@RequestMapping("/student")
public class StudentController {

    //引用类型，自动注入    @Autowired    ,    @Resource
    @Autowired
    private StudentService studentService;

    @RequestMapping("/addStudent")
    public ModelAndView add(Student student){
        int num = studentService.addStudent(student);
        String msg = "学生["+student.getName()+"]注册失败！！！";
        if(num > 0){
            msg = "学生["+student.getName()+"]注册成功！！！";
        }

        ModelAndView mv = new ModelAndView();
        mv.addObject("msg",msg);
        mv.setViewName("result");
        return mv;
    }

    @RequestMapping("/showAdd")
    public String showAdd(){
        return "addStudent";
    }

    @RequestMapping("/find")
    public String find(){
        System.out.println("查询页面");
        return "listStudent";
    }

    @RequestMapping("/query")
    @ResponseBody
    public List<Student> findAll(){
        System.out.println("查询来了");
        List<Student> list = studentService.findAll();
        for (Student student : list) {
            System.out.println(student);
        }
        return list;
    }
}
