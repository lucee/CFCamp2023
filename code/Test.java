package org.lucee.demo;

import java.io.IOException;
import java.util.function.IntBinaryOperator;

public class Test {

	public CharSequence handleCS(CharSequence cs) throws IOException {
		return cs;
	}

	public int handleJF(IntBinaryOperator ibo) throws IOException {
		return ibo.applyAsInt(200, 2);
	}

	public CharSequence handle(CharSequence cs) throws IOException {
		return handleCS(cs);
	}

	public int handle(IntBinaryOperator ibo) throws IOException {
		return handleJF(ibo);
	}
}
