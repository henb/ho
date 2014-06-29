Hotel Advisor
=========
This a prototype of the application, where
users can add a hotels which they have visited and put а rating for them.

Lets start with this simple workflow

1. As a user I can register/sign in.
2. As a user I can see a list of hotels.
3. As a user I can add a hotel.
Hotel has next attributes:
  1. title(required)
  2. star rating(required)
  3. breakfast included?(yes/no)
  4. room description
  5. photo
  6. price for room
  7. address(different object) ­ country, state,  city, street
4. As a user on hotel details page I can rate a hotel from 1 to 5 with comment.
5. On the landing page display top 5 hotels with the best rating.

Getting started
-----------
##### Clone repository
```sh
git clone https://github.com/henb/hotel-advisor.git
cd hotel-advisor
bundle install
```
##### Cloudinary (Rails & CarrierWave integration)

1. Register on http://cloudinary.com/
2. Download ***cloudinary.yml***
3. Move in *hotel-advisor/config*

###### Good Luck!
