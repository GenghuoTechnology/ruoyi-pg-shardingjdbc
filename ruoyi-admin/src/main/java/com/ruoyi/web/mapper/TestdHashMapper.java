package com.ruoyi.web.mapper;

import java.util.List;
import com.ruoyi.web.domain.TestdHash;
import org.apache.ibatis.annotations.Param;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2023-08-30
 */
public interface TestdHashMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TestdHash selectTestdHashById(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param testdHash 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TestdHash> selectTestdHashList(TestdHash testdHash);

    /**
     * 新增【请填写功能名称】
     * 
     * @param testdHash 【请填写功能名称】
     * @return 结果
     */
    public int insertTestdHash(TestdHash testdHash);

    /**
     * 修改【请填写功能名称】
     * 
     * @param testdHash 【请填写功能名称】
     * @return 结果
     */
    public int updateTestdHash(TestdHash testdHash);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTestdHashById(String id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTestdHashByIds(String[] ids);

    public void callCreateTableFunction(@Param("tableName") String tableName,@Param("suffix") String suffix);
}
