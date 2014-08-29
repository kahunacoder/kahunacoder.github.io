---
author: admin
status: publish
comments: false
date: 2009-02-13 15:46:51+00:00
layout: default
slug: holoholo-charters-2
title: Holoholo Charters - II
modal-id: 34
img: hhc.jpg
alt: Holoholo Charters - II
categories:
- E-Commerce
- Tourism
- Tours
tags:
- AJAX
- Animated Gifs
- CMS
- CSS
- Curl
- E-commerce
- HTML
- ImageMagick
- Javascript
- jQuery
- MySql
- PayPal
- PHP
- Smarty
- SOAP
- SSL
- SVN
---
Holoholo Charters web site was a **redesign** to take advantage of the higher **resolutions** and larger **monitors** used by web surfers today. We also **streamlined** the **checkout process** so users could make a **reservation** from Holoholo's site using their **secure server** and **Paypal** without leaving their site.

To achieve this we **integrated** their **reservation system** from [Atco Software](http://atcosoftware.net/) into thier new site. We used Atco Software's **API** to populate a **Mysql** **database** with the availability of their different tours. The **database** was **queried** and the **data** was used to populate **calendar date pickers** with only available dates for each of the tours. Once a tour was selected we **checked the availability** in **real time** to assure that the tour was still available, if it wasn't, a selection of dates that were available for that tour was displayed. The user could then fill out **forms** to collect all the necesarry **data** to make the reservation. The reservation was paid for using **Paypal's API** and **curl** as the **credit card processor**. Once a successful transaction was completed the Atco reservation **API** and **curl** was used to reserve the tour and update the availability of that tour. A **confirmation page** was displayed and an **email** was sent to the user and Holoholo Charters.



The site features lots of **photos**. Different **slide shows** are viewable through out the site. Some **load** and **play** **automatically** while others are **loaded** **on-demand** to **reduce page down load size**. The site also features **passenger contributed ** photos and allows passengers to **upload photos** from their tour. Photos are **cropped** and or **re-sized** to fit the **layout** of the site using **ImageMagick**. There is also a weather page which displays **current weather** and **surf conditions** updated daily.



The site also features a custom **CMS** to allow Holoholo's staff to **make changes** and **approve passenger** **submitted** photos.
