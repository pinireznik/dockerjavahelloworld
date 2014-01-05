package com.uglyduckling.cdworkshop;

import static org.junit.Assert.*;

import org.junit.Test;

public class HelloWorldIntegrationTest {

	@Test
	public void test() {
		assertEquals("Integration/Performance test failed", new HelloWorld().getName(), "Hello Users!");
	}
}
