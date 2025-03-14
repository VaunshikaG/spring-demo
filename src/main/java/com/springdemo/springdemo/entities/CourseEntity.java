package com.springdemo.springdemo.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CourseEntity {
    @Id
    private long id;
    private String title;
    private String description;

    //  constructor
    public CourseEntity(long id, String title, String description) {
        this.id = id;
        this.title = title;
        this.description = description;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    //  super class constructor
    public CourseEntity() {
        super();
    }
}
