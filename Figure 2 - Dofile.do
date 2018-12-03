
twoway (scatter immigrate_policy position if year==2014 & country<=23 & RADICAL_RIGHT==1, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & RADICAL_LEFT==1, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & (RADICAL_LEFT==0 & RADICAL_RIGHT==0), mlabel(party)) ///
if country==2 | country==3 | country==5 | country==6 | country==7 | country==8 | country==10 | country==11, xlab(1(1)7) ylab(0(1)10) by(country) ytitle("Supporting tougher immigration policy") xtitle("Supporting EU integration")



twoway (scatter immigrate_policy position if year==2014 & country<=23 & family==1, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==2, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==3, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==4, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==5, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==6, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==7, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==8, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==9, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==10, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==11, mlabel(party)) ///
if country==2 | country==3 | country==5 | country==6 | country==7 | country==8 | country==10 | country==11, xlab(1(1)7) ylab(0(1)10) by(country) ytitle("Supporting tougher immigration policy") xtitle("Supporting EU integration") legend(label(1 "Radical right") label(2 "Conservative") label(3 "Liberal") label(4 "Christendemo") label(5 "Socialistic") label(6 "Radical left") label(7 "Green") label(8 "Regionalist") label(9 "No") label(10 "Confessional") label(11 "Agrarian/center"))


*Only highlighted Radical left/right
gen family_euroscep=0
replace family_euroscep=1 if country_lab=="Denmark" & (party=="EL" | party=="FolkB")
replace family_euroscep=2 if country_lab=="Denmark" & party=="DF"
replace family_euroscep=1 if country_lab=="Spain" & party=="Podemos"
replace family_euroscep=1 if country_lab=="Ireland" & (party=="SF" | party=="SP" | party=="PBPA")
replace family_euroscep=1 if country_lab=="Italy" & (party=="RC" | party=="SEL")
replace family_euroscep=2 if country_lab=="Italy" & (party=="LN" | party=="Fdl" | party=="M5S")
replace family_euroscep=1 if country_lab=="Netherlands" & party=="SP"
replace family_euroscep=2 if country_lab=="Netherlands" & (party=="PVV" | party=="SGP")
replace family_euroscep=1 if country_lab=="Germany" & party=="LINKE"
replace family_euroscep=2 if country_lab=="Germany" & (party=="AfD" | party=="NPD")
replace family_euroscep=1 if country_lab=="France" & (party=="PCF" | party=="PG" | party=="FdG")
replace family_euroscep=2 if country_lab=="France" & (party=="FN" | party=="MPF")
replace family_euroscep=2 if country_lab=="United Kingdom" & (party=="CONS" | party=="UKIP")
label define family_euroscep 0"Other" 1"Left-wing" 2"Right-wing"
label values family_euroscep family_euroscep

twoway (scatter immigrate_policy position if year==2014 & family_euroscep==1, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & family_euroscep==0, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & family_euroscep==2, mlabel(party)) ///
if country==2 | country==3 | country==5 | country==6 | country==7 | country==8 | country==10 | country==11, xlab(1(1)7) ylab(0(1)10) by(country) ytitle("Supporting tougher immigration policy") xtitle("Supporting EU integration") legend(label(1 "Left-wing") label(2 "Center") label(3 "Right-wing"))

*Highlighted Radical left/right, Green/socialist & Conservative/christiandemocrat
twoway (scatter immigrate_policy position if year==2014 & country<=23 & family==6, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & (family==7 | family==5), mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & family==1, mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & (family==2 | family==4), mlabel(party)) ///
(scatter immigrate_policy position if year==2014 & country<=23 & (family!=6 & family!=7 & family!=5 & family!=1 & family!=2 & family!=4), mlabel(party)) ///
if country==2 | country==3 | country==5 | country==6 | country==7 | country==8 | country==10 | country==11, xlab(1(1)7) ylab(0(1)10) by(country) ytitle("Supporting tougher immigration policy") xtitle("Supporting EU integration") legend(label(1 "Radical Left") label(2 "Green/Socialist") label(3 "Radical Right") label(4 "Conservative/Christendemo") label(5 "Other"))
