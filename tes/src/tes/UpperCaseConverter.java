package tes;

import java.io.*;
import java.nio.file.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class UpperCaseConverter {
    public static void main(String[] args) {
        // Mac 바탕화면 경로에 파일 생성
        String filePath = System.getProperty("user.home") + "/Desktop/test.ini";

        // 1. 파일 생성
        try {
            Files.writeString(Paths.get(filePath), """
                    Hello World
                    This is a test file.
                    Let's convert it to uppercase in Java!
                    """);
            System.out.println("파일이 생성되었습니다: " + filePath);
        } catch (IOException e) {
            System.err.println("파일 생성 중 오류 발생: " + e.getMessage());
            return;
        }

        // 2. 파일 읽기 및 대문자로 변환
        try {
            String content = Files.readString(Paths.get(filePath));
            String upperCaseContent = content.toUpperCase();
            System.out.println("\n대문자로 변환된 파일 내용:");
            System.out.println(upperCaseContent);
        } catch (IOException e) {
            System.err.println("파일 읽기 중 오류 발생: " + e.getMessage());
        }
    }
}