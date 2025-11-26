# Buster Block Team 1 Presentation

---

## 1. Monthly Revenue by Rating & Seasonal Rental Patterns

Analyze revenue trends across different months to identify patterns in business performance over time.

<img src="image.png" width="700"/>

The business showed strong growth momentum from February through April 2007. April 2007 represents the peak performance with nearly $28,600 in revenue.

<br>

Determine which film rating categories (G, PG, PG-13, R, NC-17) generate the most revenue for the business.

<img src="image-1.png" width="700"/>

PG-13 films are the top revenue generators, outperforming other categories by approximately $1,200–$3,300. Revenue distribution is relatively balanced across all ratings, with only a 24% difference between highest (PG-13) and lowest (G). Surprisingly, family-friendly G-rated content generates the least revenue despite typically having broader audience appeal.

<br>

Identify seasonal trends in customer rental behavior to understand demand fluctuations throughout the year.

<img src="image-2.png" width="700"/>

Summer completely dominates rental activity with over 92% of all transactions occurring in this season. Fall shows essentially zero activity, confirming the dataset doesn't extend into September–November.

---

## 2. Average Rental Days & Payment by Device Type

- No customers with no device ID - either Apple or Android
- No null or non-numeric amounts in payments or negative payments
- No missing rental dates
- 183 missing return dates  
  - Book still borrowed or not returned?
- 846 zero-day returns (same-day returns)  
  - Dropped for analysis to not skew the data

<br>

<img src="image-16.png" width="700"/>

- Apple users spent around 916k  
- Android users spent around 788k  
- Overall, Apple users generated more revenue, even though the number of users might be similar

<br>

<img src="image-17.png" width="700"/>

- Both groups had an almost identical rental duration:  
  - 4.5 days on average for Android  
  - 4.5 days on average for Apple  
- This suggests device type does not affect how long customers keep a rental

<br>

<img src="image-18.png" width="700"/>

- The payment per rental was extremely close:  
  - Android: 4.20  
  - Apple: 4.22  
- Despite spending more overall, Apple users don't pay more per rental  
  - This means they likely rent more frequently, not at higher prices

<br>

**Conclusion:**  
Device type does not meaningfully impact rental duration or the price customers pay per rental.  
The only major difference is total spend — Apple users contribute more revenue, likely due to higher rental volume.

---

## 3. Revenue, Customers and Category by Store

### Revenue and Customer Count

<div style="display: flex; gap: 10px;">
<img src="image-3.png" width="500"/>
<img src="image-4.png" width="500"/>
</div>

These graphs show that Canada outperforms the Australia store in both revenue and unique customers.

<br>

### Category Revenue Breakdown

<div style="display: flex; gap: 10px;">
<img src="image-19.png" width="500"/>
<img src="image-21.png" width="500"/>
</div>

These graphs show that both stores have very similar, balanced distributions of revenue across film categories. There are slight differences within these, with Canada (left) earning slightly more from Sports, Sci‑Fi, and Animation, while Australia (right) performs better in Family, Action, Horror, and Classics.

---

## 4. Revenue by Country

<img src="image-7.png" width="700"/>

<br>

<img src="image-8.png" width="700"/>

It can be seen that the top 10 countries by amount purchased are the same as the top 10 countries by number of customers.

---

## 5. Category Popularity by Country

<img src="image-10.png" width="700"/>

The graph shows worldwide data of how of ten a film of a category is rented show which category is more popular overall. This being Sports films and the least popular being Music

<br>

<img src="image-13.png" width="700"/>

This graph shows the how many countries each country has as its number 1, this shows a change compared to overall by rental but still consistent in the top are still within one place of what they were. the biggest difference is the new category being no countries top but overall is still rented more than categories such as Music and Horror

<br>

<div style="display: flex; gap: 10px;">
<img src="image-11.png" width="500"/>
<img src="image-12.png" width="500"/>
</div>

These two graphs show us the top and bottom 10 countries by amount of rentals, India making the most and Tonga making the least along with Afghanistan this is is a total difference of 1,554 rentals between Tonga and India causing A rental from Tonga far more influential to the country than a rental in India. This would explain how even though Sports has more rentals overall its animation that is number 1 in more countries.

---

# Interesting Finds

It was found that all movie were released in 2006, however almost 99% of rentals occured in 2005, which indicates that there must be an issue with the data.

There was a country called Runion in the countries table, which may have been for Réunion Island, but that is not a country but a territory.
