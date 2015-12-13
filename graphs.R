####Total allocations
## By year , log(grant dollars per month)

##one year - log adjusted due to the degree of variation; monthly grant dollars divided by duration (months)
ggplot(newdata, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 
##two years 2013-2015
ggplot(newdata1, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 

## 2012- 2015
ggplot(newdata2, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 

# 2008 -2015
ggplot(newdata3, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type))
# 1999 - 2015 ### hypotheses: 1. NSF spending more money at year end; 2. grants allocated in research stages 

# 1999 - 2015 separate three types plot
ggplot(newdata4, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type))+ facet_wrap(~action_type) 

#christmas tree - grant dollars per month is a function of the research/duration - will a project with a longer duration be allocated more grant dollars? 
ggplot(schoolsall, aes(y=res_duration, x=log(costmon))) + geom_point(aes(color = action_type))


### the above thing - separated by type - newer grants more short-term 
ggplot(schoolsall, aes(y=res_duration, x=log(costmon))) + geom_point(aes(color = action_type))+ facet_wrap(~action_type)

### was there a government shutdown - gap in data; 2004 - only 200 observations versus 20,000; 
ggplot(schoolsall,aes(x=obligation_action_date, y = log(costmon))) + geom_point(aes(color= action_type )) 

### density of the grants; division is bimodal (new, continuation)
ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6)

### density of grant dollars by subject - 
ggplot(schoolsall, aes(x=log(costmon), fill=cfda_program_title)) + geom_density(alpha = 0.6) + facet_wrap(~cfda_program_title)

### density of grants by recipient type 
ggplot(schoolsall, aes(x=log(costmon), fill=recipient_type)) + geom_density(alpha = 0.6) + facet_wrap(~recipient_type)

### density of grants by action type and recipient type 
ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6) + facet_wrap(~recipient_type)

### density of grants by action type and by states 
ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6) + facet_wrap(~principal_place_state_code)

### density of grant dollars by subject AND action type; more common to renew or finance the new research 
ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6) + facet_wrap(~cfda_program_title)




