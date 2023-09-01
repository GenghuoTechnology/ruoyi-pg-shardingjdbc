package com.ruoyi.framework.web.service;

import com.ruoyi.common.constant.LoginSourceConstants;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.enums.DataSourceType;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.datasource.DynamicDataSourceContextHolder;
import com.ruoyi.system.service.ISysRoleService;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Component

public class BimsUserService {
  @Resource
  private JdbcTemplate jdbcTemplate;
  @Resource
  private ISysUserService userService;
  @Resource
  private ISysRoleService sysRoleService;
  public String  getUserBySession(String session){
        //获得bims用户信息
    DynamicDataSourceContextHolder.setDataSourceType(DataSourceType.ORACLE.name());
    String sql = "select * from M_ADMIN_ONLINE WHERE SESSIONID = ?";
    List<Map<String, Object>> resultList = jdbcTemplate.queryForList(sql,session);
    if(resultList.size()==0){
      return "";
    }
    Object obj =resultList.get(0).get("ADMIN");
    if(obj==null){
    return "";
    }
    String userName = StringUtils.convertToString(obj);
    sql = "select * from M_ADMIN WHERE ADMIN = ?";
      if(resultList.size()==0){
          return "";
      }
    resultList = jdbcTemplate.queryForList(sql,userName);
      String groupNo = StringUtils.convertToString(resultList.get(0).get("GROUPNO"));

    String userNameBims = LoginSourceConstants.BIMS_LOGIN+userName;
      createUser(userNameBims,resultList,groupNo);
      return userNameBims;
    }
    @Transactional
  public void createUser(String userNameBims,List<Map<String, Object>> resultList,String groupNo){
        // 用户验证
        SysUser user  = userService.selectUserByUserName(userNameBims);
        //判断用户是否注册
        if (StringUtils.isNull(user))
        {
            user =new SysUser();
            user.setUserName(userNameBims);
            user.setNickName(StringUtils.convertToString(resultList.get(0).get("NAME")));
            user.setPhonenumber(StringUtils.convertToString(resultList.get(0).get("CONTACTPHONE")));
            user.setPassword(SecurityUtils.encryptPassword(StringUtils.generatePassword(12)));

            //注册用户，返回系统用户信息，如果绑定本系统用户，以后有需要加个绑定，返回绑定用户信息
            Integer id = userService.registerUser(user);
            if(id>0) {
                Long[] arr = new Long[1];
                arr[0] = user.getUserId();
                if (groupNo.equals("1")) {
                    sysRoleService.insertAuthUsers(101L, arr);
                } else {
                    sysRoleService.insertAuthUsers(102L, arr);

                }
            }
        }
    }
}
