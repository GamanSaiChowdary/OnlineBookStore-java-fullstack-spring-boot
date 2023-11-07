package com.master.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class OnlineBookStoreMasterServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineBookStoreMasterServerApplication.class, args);
	}

}
