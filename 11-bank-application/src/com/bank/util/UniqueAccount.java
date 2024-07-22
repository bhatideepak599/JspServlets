package com.bank.util;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import javax.sql.DataSource;

public class UniqueAccount {
	private static final Set<String> generatedAccountNumbers = new HashSet<>();
	private static final Random random = new Random();
	private DataSource dataSource;
	

	public UniqueAccount(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	public static String accountNumber() {
		String accountNumber;

		do {
			accountNumber = generateRandomNumber();
		} while (generatedAccountNumbers.contains(accountNumber));

		generatedAccountNumbers.add(accountNumber);
		return accountNumber;
	}

	private static String generateRandomNumber() {
		StringBuilder accountNumber = new StringBuilder();

		for (int i = 0; i < 10; i++) {
			int digit = random.nextInt(10);
			accountNumber.append(digit);
		}

		return accountNumber.toString();
	}
}