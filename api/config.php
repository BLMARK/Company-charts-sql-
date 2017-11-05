<?php

// Adatbázis kapcsolat beállításai.
define("DBNAME", "yellowsql");
define("DBUSER", "yellowsql");
define("DBPASSWORD", "oE6o1AnwQLdPtGbT");

// Routing (útválasztó) beállításai.
define("PREFIX", "api");
define("SQLDIR", "sql");
$router = array(
    // Select kérések részlegenként.

    //Logisztika
    "/logistics" => "all_logistics.sql",
    "/one_logistics" => "one_logistics.sql",
    "/limit_logistics" =>"limit_logistics.sql",

    //Karbantartás
    "/maintenance" => "all_maintenance.sql",
     "/one_maintenance" => "one_maintenance.sql",
    "/limit_maintenance" =>"limit_maintenance.sql",
    
    
    "/products" => "all_products.sql",
    // Insert kérések.
    "/customers/insert" => "add_customer.sql",
    // Update kérések.
    "/customers/update/:id" => "update_customer.sql",
    // Delete kérések.
    "/customers/delete/:id" => "delete_customer.sql"
);