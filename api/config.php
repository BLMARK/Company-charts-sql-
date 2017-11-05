<?php

// Adatbázis kapcsolat beállításai.
define("DBNAME", "Company");
define("DBUSER", "Company");
define("DBPASSWORD", "company");

// Routing (útválasztó) beállításai.
define("PREFIX", "api");
define("SQLDIR", "sql");
$router = array(
    // Select kérések.
    
    //HR
    "/hr" => "all_hr.sql",
    "/hr/2" => "one_hr.sql",
    "/hr/limit/2" => "limit_hr.sql",
   
    //management
    "/management" => "all_management.sql",
    "/management/2" => "one_management.sql",
    "/management/limit/2" => "limit_management.sql",

    //purchase
    "/purchase" => "all_purchase.sql",
    "/purchase/2" => "one_management.sql",
    "/purchase/limit/2" => "limit_purchaset.sql",

    // Insert kérések.
    "/customers/insert" => "add_customer.sql",
    // Update kérések.
    "/customers/update/:id" => "update_customer.sql",
    // Delete kérések.
    "/customers/delete/:id" => "delete_customer.sql"
);

