package com.hy.assj;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Test {

	public static void main(String[] args) {
		Map<Integer, List<String>> map = new HashMap<>();
		try {
			map.get(1).add("aa");
		} catch (RuntimeException e) {}
		System.out.println("ddd");
	}
	
}
