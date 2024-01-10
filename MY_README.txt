Hi. This is my readme file for my task!


=====================FIRST DESCRIPTION=====================

in folder web you see new folder db with mysql db dump. 
For you interested table boa_save_cart_data, where will be located user id and its cart info.

In root folder you see postman_collection file with one POST request to the table.


=====================PREPARATION STEPS=====================

Create 'boa' DB in your mysql

Load tables files into this DB (3 files) - familiarize yourself with the database architecture and logical connections

Install NodeJs (if it required)

Install npm_modules in root folder, web and fronrend

Change following parameters according to your in the .env file.
        DATABASE_URL
        DB_USER
        DB_PASSWORD
        DB_HOST
        DB_PORT
        DB_NAME


======================ACCORDING TASK======================

I couldn,t understand how to use logic without autorization, I create a isLoggedIn const 
for more convinient handling. Automaticly it is defined as a true.

In folder web, into index.js file was implemented logic second express app (MySQLapp)
for connecting to the database and sending data to it.

Al my logic you can see in /extensions/checkout-ui/src/Checkout.jsx

Main problem is that i get 
    checkout-ui.js:19523 Error: NetworkAccessDeniedError: permission to use fetch() must be specified under [capabilities] with flag "network_access = true"; this can be done within your extension's configuration. View the docs for more information:

Therefore i couldn't send info in DB.
I tried to decided it absolutely different ways, but it is there.

It didn't stop me and i just implement all logic and proove it in console. 
That all my data and info is requires and right. 
I create postman_collestion and check body data for input in DB - it works absolutely correct.

Second problem - i didn't understand how to connect liquid file and style with my Banner.
My temporary desicion - to make a template according to your task and to know from you how it work in the future :)


======================FINAL======================

Thank you for your time and feedback in advance!
Have a nice day!