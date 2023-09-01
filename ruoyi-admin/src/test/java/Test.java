import com.github.pagehelper.PageHelper;
import com.ruoyi.RuoYiApplication;
import com.ruoyi.web.domain.Indicator;
import com.ruoyi.web.domain.TestdHash;
import com.ruoyi.web.domain.TestdMonth;
import com.ruoyi.web.service.IIndicatorService;
import com.ruoyi.web.service.ITestdHashService;
import com.ruoyi.web.service.ITestdMonthService;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@RunWith(SpringRunner.class)
//@SpringBootTest
@SpringBootTest
@ContextConfiguration(classes = RuoYiApplication.class)
public class Test {
    @Resource
    private IIndicatorService indicatorService;
    @Resource
    private ITestdHashService testdHashService;
    @Resource
    private ITestdMonthService testdMonthService;

    @org.junit.Test
    public void testShardingJdbc(){
        Indicator indicator = new Indicator();
        for(long i=400;i<500;i++){
            indicator.setId(i);
            indicator.setIndicatorCode("212");
            indicator.setIndicatorValue("22");
            indicator.setIndicatorValue2("22");
            indicator.setDimensionCode("3");
            indicator.setPusher("d");
            indicator.setBizDateTime(new Date());
            indicator.setPushTime(new Date());
            indicator.setCategoryPathCode("3234");
            indicator.setOrgIndexCodePath("werw");
            indicatorService.insertIndicator(indicator);
        }



    }
    @org.junit.Test
    public void testShardingJdbcSelect(){
        Indicator indicator = new Indicator();


            indicator.setIndicatorCode("212");
            indicator.setIndicatorValue("22");

       List<Indicator> list = indicatorService.selectIndicatorList(indicator);
        PageHelper.startPage(1, 3);
       // List<SysDictData> list3 =  sysUserService.selectDictDataList(new SysDictData());
        List<Indicator> list2 = indicatorService.selectIndicatorList(indicator);
        System.out.println(list.size());

    }
    //不能自动创建表
    @org.junit.Test
    public void testShardingJdbcHash(){
        TestdHash testdHash = new TestdHash();
        for(long i=300;i<400;i=i+2){
            testdHash.setId(i);
          testdHash.setPusher(UUID.randomUUID().toString());
          testdHash.setPushTime(new Date());
          testdHashService.insertTestdHash(testdHash);
        }



    }
    @org.junit.Test
    public void testShardingJdbcHashSnow(){
        TestdHash testdHash = new TestdHash();
        for(long i=300;i<400;i++){
            testdHashService.creatTableTestdHashNoExit("testd_hash",i);
            testdHash.setPusher(UUID.randomUUID().toString());
            testdHash.setPushTime(new Date());
            testdHashService.insertTestdHash(testdHash);
        }



    }
    @org.junit.Test
    public void testShardingJdbcSelectHash(){
        TestdHash testdHash = new TestdHash();
            testdHash.setPusher(UUID.randomUUID().toString());
            testdHash.setPushTime(new Date());



        List<TestdHash> list = testdHashService.selectTestdHashList(testdHash);
        System.out.println(list.size());
        PageHelper.startPage(1, 3);
        // List<SysDictData> list3 =  sysUserService.selectDictDataList(new SysDictData());
        List<TestdHash> list2 = testdHashService.selectTestdHashList(testdHash);
        System.out.println(list2.size());

    }@org.junit.Test
    public void testShardingJdbcMonth(){
        TestdMonth testdMonth = new TestdMonth();
        for(long i=300;i<400;i++){
            testdMonth.setPusher(UUID.randomUUID().toString());
            testdMonth.setPushTime(new Date());
            testdMonthService.insertTestdMonth(testdMonth);
        }



    }
    @org.junit.Test
    public void testShardingJdbcSelectMonth(){
        TestdMonth testdMonth = new TestdMonth();
        testdMonth.setPusher(UUID.randomUUID().toString());
        testdMonth.setPushTime(new Date());



        List<TestdMonth> list = testdMonthService.selectTestdMonthList(testdMonth);
        System.out.println(list.size());
        PageHelper.startPage(1, 3);
        // List<SysDictData> list3 =  sysUserService.selectDictDataList(new SysDictData());
        List<TestdMonth> list2 = testdMonthService.selectTestdMonthList(testdMonth);
        System.out.println(list2.size());

    }

}
