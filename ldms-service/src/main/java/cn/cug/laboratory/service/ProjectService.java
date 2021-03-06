package cn.cug.laboratory.service;

import cn.cug.laboratory.model.extend.ProjectExtend;
import cn.cug.laboratory.model.persistent.PageModel;
import cn.cug.laboratory.model.persistent.Project;
import cn.cug.laboratory.utils.RetuValueClass;

import java.util.List;

/**
 * Created by PP on 2016/5/22.
 */
public interface ProjectService {

    /**
     * 通过教师Id选择相应的实验记录，
     * 分页显示
     *
     * @param teaId
     * @param pageNo
     * @param pageNum
     * @return 记录列表，总的记录数
     */
    public RetuValueClass<ProjectExtend> selectByTeaId(String teaId, int pageNo, int pageNum);

    /**
     * @param name
     * @param pageNo
     * @param pageNum
     * @return
     */
    public RetuValueClass<ProjectExtend> selectByName(String name, int pageNo, int pageNum);

    /**
     * @author: shixing
     * @function:查询项目记录
     * @since : 1.0.0
     */
    public List<ProjectExtend> selectByMultipleInfo(Integer currentPage,
                                                    Integer offset,
                                                    ProjectExtend projectExtend);

    /**
     * @author: shixing
     * @function:查询记录条数
     * @since : 1.0.0
     */
    public Integer selectByMultipleInfoCounts(ProjectExtend projectExtend);

    /**
     * @author: PP
     * @function:学生查询项目信息
     */
    public List<ProjectExtend> selectProByMultipleInfo(Integer currentPage,
                                                    Integer offset,
                                                    ProjectExtend projectExtend);

    /**
     * @author: PP
     * @function:学生查询记录条数
     */
    public Integer selectProByMultipleInfoCounts(ProjectExtend projectExtend);


    /**
     * @author: shixing
     * @function:根据id查询项目详情
     * @since : 1.0.0
     */
    public ProjectExtend selectMultipleInfoById(String id);


    /**
     * @author: shixing
     * @function:分页查询项目信息
     * @since : 1.0.0
     */
    public PageModel<ProjectExtend> getProjectInfoByPage(Integer currentPage, Integer offset, ProjectExtend projectExtend);

    /**
     * @author: shixing
     * @since : 1.0.0
     * @function:根据项目id更新项目信息
     */
    public void updateProjectStateById(Project project);

    public PageModel<ProjectExtend> getStuProjectInfoByPage(Integer currentPage, Integer offset, ProjectExtend projectExtend);

}
