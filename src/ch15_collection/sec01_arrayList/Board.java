package ch15_collection.sec01_arrayList;

public class Board {
	private String susbject;
	private String content;
	private String writer;

	Board(String susbject, String content, String writer) {
		super();
		this.susbject = susbject;
		this.content = content;
		this.writer = writer;
	}

	public String getSusbject() {
		return susbject;
	}

	public void setSusbject(String susbject) {
		this.susbject = susbject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "Board [susbject=" + susbject + ", content=" + content + ", writer=" + writer + "]";
	}

}
