package com.note.action;

import javax.servlet.http.Cookie;



public class test {
	public class Contents {
	}

	public Contents contents() {
		return new Contents() {
			private int i = 11;

			public int value() {
				return 1;
			};
		};
	}

	public static void main(String[] args) {
		
		
	}

}
