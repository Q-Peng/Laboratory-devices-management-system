package cn.cug.laboratory.service.impl;

import cn.cug.laboratory.mapper.UserMapper;
import cn.cug.laboratory.mapper.extend.UserExtendMapper;
import cn.cug.laboratory.model.persistent.PageModel;
import cn.cug.laboratory.model.persistent.User;
import cn.cug.laboratory.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by HXY on 2016/5/24.
 */
@Service
public class UserServiceImpl implements UserService{


    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserExtendMapper userExtendMapper;

    /**
     *
     * @param user
     * @return
     * 返回用户权限
     */
    @Override
    public String getAuth(User user) {
        String auth= userExtendMapper.getAuth(user);
        if (auth == null) {
            return "-1";
        }else {
            if(auth.equals("0"))
                return "学生";
            else if(auth.equals("1"))
                return "教师";
            else if (auth.equals("2"))
                return "管理员";
        }
        return "-1";
    }

    /**
     * @author:PP
     * @param stuId
     * @param oldPwd
     * @param newPwd
     * @return
     */
    public Integer pp_updatePassword(String stuId,String oldPwd,String newPwd) {
        User user=userMapper.selectByPrimaryKey(stuId);
        if(user.getPassword().equalsIgnoreCase(oldPwd)){
            System.out.println("原密码正确");
            userExtendMapper.updatePassword(stuId,newPwd);
            return 1;
        }
        else{
            System.out.println("原密码不正确");
            return 0;
        }
    }

    /**
     *
     * @param stuId
     * @param newPwd
     * 更新密码
     */
    @Override
    public void updatePassword(String stuId, String newPwd) {
        userExtendMapper.updatePassword(stuId,newPwd);
    }

    /**
     * @author: shixing
     * @function:
     * @since : 1.0.0
     */
    @Override
    public void insertSelective(User record) {
        userMapper.insertSelective(record);
    }

    /**
     * @author: shixing
     * @function:
     * @since : 1.0.0
     */
    @Override
    public void deleteByPrimaryKey(String id) {
        userMapper.deleteByPrimaryKey(id);
    }

    /**
     * @author: shixing
     * @function:
     * @since : 1.0.0
     */
    @Override
    public int updateByPrimaryKeySelective(User record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    /**
     * @author: shixing
     * @function:
     * @since : 1.0.0
     */
    @Override
    public User selectByPrimaryKey(String id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public PageModel selectUserByUserNameAndAuth(Integer currentPage, Integer offset, User user) {
        Integer totalCounts = userExtendMapper.gettotalRecords(user);
        PageModel<User> pm = new PageModel<>(currentPage,offset,totalCounts);
        List<User> data = userExtendMapper.getPageData(pm.getStartPosition(),offset,user);
        pm.setData(data);
        return pm;
    }

    @Override
    public User selectUserByUserNameAndPWD(User user) {
        return userExtendMapper.selectUserByUserNameAndPWD(user);
    }


}
