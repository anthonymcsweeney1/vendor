package com.ajax;

public class Composer {

    private String id;
    private String firstName;
    private String lastName;
    private String amount;
    private String category;
    
    
    public Composer (String id, String firstName, String lastName,String amount, String category) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.amount = amount;
        this.category = category;
    }

    public String getCategory() {
        return category;
    }
    
    public String getId() {
        return id;
    }
    
    public String getFirstName() {
        return firstName;
    }
    
    public String getLastName() {
        return lastName;
    }
    
    public String getAmount() {
        return amount;
    }
}