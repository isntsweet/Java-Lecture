package ch15_collection;

public class Q07_ListExample {

	public static void main(String[] args) {
		BoardDao dao = new BoardDao;
		List<Board> list = dao.getBoardList();
		for(Board board : list) {
			System.out.println(board.getTitle() + "=" + board.getContent());
		}
	}

}
