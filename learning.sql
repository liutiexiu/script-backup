#########################
##  collection of sql  ##
#########################



#to be checked
#find first in each group with sql
SELECT MIN(x.id),  -- change to MAX if you want the highest
       x.customer, 
       x.total
  FROM PURCHASES x
  JOIN (SELECT p.customer,
               MAX(total) AS max_total
          FROM PURCHASES p
      GROUP BY p.customer) y ON y.customer = x.customer
                             AND y.max_total = x.total
GROUP BY x.customer, x.total
