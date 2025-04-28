package com.kareem.JopApplication.controller;

import com.kareem.JopApplication.model.JobPost;
import com.kareem.JopApplication.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

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
        jobService.getAllJobs();
        return "success";
    }
    @GetMapping("viewalljobs")
    public String viewJobsPage(Model model){
        List<JobPost> jobPostList = jobService.getAllJobs();
        // send the list to the view
        model.addAttribute("jobPosts", jobPostList);
        return "viewalljobs";
    }
}
