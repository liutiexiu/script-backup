#########################
##  collection of hql  ##
#########################


# remove duplicated
# find first rows in each group
# or use rank() instead of row_number() for tie results
select * from (
    select *, 
    row_number() over (partition by school,class,roll order by marks desc) rn
    from students
) t1 where rn = 1;
