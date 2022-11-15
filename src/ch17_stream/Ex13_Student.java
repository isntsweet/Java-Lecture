package ch17_stream;

public class Ex13_Student implements Comparable<Ex13_Student> {
	private String name;
	private int score;

	Ex13_Student(String name, int score) {
		super();
		this.name = name;
		this.score = score;
	}

	@Override
	public String toString() {
		return "Ex13_Student [name=" + name + ", score=" + score + "]";
	}

	public String getName() {
		return name;
	}

	public int getScore() {
		return score;
	}

	@Override
	public int compareTo(Ex13_Student o) {
		return 0;
	}

}
