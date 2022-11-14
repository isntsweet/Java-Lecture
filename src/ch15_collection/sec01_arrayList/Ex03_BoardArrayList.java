package ch15_collection.sec01_arrayList;

import java.util.ArrayList;
import java.util.List;

public class Ex03_BoardArrayList {

	public static void main(String[] args) {
		List<Board> list = new ArrayList<>();

		// 객체 추가
		for (int i = 1; i <= 5; i++)
			list.add(new Board("제목" + i, "내용" + i, "글쓴이" + i));
		for (Board b : list)
			System.out.println(b);
		System.out.println();

		// 저장된 총 객체수 확인
		int size = list.size();
		System.out.println("총 객체수: " + size + "\n");

		// 객체 가져오기
		Board board = list.get(2);
		System.out.println(board);
		System.out.println();

		// 객체 삭제
		list.remove(3);
		for (Board b : list)
			System.out.println(b);
	}

}
