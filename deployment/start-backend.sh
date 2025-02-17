#!/usr/bin/env bash

# 0.1 Start the elasticsearch and kibana as a prerequsit
nohup  ~/softwares/elastic/elasticsearch-7.6.2/bin/elasticsearch &
sleep 10s

# 0.1 Start the kibana as a prerequsit
nohup  ~/softwares/elastic/kibana-7.6.2-linux-x86_64/bin/kibana &
sleep 10s


# 1. Start the Discovery server
nohup  java -jar ./jars/discovery-server-0.1-SNAPSHOT.jar &
sleep 10s



# 2. Start the mycbr-rest service
nohup java -DMYCBR.PROJECT.FILE=./mycbr-projects/supportprim_cbr_latest.prj -jar ./jars/mycbr-rest-2.0.jar  &
sleep 10s



# 3. Start the infopad-interface service
nohup java -jar ./jars/infopad-interface-0.1-SNAPSHOT.jar  &
sleep 10s



# 4. Start the data-management service
nohup java -jar ./jars/data-management-0.1-SNAPSHOT.jar  &
sleep 10s



# 5. Start the transformer service
nohup java -jar ./jars/transformer-0.1-SNAPSHOT.jar  &
sleep 10s



# 6. Start the mapping service
nohup java -jar ./jars/mapping-0.1-SNAPSHOT.jar  &
sleep 10s



# 7. Start the elastic-interface service
nohup java -jar ./jars/elastic-interface-0.1-SNAPSHOT.jar  &
sleep 10s


# 8. Start the LCA service
nohup  java -jar ./jars/lca-calculator-0.1-SNAPSHOT.jar &
sleep 10s

# 9. Start the cbr-interface service
nohup java -jar ./jars/cbr-interface/cbr-interface-0.1-SNAPSHOT.jar  --spring.config.location=file:./jars/cbr-interface/application.properties &
sleep 10s
