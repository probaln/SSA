package com.probal.demo.restfulapp;

import org.assertj.core.util.Arrays;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RestBooksApplicationTests {

	@Test
	public void contextLoads() {
        RestBooksApplication.main(Arrays.array());
	}

}
