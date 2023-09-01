package com.ruoyi.web.service;

import java.util.List;
import com.ruoyi.web.domain.TestdHash;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2023-08-30
 */
public interface ITestdHashService 
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
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTestdHashByIds(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTestdHashById(String id);

    public void callCreateTableFunction(String tableName,String suffix);
    public boolean creatTableTestdHashNoExit(String tableName,Long id);

    }
