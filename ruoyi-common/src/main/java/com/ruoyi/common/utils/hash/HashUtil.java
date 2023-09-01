package com.ruoyi.common.utils.hash;

public class HashUtil {
    public static int getHashUser10(String username) {
        int hash = 0;
        // 计算用户名的ASCII码总和
        for (int i = 0; i < username.length(); i++) {
            hash += username.charAt(i);
        }
        // 对总和进行取模，得到0-9之间的值
        return hash % 10;
    }
}
