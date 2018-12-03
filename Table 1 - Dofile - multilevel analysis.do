*******************************************
****************   ISSUE   ****************
*******************************************
****************   NEITHER
*LOGIT
logit issue_neither std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU i.country i.edatevar ///
ib(1).left_center_right female age education urbanization income
*Multilevel - empty
xtmelogit issue_neither std_asylumseek_pop_nat std_asylumseek_pop_eu || country_date:, var
*Multilevel
xtmelogit issue_neither std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction
xtmelogit issue_neither std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
****************   NATIONAL
*LOGIT
logit issue_National std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU i.country i.edatevar ///
ib(1).left_center_right female age education urbanization income
*Multilevel - empty
xtmelogit issue_National std_asylumseek_pop_nat std_asylumseek_pop_eu || country_date:, var
*Multilevel
xtmelogit issue_National std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction
xtmelogit issue_National std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
****************   EU
*LOGIT
logit issue_EU std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU i.country i.edatevar ///
ib(1).left_center_right female age education urbanization income
*Multilevel - empty
xtmelogit issue_EU std_asylumseek_pop_nat std_asylumseek_pop_eu || country_date:, var
*Multilevel
xtmelogit issue_EU std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction
xtmelogit issue_EU std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
****************   NATIONAL & EU
*LOGIT
logit issue_Both std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU i.country i.edatevar ///
ib(1).left_center_right female age education urbanization income
*Multilevel - empty
xtmelogit issue_Both std_asylumseek_pop_nat std_asylumseek_pop_eu || country_date:, var
*Multilevel
xtmelogit issue_Both std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction
xtmelogit issue_Both std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

************************************************************************************
************************** FIRST AND SECOND ORDER AGENDA! + interaction2 ***********
************************************************************************************
xtmelogit issue_neither std_LEFT_IMM std_LEFT_IMM_EU std_RIGHT_IMM std_RIGHT_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

xtmelogit issue_National std_LEFT_IMM std_LEFT_IMM_EU std_RIGHT_IMM std_RIGHT_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

xtmelogit issue_EU std_LEFT_IMM std_LEFT_IMM_EU std_RIGHT_IMM std_RIGHT_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

xtmelogit issue_Both std_LEFT_IMM std_LEFT_IMM_EU std_RIGHT_IMM std_RIGHT_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var


************************************************************************************
************************** FIRST AND SECOND ORDER AGENDA!  + interaction3 ***********
************************************************************************************
xtmelogit issue_neither std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

xtmelogit issue_National std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

xtmelogit issue_EU std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

xtmelogit issue_Both std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

*Solution
xtmelogit Solve_neither std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

xtmelogit Solve_national std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

xtmelogit Solve_eu std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var

xtmelogit Solve_both std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*********************************************************************************************************
gen _ISSUE_NO=issue_neither
gen _ISSUE_NAT=issue_country_9
gen _ISSUE_EU=issue_eu_9
gen _SOLVE_NO=0 if immigration_decision_level!=.
replace _SOLVE_NO=1 if immigration_decision_level==4
gen _SOLVE_NAT=0 if immigration_decision_level!=.
replace _SOLVE_NAT=1 if immigration_decision_level==2 | immigration_decision_level==3
gen _SOLVE_EU=0 if immigration_decision_level!=.
replace _SOLVE_EU=1 if immigration_decision_level==3 | immigration_decision_level==1

*PERCEPTION
xtmelogit _ISSUE_NO std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
xtmelogit _ISSUE_NAT std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
xtmelogit _ISSUE_EU std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*SOLUTION
xtmelogit _SOLVE_NO std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
xtmelogit _SOLVE_NAT std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
xtmelogit _SOLVE_EU std_LEFT_IMM std_RIGHT_IMM ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
************************************************************************************
************************** Solving the crisis **************************************
************************************************************************************
************************** FIRST AND SECOND ORDER AGENDA! **************************
************************************************************************************
****************   NEITHER
*LOGIT
logit Solve_neither std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU i.country i.edatevar ///
ib(1).left_center_right female age education urbanization income
*Multilevel - empty
xtmelogit Solve_neither std_asylumseek_pop_nat std_asylumseek_pop_eu || country_date:, var
*Multilevel
xtmelogit Solve_neither std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction
xtmelogit Solve_neither std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction2
xtmelogit Solve_neither std_LEFT_IMM std_LEFT_IMM_EU std_RIGHT_IMM std_RIGHT_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var


****************   NATIONAL
*LOGIT
logit Solve_national std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU i.country i.edatevar ///
ib(1).left_center_right female age education urbanization income
*Multilevel - empty
xtmelogit Solve_national std_asylumseek_pop_nat std_asylumseek_pop_eu || country_date:, var
*Multilevel
xtmelogit Solve_national std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction
xtmelogit Solve_national std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction2
xtmelogit Solve_national std_LEFT_IMM std_LEFT_IMM_EU std_RIGHT_IMM std_RIGHT_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var


****************   EU
*LOGIT
logit Solve_eu std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU i.country i.edatevar ///
ib(1).left_center_right female age education urbanization income
*Multilevel - empty
xtmelogit Solve_eu std_asylumseek_pop_nat std_asylumseek_pop_eu || country_date:, var
*Multilevel
xtmelogit Solve_eu std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction
xtmelogit Solve_eu std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction2
xtmelogit Solve_eu std_LEFT_IMM std_LEFT_IMM_EU std_RIGHT_IMM std_RIGHT_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var


****************   NATIONAL & EU
*LOGIT
logit Solve_both std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU i.country i.edatevar ///
ib(1).left_center_right female age education urbanization income
*Multilevel - empty
xtmelogit Solve_both std_asylumseek_pop_nat std_asylumseek_pop_eu || country_date:, var
*Multilevel
xtmelogit Solve_both std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction
xtmelogit Solve_both std_asylumseek_pop_nat std_asylumseek_pop_eu  ///
std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var
*Multilevel - interaction2
xtmelogit Solve_both std_LEFT_IMM std_LEFT_IMM_EU std_RIGHT_IMM std_RIGHT_IMM_EU ///
std_LEFT_PF_IMM std_LEFT_PF_IMM_EU std_RIGHT_PF_IMM std_RIGHT_PF_IMM_EU ///
std_asylumseek_pop_nat std_asylumseek_pop_eu std_imm std_imm_eu std_PF_IMM std_PF_IMM_EU ///
ib(1).left_center_right female age education urbanization income || country_date:, var




