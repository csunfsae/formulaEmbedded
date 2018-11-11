/*
 * CSUN FSAE EV 2018
 * ROS NODE: Database Interface
 * Topics Recieved: Filtered Signals
 * Tag: RN1 
 * Summary:
 *   The purpose of this node is to recieve the sensor data after its been filtered for noise. 
 *   It recieves data from the data aqcuisition system and the IMU which is connected via I2C.
 *   It should store data into several database files for the respective analog sensors.
 * Related:
 *   Files: 
 *     - wheel_velocity.db 
 *     - suspension_offset.db 
 *     - tire_pressure.db 
 *     - gravitational_forces.db 
 *     - steering_input.db
 *   Documentation:
 *     - COMP-490-FSAE/Embedded/sqliteUML.html (draw.io)
 *     - COMP-490-FSAE/Embedded/JetsonRos.html (draw.io)
*/

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sqlite3.h>
#include <ctime>
#include <sstream>
#include <fsae_electric_vehicle/wheel_velocity.h>
int counter;

static int callback(void *NotUsed, int argc, char **argv, char **azColName); 
void chatterCallback(const fsae_electric_vehicle::wheel_velocity::ConstPtr& msg);


int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("sinWave", 1000, chatterCallback);
  ros::spin();

  return 0;
}

/**
 * Functions
 */

static int callback(void *NotUsed, int argc, char **argv, char **azColName) {
   int i;
   for(i = 0; i<argc; i++) {
         printf("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
      }
   printf("\n");
   return 0;
}

void chatterCallback(const fsae_electric_vehicle::wheel_velocity::ConstPtr& msg)
{
  counter++;
  sqlite3 *db;
	char *zErrMsg = 0;
	int rc;
	char *sql;
  std::time_t t = std::time(0);
  char os[300] = { '\0' };
  strcat(os, "INSERT INTO front_left (SampleNumber, Value, Time) "); 
  strcat(os ,"VALUES (");
	strcat(os,std::to_string(counter).c_str());
	strcat(os, ", ");
  strcat(os, msg->Value.c_str());
  strcat(os,  ", ");
  strcat(os, std::to_string(t).c_str());
  strcat(os, " );");
	
	rc = sqlite3_open("dataAcquisition.db", &db);

	if( rc ) {
		fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
	} else {
		fprintf(stderr, "Opened database successfully\n");
	}
  ROS_INFO("I heard: [%s]", os);
  /* Create SQL statement */
	sql = (char *)os;

	/* Execute SQL statement */
	rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);

	if( rc != SQLITE_OK ){
		fprintf(stderr, "SQL error: %s\n", zErrMsg);
		sqlite3_free(zErrMsg);
	} else {
		fprintf(stdout, "Records created successfully\n");
	}
	
	sqlite3_close(db);

}
