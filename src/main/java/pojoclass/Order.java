package pojoclass;

import database.Conn;

public class Order {

		private int id;
		private String name;
		private String size;
		private String ingredients;
		private double price;
		private String status;
		private String email;
		
		
		


		
		
		
		
		
		public Order(String name, String size, String ingredients, double price,String status, String email) {
			super();
			this.name = name;
			this.size = size;
			this.ingredients = ingredients;
			this.price = price;
			this.status=status;
			this.email = email;
		}


		public int getId() {
			return id;
		}


		public void setId(int id) {
			this.id = id;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getSize() {
			return size;
		}


		public void setSize(String size) {
			this.size = size;
		}


		public String getIngredients() {
			return ingredients;
		}


		public void setIngredients(String ingredients) {
			this.ingredients = ingredients;
		}


		public double getPrice() {
			return price;
		}


		public void setPrice(double price) {
			this.price = price;
		}


		public String getEmail() {
			return email;
		}


		public void setEmail(String email) {
			this.email = email;
		}
		
		public String getStatus() {
			return status;
		}


		public void setStatus(String status) {
			this.status = status;
		}

		
		
	

}
