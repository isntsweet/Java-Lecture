package ch14_lambda;

import java.util.function.Function;

public class Q06_Example {
	pubilc static double calc(Function<T, R> fun) {
		double x = 10;
		double y = 4;
		return fun.apply(x, y);
	}
	public static void main(String[] args) {
		double result = calc( (x, y) -> (x / y));
		System.out.println("result: " + result);
	}
}
