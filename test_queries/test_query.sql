 SELECT properties.*, avg(property_reviews.rating) as average_rating
  FROM properties
  JOIN property_reviews ON properties.id = property_id
  WHERE city LIKE '%Vancouver%' AND cost_per_night >= 500
  GROUP BY properties.id
  HAVING avg(property_reviews.rating) >= 3
  ORDER BY cost_per_night
  LIMIT 4;