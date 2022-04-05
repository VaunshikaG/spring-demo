package com.springdemo.springdemo.controller;

import com.springdemo.springdemo.entities.CourseEntity;
import com.springdemo.springdemo.model.CourseModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@org.springframework.stereotype.Controller
@RestController
public class CourseController {

    @Autowired
    private CourseModel courseModel;

    @GetMapping("/home")
    public String home() {
        return "this is home page";
    }

    // get courses
    @GetMapping("/courses")
    public List<CourseEntity> getCourses() {
        return this.courseModel.getCourses();
    }

    //  get single course
    @GetMapping("/courses/{courseId}")
    public CourseEntity getCourse(@PathVariable String courseId) {
        return this.courseModel.getCourse(Long.parseLong(courseId));
    }

    //  add course
    @PostMapping("/courses")
    public CourseEntity addCourse(@RequestBody CourseEntity courseEntity) {
        return this.courseModel.addCourse(courseEntity);
    }

    //  update course
    @PutMapping("/courses")
    public CourseEntity updateCourse(@RequestBody CourseEntity courseEntity) {
        return this.courseModel.updateCourse(courseEntity);
    }

    //  delete course
    @DeleteMapping("/courses/{courseId}")
    public ResponseEntity<HttpStatus> deleteCourse(@PathVariable String courseId) {
        try {
            this.courseModel.deleteCourse(Long.parseLong(courseId));
            return new ResponseEntity<>(HttpStatus.OK);
        }
        catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
