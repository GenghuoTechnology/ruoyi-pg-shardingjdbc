package com.ruoyi.web.service.sharding;

public class HashRuleImpl {
    public static String IdHash2(long id){
        return  String.valueOf(id%2 +1);
    }
}
