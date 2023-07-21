package com.sample.book.dto;

import java.sql.Date;

public class BookDTO {
	int book_id;
	String title;
	String category;
	int price;
	Date insert_date;
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getInsert_date() {
		return insert_date;
	}
	public void setInsert_date(Date insert_date) {
		this.insert_date = insert_date;
	}
	@Override
	public String toString() {
		return "BookDTO [book_id=" + book_id + ", title=" + title + ", category=" + category + ", price=" + price
				+ ", insert_date=" + insert_date + "]";
	}
	
	
}
