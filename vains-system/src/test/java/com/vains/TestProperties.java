package com.vains;

import com.vains.util.SecurityUtils;
import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class TestProperties {

    @Test
    public void test01() {
        System.out.println(System.getProperty("user.dir"));
    }

    @Test
    public void test02() {
        System.out.println(new BCryptPasswordEncoder().encode("1588425647754186753"));
    }

    public static void main(String[] args){
        String key = "123456";
        System.out.println(SecurityUtils.aesEncrypt(key, "1234567891123456789"));
    }

}