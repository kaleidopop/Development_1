
#

### aggregate sum historical and plotted by state
sumcolbystate <- aggregate(fed_funding_amount ~ principal_place_state_code + fiscal_year, schoolsall, sum)
ggplot(sumcolbystate, aes(x=fiscal_year, y=fed_funding_amount)) + geom_line(aes(colour = principal_place_state_code))+ facet_wrap(~principal_place_state_code) 

## state summaries by type of research
ggplot(schoolsall, aes(x=cfda_program_title, y=log(costmon), fill = cfda_program_title)) + geom_jitter(alpha=I(1/2), aes(color=cfda_program_title)) + facet_wrap(~principal_place_state_code) +guides(colour = guide_legend(override.aes = list(size=12)))
bigstates <- schoolsall[which(schoolsall$principal_place_state_code == "CA" | schoolsall$principal_place_state_code == "CO" | schoolsall$principal_place_state_code == "DC" | schoolsall$principal_place_state_code == "IL"| schoolsall$principal_place_state_code == "MA"| schoolsall$principal_place_state_code == "NY"| schoolsall$principal_place_state_code == "PA"| schoolsall$principal_place_state_code == "TX"), ]
ggplot(bigstates, aes(x=cfda_program_title, y=log(costmon), fill = cfda_program_title)) + geom_jitter(alpha=I(1/2), aes(color=cfda_program_title)) + facet_wrap(~principal_place_state_code) +guides(colour = guide_legend(override.aes = list(size=12)))

### types of research by recipient types 
ggplot(schoolsall, aes(x=cfda_program_title, y=log(costmon), fill = cfda_program_title)) + geom_jitter(alpha=I(1/2), aes(color=cfda_program_title)) + facet_wrap(~recipient_type) +guides(colour = guide_legend(override.aes = list(size=12)))

### types of research - by new/cont/revise

<<<<<<< HEAD
ggplot(schoolsall, aes(x=action_type, y=log(costmon), fill = action_type)) + geom_jitter(alpha=I(1/2), aes(color=action_type)) + facet_wrap(~cfda_program_title) + guides(colour = guide_legend(override.aes = list(size=12)))




ggplot(schoolsall, aes(x=logcost, fill=monstar)) + geom_density(alpha = 0.2) + facet_wrap(~action_type)+geom_vline(data=schoolsall, aes(xintercept=mean(logcost),  colour=action_type), linetype="dashed", size=1)+ guides(fill = guide_legend(override.aes = list(colour = NULL)))




ggplot(schoolsall, aes(x=log(costmon), fill=mondec)) + geom_density(alpha = 0.2) + facet_wrap(~action_type) 

ggplot(schoolsall, aes(x=monstar, y=log(costmon), fill=monstar)) + geom_boxplot() 
ggplot(schoolsall, aes(x=mondec, y=log(costmon), fill=mondec)) + geom_boxplot() 


ggplot(schoolsall, aes(x=monstar, y=log(costmon), fill=monstar)) + geom_boxplot() + facet_wrap(~action_type)
ggplot(schoolsall, aes(x=mondec, y=log(costmon), fill=mondec)) + geom_boxplot() + facet_wrap(~action_type)

ggplot(schoolsall, aes(x=monstar, y=log(costmon), fill=monstar)) + geom_boxplot() + facet_wrap(~cfda_program_title)
ggplot(schoolsall, aes(x=mondec, y=log(costmon), fill=mondec)) + geom_boxplot() + facet_wrap(~cfda_program_title)


ggplot(schoolsall, aes( x=log(costmon), color=monstar)) + geom_density(alpha = 0.2) + scale_fill_manual(values=c("#9494b7", "#8585ad", "#7676a3", "#666699", "#5c5c89", "#52527a", "#48486b", "#3d3d5c", "#33334c"))
ggplot(schoolsall, aes( x=log(costmon), fill=mondec)) + geom_density(alpha = 0.2)+ facet_wrap(~mondec)


ggplot(schoolsall, aes(x=monstar, y=log(costmon), fill=monstar)) + geom_jitter(alpha=I(1/2), aes(color=action_type))+ facet_wrap(~cfda_program_title)+ guides(colour = guide_legend(override.aes = list(size=12)))
ggplot(schoolsall, aes(x=monstar, y=log(costmon), fill=monstar)) + geom_jitter(alpha=I(1/2), aes(color=action_type))+ facet_wrap(~recipient_type)+ guides(colour = guide_legend(override.aes = list(size=12)))
ggplot(schoolsall, aes(x=monstar, y=log(costmon), fill=action_type)) + geom_boxplot()+ facet_wrap(~action_type)


print(levels(schoolsall$monstar))
schoolsall$monstar <- factor(schoolsall$monstar,levels(schoolsall$monstar)[c(5, 4, 8, 1, 9, 7, 6, 2, 12, 11, 10, 3)])

print(levels(schoolsall$mondec))
schoolsall$mondec <- factor(schoolsall$mondec,levels(schoolsall$mondec)[c(5, 4, 8, 1, 9, 7, 6, 2, 12, 11, 10, 3)])


ggplot(schoolsall, aes(x=mondec, y=logcost)) + geom_point() + geom_smooth(method="lm")
=======
ggplot(schoolsall, aes(x=action_type, y=log(costmon), fill = action_type)) + geom_jitter(alpha=I(1/2), aes(color=action_type)) + facet_wrap(~cfda_program_title) + guides(colour = guide_legend(override.aes = list(size=12))) 
>>>>>>> origin/notes-and-comments
