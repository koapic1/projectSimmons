package com.simmons.model;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Component
public class BuyListDto {
	int no;
	String img;
	String pname;
	String count;
	String price;
	String regDate;
	String name;
	String phone;
	String phone01;
	String phone02;
	String phone03;
	String email;
	String email01;
	String email02;
	String sizes;
	String getName;
	String getAddress;
	String getPhone;
	String homePhone;
}
