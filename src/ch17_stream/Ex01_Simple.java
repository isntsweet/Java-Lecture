package ch17_stream;

import java.util.HashSet;
import java.util.List;
import java.util.stream.Stream;

public class Ex01_Simple {

	public static void main(String[] args) {
		List<String> set = new HashSet<>();
		set.add("홍길동");
		set.add("컬렉션");
		set.add("람다식");
		set.add("다형성");
		set.add("김상속");

		// 스트림을 이용한 요소 반복 처리
		Stream stream = set.stream();
		stream.forEach(name -> System.out.println(name));

		set.stream().forEach(s -> System.out.println(s));

		// 컬렉션 단독으로 forEaxh 사용 가능
		set.forEach(s -> System.out.println(s));
	}

}
