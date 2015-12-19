####Total allocations
## By year , log(grant dollars per month)

##one year
ggplot(newdata, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 
##two years 2013-2015
ggplot(newdata1, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 

## 2012- 2015
ggplot(newdata2, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 

# 2008 -2015
ggplot(newdata3, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type))
# 1999 - 2015
ggplot(newdata4, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type))
# 1999 - 2015 separate plot
ggplot(newdata4, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type))+ facet_wrap(~action_type) 
ggplot(newdata, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 
ggplot(newdata5, aes(y=starting_date, x=log(costmon))) + geom_point(aes(color = action_type))

ggplot(schoolsall, aes(y=res_duration, x=log(costmon))) + geom_point(aes(color = action_type))
ggplot(schoolsall, aes(y=res_duration, x=log(costmon))) + geom_point(aes(color = action_type))
ggplot(schoolsall, aes(y=res_duration, x=log(costmon))) + geom_point(aes(color = action_type))+ facet_wrap(~action_type)

ggplot(schoolsall,aes(x=obligation_action_date, y = log(costmon))) + geom_point(aes(color= action_type )) 


ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6)

ggplot(schoolsall, aes(x=log(costmon), fill=cfda_program_title)) + geom_density(alpha = 0.6) + facet_wrap(~cfda_program_title)

ggplot(schoolsall, aes(x=log(costmon), fill=recipient_type)) + geom_density(alpha = 0.6) + facet_wrap(~recipient_type)
ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6) + facet_wrap(~recipient_type)

ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6) + facet_wrap(~principal_place_state_code)
ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6) + facet_wrap(~cfda_program_title) 


### aggregate sum historical and plotted by state
sumcolbystate <- aggregate(fed_funding_amount ~ principal_place_state_code + fiscal_year, schoolsall, sum)
ggplot(sumcolbystate, aes(x=fiscal_year, y=fed_funding_amount)) + geom_line(aes(colour = principal_place_state_code))+ facet_wrap(~principal_place_state_code) 

## state summaries by type of research
ggplot(schoolsall, aes(x=cfda_program_title, y=log(costmon), fill = cfda_program_title)) + geom_jitter(alpha=I(1/8), aes(color=cfda_program_title)) + facet_wrap(~principal_place_state_code) 
bigstates <- schoolsall[which(schoolsall$principal_place_state_code == "CA" | schoolsall$principal_place_state_code == "CO" | schoolsall$principal_place_state_code == "DC" | schoolsall$principal_place_state_code == "IL"| schoolsall$principal_place_state_code == "MA"| schoolsall$principal_place_state_code == "NY"| schoolsall$principal_place_state_code == "PA"| schoolsall$principal_place_state_code == "TX"), ]
ggplot(bigstates, aes(x=cfda_program_title, y=log(costmon), fill = cfda_program_title)) + geom_jitter(alpha=I(1/2), aes(color=cfda_program_title)) + facet_wrap(~principal_place_state_code) +guides(colour = guide_legend(override.aes = list(size=12)))

### types of research by recipient types 
ggplot(schoolsall, aes(x=cfda_program_title, y=log(costmon), fill = cfda_program_title)) + geom_jitter(alpha=I(1/2), aes(color=cfda_program_title)) + facet_wrap(~recipient_type) +guides(colour = guide_legend(override.aes = list(size=12)))

### types of research - by new/cont/revise

ggplot(schoolsall, aes(x=action_type, y=log(costmon), fill = action_type)) + geom_jitter(alpha=I(1/2), aes(color=action_type)) + facet_wrap(~cfda_program_title) + guides(colour = guide_legend(override.aes = list(size=12)))