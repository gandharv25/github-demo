

/*******************************************************************************************************************************/



	if OBJECT_ID ('PreProd_TheSource..Fleet_Data_Final') is not null
    drop table Fleet_Data_Final; --7257825


    select * 
	into Fleet_Data_Final
	from ##Fleet_Data_Final
	where dim_date_activity_key between 20160701 and 20190630



	--select activity_type,sum(rental_day) as rental_days,sum(activity_day) as activity_days
	--from Fleet_Data_Final
	--group by activity_type 

	--fleet =	CALCULATE(DISTINCTCOUNT(Fleet_Data_Final[fleet_asset_id]),Fleet_Data_Final[Activity Type]= "Rental" || Fleet_Data_Final[Activity Type]= "Relocation",Fleet_Data_Final[Activity Day]>0)

	--utilisation Rate New = DIVIDE((Fleet_Data_Final[Rental Day New]),sum(Fleet_Data_Final[Activity Day]),0)
