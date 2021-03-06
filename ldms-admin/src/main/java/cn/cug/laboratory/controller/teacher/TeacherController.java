package cn.cug.laboratory.controller.teacher;

import cn.cug.laboratory.model.extend.ProjectExtend;
import cn.cug.laboratory.model.persistent.Teacher;
import cn.cug.laboratory.model.persistent.User;
import cn.cug.laboratory.service.LabService;
import cn.cug.laboratory.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by HXY on 2016/5/22.
 */
@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    private LabService labService;

    @RequestMapping("/home")
    public ModelAndView home() {
        System.out.println("home");
        ModelAndView mav = new ModelAndView("teacher/home");
        return mav;
    }
    /**
     *
     * @param project
     * @return
     * 申请实验第一步，提交信息，在controlller里面保存用户提交的信息，并不存入数据库
     * 要生成一个实验ID
     * 根据传过来的实验室名称查询lab_id
     * 将实验状态设置为0,标识为提交状态
     *从当前session里面获取tea_id
     *将上传文件保存到临时文件夹(在确认信息无误,确认申请以后放到upload文件夹)
     */
    @RequestMapping(value = "saveprojectinfo",method = RequestMethod.GET)
    public
    @ResponseBody
    String saveprojectinfo(ProjectExtend project, HttpSession session,
                           @Param("multipart")MultipartFile mfile){

        return "sucess";
    }
}
