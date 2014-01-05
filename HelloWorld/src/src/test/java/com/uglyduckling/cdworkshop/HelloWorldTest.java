package com.uglyduckling.cdworkshop;

import static org.junit.Assert.*;

import org.junit.Test;

public class HelloWorldTest {

	@Test
	public void test() {
		assertEquals("Output incorrect", new HelloWorld().getName(), "Hello Users TEST!");
	}
}
