create table hospital_data
   (Hospital_Name varchar(50),	
    Location varchar(25),
    Department	varchar(35),
    Doctors_Count int,	
    Patients_Count	int,
    Admission_Date	date,
    Discharge_Date	date,
    Medical_Expenses float);


	select * from hospital_data;



	

	--Total Number of Patients
	select count(Patients_Count) 
	from hospital_data;




	



	--Count of patients per department
	select distinct department, patients_count
	from hospital_data;



	


	
	--Average Number of Doctors per Hospital
    select hospital_name, 
	cast(avg(doctors_count) as int) 
	from hospital_data
	group by hospital_name;


	




	--Average medical expense per patient
	select hospital_name, 
	cast(avg(medical_expenses) as int) 
	from hospital_data
	group by hospital_name;



	


	
	--Top 3 Departments with the Highest Number of Patients
    select department, Patients_Count 
	from hospital_data
	order by department desc limit 3;





	


	--HIGHEST medical expense
	select hospital_name, medical_expenses
	from hospital_data
	order by medical_expenses desc limit 1;



	


	
	--Hospital with the Maximum Medical Expenses
	select hospital_name, medical_expenses 
	from hospital_data
	order by hospital_name desc limit 1;


	



	--Rank hospitals based on total medical expenses
	select hospital_name , cast(sum(medical_expenses) as int) as total_medical_exp
	from hospital_data
	group by hospital_name
	order by total_medical_exp desc;

	

	

	
	--Daily Average Medical Expenses
	select hospital_name, admission_date, 
	avg(medical_expenses)
	from hospital_data
	group by hospital_name, admission_date
	order by admission_date;



	
	


	--Longest Hospital Stay
	select hospital_name, admission_date,discharge_date,
	(discharge_date- admission_date) as stay_days
	from hospital_data
	order by stay_days desc limit 1;


	
	


	
	--Total Patients Treated Per City
	select distinct location, patients_count
	from hospital_data;


	
	



	
	--Average Length of Stay Per Department
	select department, admission_date,discharge_date,
	(discharge_date- admission_date) as stay_days
	from hospital_data
	order by stay_days;

	



	
	--Identify the Department with the Lowest Number of Patients
	select department, patients_count 
	from hospital_data
	order by department limit 1;


	 


	 --Which city has the highest healthcare demand
	 SELECT location,
     SUM(patients_count) AS total_patients 
	 FROM hospital_data
	 GROUP BY location 
	 ORDER BY total_patients DESC LIMIT 1;




	 


	 --top 3 higher hospital stays linked to higher expenses
	 SELECT hospital_name,
     admission_date,
     discharge_date,
     (discharge_date - admission_date) AS stay_days,
     medical_expenses
	 FROM hospital_data
	 ORDER BY stay_days DESC limit 3;



	 

	 



     
	 
	 
	