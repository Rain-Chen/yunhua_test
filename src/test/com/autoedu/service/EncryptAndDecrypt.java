package com.autoedu.service;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Value;

/**
 * Created with Intellij IDEA.
 * <p>Created by rainchen
 * User: rainchen
 * Date: 14-12-5
 * Time: 下午4:48.
 */
public class EncryptAndDecrypt {

    @Value("${password.algorithmName}")
    private String algorithmName = "md5";
    @Value("${password.hashIterations}")
    private int hashIterations = 2;

    private String password = "123";
    private String credentialsSalt = "rainchen0aeff71e7846f3b28384fd36f1d85262";

    @Test
    public void encrypt(){
        String newPassword = new SimpleHash(
                algorithmName,
                password,
                ByteSource.Util.bytes(credentialsSalt),
                hashIterations
        ).toHex();

        System.out.println(newPassword);
    }
}
