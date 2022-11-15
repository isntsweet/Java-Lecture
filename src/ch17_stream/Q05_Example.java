package ch17_stream;

import java.util.Arrays;
import java.util.List;

public class Q05_Example {

	public static void main(String[] args) {
		List<String> list = Arrays.asList("This is a java book", "Lambda Expressions",
				"Java8 supports lambda expressions");

		list.stream().filter(a -> a.toLowerCase().indexOf("java") >= 0).forEach(a -> System.out.println(a));
		System.out.println();
	}

}
