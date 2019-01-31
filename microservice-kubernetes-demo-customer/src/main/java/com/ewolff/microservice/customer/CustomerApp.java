package com.ewolff.microservice.customer;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

@ComponentScan
@EnableAutoConfiguration
@Component
public class CustomerApp {

	private final CustomerRepository customerRepository;

	@Autowired
	public CustomerApp(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}

	@PostConstruct
	public void generateTestData() {
		customerRepository.save(new Customer("Hai Anh", "Tran", "haianh@gmail.com", "Hai Ba Trung", "Ha Noi"));
		customerRepository.save(new Customer("Thi Linh", "Nguyen", "linh@yahoo.com", "Tran Quoc Toan", "Hai Phong"));
		customerRepository.save(new Customer("Van Tuan", "Dao", "tuan@yahoo.com", "Nguyen Hue", "Nam Dinh"));
	}

	public static void main(String[] args) {
		SpringApplication.run(CustomerApp.class, args);
	}

}
