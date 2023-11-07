package com.charan.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;


@SpringBootApplication
@EnableDiscoveryClient
public class OnlineBookStorePaymentApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineBookStorePaymentApplication.class, args);
	}

}
