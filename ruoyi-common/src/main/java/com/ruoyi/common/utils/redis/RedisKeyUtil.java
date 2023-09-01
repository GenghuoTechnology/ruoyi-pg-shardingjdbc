package com.ruoyi.common.utils.redis;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.HashMap;
import java.util.Map;

import static com.ruoyi.common.constant.Constants.COLON;


public class RedisKeyUtil {
    private static final Logger logger = LogManager.getLogger(RedisKeyUtil.class);
/**
 * @Title:  Key生成策略
 * @MethodName:  generateKey
 * @param keyName 表名（用途，作为静态变量写在constants中）
 * @param keyId  唯一值id
 * @Return java.lang.String
 * @Exception
 * @Description:不做为空判断，请调用前自行判断，所有数据不允许带':'请注意
 *
 * @author: Eli
 * @date:  2020/2/25 11:19
 * @version: 1.0
 */
    public static String generateRedisKey( String keyName,String keyId,String... keyIds)  {
        StringBuilder builder = new StringBuilder();
        try{
            builder.append(keyName);
            builder.append(COLON);
            builder.append(keyId);
            for(String item:keyIds){
                builder.append(COLON);
                builder.append(item);
            }
            return builder.toString();
       }catch (Exception e){
            logger.error(e.toString());
            return null;
       }
    }


    /**
     * @Title:  解析Key
     * @MethodName:  parseKey
     * @param key
     * @Return java.util.Map<java.lang.String,java.lang.Object>
     * @Exception
     * @Description:
     *
     * @author: Eli
     * @date:  2020/2/25 12:06
     * @version: 1.0
     */
    public static Map<String,Object> parseRedisKey(String key) {
        Map<String,Object> map = new HashMap();
        try {
            String[] strArr = key.split(COLON);
            map.put("keyName",strArr[0]);
            map.put("keyId",strArr[1]);
            for(int i = 2; strArr.length > i; i++){
                map.put("keyId"+i,strArr[i]);
            }

            return map;
        } catch (Exception e) {
            logger.error(e.toString());
            return  null;
        }
    }

}
