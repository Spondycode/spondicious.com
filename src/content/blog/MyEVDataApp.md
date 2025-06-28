---
title: "My EV Data App"
description: "I made an app to record data about charging my Electric car"
pubDate: "Jun 27 2025"
heroImage: "/EVData_header.jpeg"
---

## Scratching My Own Itch

I have been running an electric car for over seven years now and I like to track the energy used to run the car. I know driving an electric car is hugely cheaper than driving a car with and internal combustion engine. I want to know exactly how cheap it is. So I made an app which connects to a database which I can use to easily record all the data from charging sessions. Things like the odometer reading at the time of charge, the kWh added to the car by the charger, time taken, cost of the charge. Other information relevant to public charging like the Network used to charge the car, did I use the RFID card or the app to start it?

This is a complete nerd project and I doubt the average EV driver isn't bothered about all this information, unless they have to record it for business purposes. Tracking costs to get compensation for out of pocket expenses or the business accounts needs. For me I love to see a breakdown of all the data like some people love messing around in spreadsheets.

![MovieInfo App](/EVData_car.jpeg)

## How it Works

The user can create an account in the app and add the details of the car. Make , model, battery size and so on. I use the battery size to get calculations on the amount of energy put into the car based on the percentage showing the battery level in the car. So if the car started charging with 18% left and was charged to 100% the user can put that in the app, press a button to know how many kWh's were added. That info can then be pasted into the next section which is multiplied by the cost per kWh to give a total cost. Of course there is also a place to add notes for any information not caught by the fields in the form.

## Trips with multiple charging sessions

When you go on a long trip it's likely you will want to gather the data from that trip in one place. So I added a section for trips. Tell the database it is for a trip and you can see a list which shows the charging sessions for only that trip.I still have to add the part which shows various calculations based on the data added. What was the cost of the whole trip, number of stops, Notes about the trip put neatly together. Takes time to make these apps as it is just me doing it. Would be good to have other coders working with me sometimes.
