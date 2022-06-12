#!/usr/bin/env bash
docker-compose down
docker volume rm pg_primary_data               
docker volume rm pg_replica1_data
docker volume create pg_replica1_data
docker volume create pg_primary_data 
