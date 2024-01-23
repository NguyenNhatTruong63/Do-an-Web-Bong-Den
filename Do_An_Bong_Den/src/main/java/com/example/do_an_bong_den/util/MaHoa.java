package com.example.do_an_bong_den.util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Base64;

public class MaHoa {
    public static String toSHA1(String encode){
        String salt = "aethvnr1257fnvudwmcgwy;cudidbvjvnc";
        String result = null;
        encode = encode + salt;
        try {
            byte[] dataBytes = encode.getBytes(StandardCharsets.UTF_8);
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            result = Base64.getEncoder().toString();

        }catch (Exception e){
            e.printStackTrace();

        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println(toSHA1("123456"));
    }

}
