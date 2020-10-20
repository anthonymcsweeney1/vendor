package com.ajax;

import java.util.HashMap;

/**
 *
 * @author nbuser
 */
public class ComposerData {
    
    private HashMap composers = new HashMap();
    

    public HashMap getComposers() {
        return composers;
    }
    
    public ComposerData() {
        
        composers.put("1", new Composer("1", "2129000222", "03/02/2021","€31,000.00", "Images/Invoice_2129000222.pdf"));
        composers.put("2", new Composer("2", "2175000287", "09/03/2021", "€21,250.00","Images/Invoice_2175000287.pdf"));
        composers.put("3", new Composer("3", "2193539", "02/01/2021", "€15,000.00","Images/Invoice_2193539.pdf"));
        composers.put("4", new Composer("4", "286745", "22/03/2021", "€10,000.00","Images/Invoice_286745.pdf"));
        composers.put("5", new Composer("5", "40458394", "19/02/2021","€7,500.00", "Baroque"));
        composers.put("6", new Composer("6", "43694834", "10/02/2021","€31,000.00", "Baroque"));
        composers.put("7", new Composer("7", "5843584", "23/03/2021","€31,000.00", "Baroque"));
        composers.put("8", new Composer("8", "683946", "13/01/2021","€31,000.00", "Classical"));
        composers.put("9", new Composer("9", "703RPO", "18/03/2021","€31,000.00", "Classical"));
        composers.put("10", new Composer("10", "74574", "22/03/2021","€31,000.00", "Classical"));
        composers.put("11", new Composer("11", "Fryderyk Franciszek","€31,000.00", "Chopin", "Classical"));
        composers.put("12", new Composer("12", "Antonin", "Dvorak","€31,000.00", "Classical"));
        composers.put("13", new Composer("13", "Franz Joseph", "Haydn", "","Classical"));
        composers.put("14", new Composer("14", "Gustav", "Mahler","", "Classical"));
        composers.put("15", new Composer("15", "Wolfgang Amadeus", "Mozart","", "Classical"));
        composers.put("16", new Composer("16", "Johann", "Pachelbel","", "Classical"));
        composers.put("17", new Composer("17", "Gioachino", "Rossini","", "Classical"));
        composers.put("18", new Composer("18", "Dmitry", "Shostakovich","", "Classical"));
        composers.put("19", new Composer("19", "Richard", "Wagner", "","Classical"));
        composers.put("20", new Composer("20", "Louis-Hector", "Berlioz","", "Romantic"));
       
       
    }

}
