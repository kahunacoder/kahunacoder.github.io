--- 
author: admin
status: publish
layout: post
projectID: "40"
Date: "2/1/2007"
Title: "Kauai Visitors Bureau - v2"
Status: "1"
url: "#"
image: "kvb.jpg"
client: "Graphic Communication"
Owner: "Kauai Visitors Bureau"
Location: "Kauai, Hawaii"
categories:
- Tourism
tags:
- AJAX
-  CMS
-  CSS
-  Google Search
-  HTML
-  Javascript
-  jQuery
-  MySql
-  PHP
-  Smarty
-  SVN
-  Tables
-  XML
--- 
They wanted to **redesign** their *Kauai Discovery* site to use **lager images** which would better show off the beauty of Kauai. Their previous site was designed with **smaller monitors** and **resolutions** that users had at the time. Their **stats** reflected that the **majority** of their visitors could support **larger page sizes**. The **custom navigation** for this site has a **thumbnail image** for each **section** in a **pull down menu** with **rounded corners** over a **large image**. The only way to achieve the **rounded corners** in all **browsers** including **MSIE 6** was to put the **menus** in **table**s and place **transparent gifs** in the **corners**. The **thumbnail images** for **navigation** also presented a problem with the **number of concurrent request per page load**. This was solved by using a technique called **css sprites** where the **images are combined into a single image** and then **background position** is used to select the image for display. **Ajax** and **iframes** are used to **display navigation elements** and **member thumbnail images** without page reloads.

All information comes from the *Hawaii Visitors and Conventions Bureau* **database** via a **xml http post** to a **script** on the *Kauai Visitors Bureau* site. Kauai members update their information on the *HVCB* site and that information is then used to **create their Kauai page**.
