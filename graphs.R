ggplot(newdata, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 
ggplot(newdata1, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 
ggplot(newdata2, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 
ggplot(newdata3, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type))
ggplot(newdata4, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 
ggplot(newdata, aes(y=log(costmon), x=starting_date)) + geom_point(aes(color = action_type)) 
ggplot(newdata5, aes(y=starting_date, x=log(costmon))) + geom_point(aes(color = action_type))

ggplot(schoolsall, aes(y=res_duration, x=log(costmon))) + geom_point(aes(color = action_type))
ggplot(schoolsall, aes(y=res_duration, x=log(costmon))) + geom_point(aes(color = action_type))

ggplot(schoolsall,aes(x=obligation_action_date, y = log(costmon))) + geom_point(aes(color= action_type )) 


ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6)

ggplot(schoolsall, aes(x=log(costmon), fill=cfda_program_title)) + geom_density(alpha = 0.6) + facet_wrap(~cfda_program_title)

ggplot(schoolsall, aes(x=log(costmon), fill=recipient_type)) + geom_density(alpha = 0.6) + facet_wrap(~recipient_type)
ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6) + facet_wrap(~recipient_type)

ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6) + facet_wrap(~principal_place_state_code)
ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6) + facet_wrap(~cfda_program_title)

