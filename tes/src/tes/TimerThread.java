package tes;

import java.awt.*;
import javax.swing.*;

class TimerThread extends Thread { // 클래스 이름 및 private 수정
    private JLabel timerLabel;

    public TimerThread(JLabel timerLabel) {
        this.timerLabel = timerLabel;
    }

    @Override
    public void run() { // run() 메서드 이름 수정
        int n = 0;
        while (true) {
            timerLabel.setText(Integer.toString(n));
            n++;
            try {
                Thread.sleep(1000); // 1초 대기
            } catch (InterruptedException e) { // InterruptedException 수정
                return;
            }
        }
    }
}

public class ThreadTimerEx extends JFrame {
    public ThreadTimerEx() {
        setTitle("Thread를 상속받은 타이머 스레드 예제");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        Container c = getContentPane();
        c.setLayout(new FlowLayout());

        JLabel timerLabel = new JLabel();
        timerLabel.setFont(new Font("Gothic", Font.ITALIC, 80)); // ITALIC 수정
        c.add(timerLabel);

        TimerThread th = new TimerThread(timerLabel);

        setSize(250, 150);
        setVisible(true);

        th.start(); // 스레드 시작
    }

    public static void main(String[] args) {
        new ThreadTimerEx();
    }
}