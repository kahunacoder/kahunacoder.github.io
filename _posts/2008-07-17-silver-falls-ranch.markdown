--- 
author: admin
status: publish
layout: post
projectID: "50"
Date: "7/17/2008"
Title: "Silver Falls Ranch"
Status: "1"
url: "http://www.silverfallsranch.com/"
image: "sfr.jpg"
client: "Graphic Communication"
Owner: "Silver Falls Ranch"
Location: "Kilauea, Hawaii"
categories:
- Tours
tags:
- AJAX
-  API
-  CSS
-  Curl
-  E-commerce
-  HTML
-  Javascript
-  jQuery
-  MySql
-  PHP
-  Shopping Cart
-  Smarty
-  SOAP
-  SSL
-  SVN
--- 
This site uses *Atco Software* to book their rides. We **query** their **API** using **SOAP** to get the rides availability and then block any days that are booked from showing in the **calendar date picker** for all their rides. We store the availability info in a **Mysql database** which we then **query** to create the **calendars**. When a user decides to book a ride we then  **query** *Atco’s* **API** to confirm that the rides is still available. We then collect all the information required to reserve the ride on our **secure server**. Once all information is collected we use **curl** to **post** the reservation to *Atco’s* **secure servers**. A confirmation page is displayed and **email** is sent to the user and to *Silver Falls Ranch*.

Aside from the **e-commerce** capabilities of the site there are **slide shows** and **inline pop-ups** to enhance the users experience. **Javascript** is also used to provide **compatibility** with older *Microsoft* browsers and display the **PNG graphics** which are **absolutely positioned** over other elements of the page.
