package ch17_stream;

import java.util.stream.IntStream;

public class Ex05_Range {

	public static void main(String[] args) {
		IntStream stream = IntStream.range(1, 10);
		stream.forEach(i -> System.out.println(i));

		stream = IntStream.rangeClosed(1, 10);
		stream.forEach(i -> System.out.println(i));

		stream = IntStream.rangeClosed(1, 100);
		int sum = 0;
		stream.forEach(i -> sum += i);

	}

}
