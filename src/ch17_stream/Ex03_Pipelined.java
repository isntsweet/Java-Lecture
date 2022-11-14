package ch17_stream;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class Ex03_Pipelined {

	public static void main(String[] args) {
		List<Ex03_Student> list = new ArrayList<>();
		list.add(new Ex03_Student("홍길동", 10));
		list.add(new Ex03_Student("김자바", 20));
		list.add(new Ex03_Student("박객체", 30));

		// 평균을 구하고자 함
		// 방법1 -- 안 쓴다
		Stream<Ex03_Student> stram = list.stream();
		IntStream scoreStream = stram.mapToInt(s -> s.getScore());
		double avg = scoreStream.average().getAsDouble();
		System.out.println("평균 점수: " + avg);

		// 방법2
		avg = list.stream().mapToInt(s -> s.getScore()) // 중간 처리
				.average().getAsDouble(); // 최종 처리 (타입변경)
		System.out.println("평균 점수: " + avg);

	}

}
