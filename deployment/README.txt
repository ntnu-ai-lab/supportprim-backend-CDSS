This file explains how to start the SupportPrim backend application.

Note: all the commands described below assumes the user is at the location: /lhome/amardj/supportprim/supportprim-backend


2. open the link: http://supportprim.idi.ntnu.no:8761/ 
		One can see if all the respective backend services are running as Eureka service.
		
3. open the link: http://supportprim.idi.ntnu.no:5601/app/kibana#/dev_tools/console
		One can verify if the elasticserch engine is running
		
4. open the link: http://supportprim.idi.ntnu.no:20000/swagger-ui.html#/
		One can check if the CBR-Interface is running (Still in the development phase!)
		
		
		

*************************************************************************************************************
 Caution: Below information is for the administrator of the backend services and not ment for general users!
*************************************************************************************************************


(o) Start backend services:	run the command: nohup ./start-backend.sh &
	This command will start all the required backend systems (it may take up to few minutes to get everything running). 
		
		
Note:  Below command will stop all the backend services except the elasticsearch

(o) Start backend services: run the command: ./stop-backend.sh
							
