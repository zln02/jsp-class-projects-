package tes;

import javax.swing.*;

public class SwingMenuExample {
    public static void main(String[] args) {
        // JFrame 생성
        JFrame frame = new JFrame("Swing 메뉴 예제");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(400, 300);

        // 메뉴바 생성
        JMenuBar menuBar = new JMenuBar();

        // 각 메뉴 생성
        JMenu fileMenu = new JMenu("파일");
        JMenu editMenu = new JMenu("편집");
        JMenu inputMenu = new JMenu("입력");
        JMenu viewMenu = new JMenu("보기");

        // "보기" 메뉴 아이템 추가
        JMenuItem zoomItem = new JMenuItem("화면확대");
        JMenuItem outlineItem = new JMenuItem("쪽윤곽");

        // "보기" 메뉴에 아이템 추가
        viewMenu.add(zoomItem);
        viewMenu.addSeparator(); // 분리선 추가
        viewMenu.add(outlineItem);

        // 메뉴바에 메뉴 추가 (순서 변경)
        menuBar.add(fileMenu);
        menuBar.add(editMenu);
        menuBar.add(inputMenu);
        menuBar.add(viewMenu);

        // JFrame에 메뉴바 설정
        frame.setJMenuBar(menuBar);

        // 화면에 보이기
        frame.setVisible(true);
    }
}
