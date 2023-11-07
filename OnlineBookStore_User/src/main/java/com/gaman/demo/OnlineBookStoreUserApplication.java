package com.gaman.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class OnlineBookStoreUserApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineBookStoreUserApplication.class, args);
	}

}
