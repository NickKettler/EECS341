
-- create database and user, grant privileges to user
create database clevelandbrews;
create user 'mysql_username'@'localhost' identified by 'mysql_password';
grant all on clevelandbrews.* to 'mysql_username'@'localhost';
flush privileges;

-- select the database and create tables
use clevelandbrews;


create table brewery (brewery_id numeric(5,0), brewery_name varchar(100), address varchar(256),
neighborhood varchar(100), website varchar(100), primary key (brewery_id));
create table user (user_id numeric(10,0), username varchar(20), password varchar(50), primary key
(user_id));
create table brews(brew_id numeric(5,0), brew_name varchar(100), brewery_id numeric(5,0), brew_type
varchar(100), being_sold varchar(100), primary key (brew_id), foreign key (brewery_id) references
brewery);
create table brew_review(brew_rev_id numeric(10,0), user_id numeric(10,0), brew_id numeric(5,0),
brew_rev_value numeric(1,0), primary key (brew_rev_id), foreign key (user_id) references user, foreign
key (brew_id) references brews);
create table brewery_review(brewery_rev_id numeric(10,0), user_id numeric(10,0), brewery_id
numeric(5,0), brewery_rev_value numeric(1,0), primary key (brewery_rev_id), foreign key (user_id)
references user, foreign key (brewery_id) references brewery);
insert into brews (brew_id, brew_name, brewery_id, brew_type, being_sold) values
(1, ‘Wikked Sheryl\’s Blush Pale Ale’, 2, ‘Ale’, ‘yes’),
(2, ‘Redemption Saison’, 2, ‘Ale’, ‘yes’),
(3, ‘Doc\’s Kentucky Common’, 2, ‘Ale’, ‘yes’),
(4, ‘Breathitt County Blonde Ale’, 2, ‘Ale’, ‘yes’),
(5, ‘Cheating the Gallows Pumpkin Ale’, 2, ‘Ale’, ‘yes’),
(6, ‘Old Abe American Strong Ale’, 2, ‘Ale’, ‘yes’),
(7, ‘Jailbreak Churro Brown Ale’, 2, ‘Ale’, ‘yes’),
(8, ‘Bad Tom Smith American Brown Ale’, 2, ‘Ale’, ‘yes’),
(9, ‘Fink Red Rye’, 2, ‘Ale’, ‘yes’),
(10, ‘American Outlaw Session IPA’, 2, ‘IPA’, ‘yes’),
(11, ‘Hazy River NE IPA’, 2, ‘IPA’, ‘yes’),
(12, ‘Jackson Hustler Belgian Wit’, 2, ‘Wheat’, ‘yes’),
(13, ‘13 Preachers Marzen Lager’, 2, ‘Lager’, ‘yes’),
(14, ‘Tombstone Chocolate Stout’, 2, ‘Stout’, ‘yes’),
(15, ‘Coal Hearted Killer Russian Imperial Stout’, 2, ‘Stout’, ‘yes’),
(16, ‘Bad Luck Coffee Porter’, 2, ‘Porter’, ‘yes’),
(17, ‘Gotta Keep L-I-V-I-N’, 17, ‘Ale’, ‘yes’),
(18, ‘Tyndall Effect’, 17, ‘IPA’, ‘yes’),
(19, ‘Yellow Dwarf Star’, 17, ‘IPA’, ‘yes’),
(20, ‘Dew of the Universe’, 17, ‘IPA’, ‘yes’),
(21, ‘Jolly White IPA’, 17, ‘IPA’, ‘yes’),
(22, ‘Jolly American Wheat’, 17, ‘Wheat’, ‘yes’),
(23, ‘Cold Beer Here!’, 17, ‘Lager’, ‘yes’),
(24, ‘Jolly Oatmeal Stout with Coffee’, 17, ‘Stout’, ‘yes’),
(25, ‘Pumpion’, 17, ‘Stout’, ‘yes’),
(26, ‘From Jolly With Love’, 17, ‘Stout’, ‘yes’),
(27, ‘Jolly Porter’, 17, ‘Porter’, ‘yes’);
insert into brewery (brewery_id, brewery_name, address, neighborhood, website) values
(1, ‘Avon Brewing Company’, ‘37040 Detroit Rd, Cleveland’, ‘Avon’, ‘https://avonbrewingcompany.com/’),
(2, ‘Bad Tom Smith Brewing’, ‘1836 W 25th Street Cleveland’, ‘Ohio City’,
‘http://www.badtomsmithbrewing.com/’),
(3, ‘Boss Dog Brewing Co.’, ‘2179 Lee Rd, Cleveland’, ‘Cleveland Heights’,
‘http://www.bossdogbrewing.com/’),
(4, ‘The Bottlehouse Brewery And Meadery’, ‘2050 Lee Rd, Cleveland’, ‘Cleveland Heights’,
‘http://bossdogbrewing.com/’),
(5, ‘The BottleHouse Brewery and Mead Hall’, ‘13368 Madison Ave, Lakewood’, ‘Lakewood’,
‘http://bossdogbrewing.com/’),
(6, ‘The Brew Kettle’, ‘8377 Pearl Rd, Cleveland’, ‘Middleburg Heights’, ‘http://www.thebrewkettle.com/’),
(7, ‘Brick and Barrel’, ‘1844 Columbus Rd, Cleveland’, ‘Downtown’,
‘https://www.brickandbarrelbrewing.com/’),
(8, ‘Butcher and the Brewer’, ‘2043 E 4th St, Cleveland’, ‘Downtown’,
‘http://www.butcherandthebrewer.com/’),
(9, ‘The Cleveland Brewery’, ‘777 E. 185 St, Cleveland’, ‘Collinwood’,

‘http://www.theclevelandbrewery.com/?fbclid=IwAR3-_zX3AO57bO6AY9qKeKDyjhgBbrdlyhX-
zl0U0UczCBYXtVCjYPVFFjY’),

(10, ‘Collision Bend Brewing Company’, ‘1250 Old River Rd, Cleveland’, ‘Downtown’,
‘http://www.collisionbendbrewery.com/’),
(11, ‘Fat Head\’s Brewery + Saloon’, ‘24581 Lorain Rd, North Olmsted’, ‘North Olmsted’,
‘http://www.fatheads.com/’),
(12, ‘Fat Head\’s Brewery + Beer Hall’, ‘17450 Engle Lake Dr, Middleburg Hts’, ‘Middleburg Heights’,
‘http://www.fatheads.com/’),
(13, ‘Forest City Brewery’, ‘2135 Columbus Rd, Cleveland’, ‘Tremont’, null),
(14, ‘Goldhorn Brewery’, ‘1361 E 55th, Cleveland’, ‘University Circle’, ‘https://goldhornbrewery.com/’),
(15, ‘Great Lakes Brewing’, ‘2516 Market Ave, Cleveland’, ‘Ohio City’,
‘https://www.greatlakesbrewing.com/’),
(16, ‘Hansa Brewery and Restaurant’, ‘2717 Lorain Ave, Cleveland’, ‘Ohio City’,
‘https://www.hansabrewery.com/’),
(17, ‘Hofbrauhaus Cleveland’, ‘1550 Chester Ave, Cleveland’, ‘Downtown’,
‘http://www.hofbrauhauscleveland.com/’),
(18, ‘The Jolly Scholar’, ‘11111 Euclid Ave, Cleveland’, ‘University Circle’,
‘https://www.thejollyscholar.com/’),
(19, ‘Market Garden Brewery’, ‘1947 W 25th, Cleveland’, ‘Ohio City’,
‘http://www.marketgardenbrewery.com/’),
(20, ‘Masthead Brewing Co.’, ‘1261 Superior Ave, Cleveland’, ‘Downtown’,
‘https://mastheadbrewingco.com/’),
(21, ‘Nano Brew Cleveland’, ‘1859 W 25th St, Cleveland’, ‘Ohio City’, ‘http://nanobrewcleveland.com/’),
(22, ‘Noble Beast Brewing Co.’, ‘1470 Lakeside Ave E, Cleveland, ‘Downtown’,
‘https://www.noblebeastbeer.com/’),
(23, ‘Platform Beer Co.’, ‘4125 Lorain Ave, Cleveland’, ‘Ohio City’, ‘https://platformbeer.co/’),
(24, ‘Railroad Brewing Co.’, ‘1010 Center R, Avon’, ‘Avon’, ‘http://www.railroadbrewingcompany.com/’),
(25, ‘Rocky River Brewing Company’, ‘21290 Center Ridge Rd, Rocky River’, ‘Rocky River’,
‘http://rockyriverbrewco.com/’),
(26, ‘Saucy Brew Works’, ‘2885 Detroit Rd, Cleveland’, ‘Ohio City’, ‘https://www.saucybrewworks.com/’),
(27, ‘Sibling Revelry Brewing’, ‘29305 Clemens Rd, Cleveland’, ‘Westlake’,
‘http://www.siblingrevelrybrewing.com/’),
(28, ‘Terrestrial Brewing Company’, ‘7524 Father Frascati Drive, Cleveland’, ‘Detroit Shoreway’, null),
(29, ‘Thirsty Dog Brewing Co.’, ‘1075 Old River Road, Cleveland’, ‘Downtown’,
‘https://thirstydogeastbank.com/’),
(30, ‘Willoughby Brewing Co.’, ‘4057 Erie Street, Willoughby’, ‘Willoughby’,
‘http://www.willoughbybrewing.com/’),
(31, ‘Working Class Brewery’, ‘17448 Lorain Ave, Cleveland’, ‘West Park’,
‘https://www.workingclassbrewery.com/’),
(32, ‘BRIM Kitchen + Brewery’, ‘3941 Erie Street, Willoughby’, ‘Willoughby’,
‘http://www.brimbrewery.com/’);