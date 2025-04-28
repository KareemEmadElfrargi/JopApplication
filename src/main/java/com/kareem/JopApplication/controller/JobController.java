package com.kareem.JopApplication.controller;

import com.kareem.JopApplication.model.JobPost;
import com.kareem.JopApplication.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobController {
    @Autowired
    private JobService jobService;

    @GetMapping({"/","/home"})
    public String homePage(){
        return "home";
    }

    @GetMapping("addjob")
    public String addJobPage(){
        return "addjob";
    }
    @PostMapping("handleForm")
    public String handelFormPage(JobPost jobPost){
        jobService.addJob(jobPost);
        return "success";
    }
}
