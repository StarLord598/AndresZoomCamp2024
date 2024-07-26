## Question 1. Knowing docker tags

Run the command to get information on Docker 

```docker --help```

Now run the command to get help on the "docker build" command:

```docker build --help```

Do the same for "docker run".

Which tag has the following text? - *Automatically remove the container when it exits* 

- `--delete`
- `--rc`
- `--rmc`
- `--rm`

Steps Taken to Answer Question: 
1. Run ```docker run --help```
2. Search up answer to question

Question 1 Answer: 
- After running ```docker run --help```, I am able to identify the the tag for the following text is ```--rm```; "Automatically remove the container when it exits"

## Question 2. Understanding docker first run 

Run docker with the python:3.9 image in an interactive mode and the entrypoint of bash.
Now check the python modules that are installed ( use ```pip list``` ). 

What is version of the package *wheel* ?

- 0.42.0
- 1.0.0
- 23.0.1
- 58.1.0

Steps Taken to Answer Question: 
1. Run ```docker run -it python:3.9 bash```
a. 'docker run' runs a docker container
b. '-it' runs the container in interactive mode with a terminal
c. 'python:3.9' is the docker image to use from question
d. 'bash' instructs the container to provide an interactive shell inside the container
2. Run ```pip list``` to view the list of packages used in docker image

Question 2 Answer: 
- None of the above, currently *wheel* is running on 0.43.0, as of 7/25/24

# Prepare Postgres

Run Postgres and load data as shown in the videos
We'll use the green taxi trips from September 2019:

```wget https://github.com/DataTalksClub/nyc-tlc-data/releases/download/green/green_tripdata_2019-09.csv.gz```

You will also need the dataset with zones:

```wget https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv```

Download this data and put it into Postgres (with jupyter notebooks or with a pipeline)


## Question 3. Count records 

How many taxi trips were totally made on September 18th 2019?

Tip: started and finished on 2019-09-18. 

Remember that `lpep_pickup_datetime` and `lpep_dropoff_datetime` columns are in the format timestamp (date and hour+min+sec) and not in date.

- 15767
- 15612
- 15859
- 89009

Steps Taken to Answer Question: 
1. Run ```mkdir data``` in homework_week1 directory to store this data in the data folder for 
2. Run ```wget https://d37ci6vzurychx.cloudfront.net/misc/taxi_zone_lookup.csv``` for new taxi_zone_lookup file
3. Run ```wget https://github.com/DataTalksClub/nyc-tlc-data/releases/download/green/green_tripdata_2019-09.csv.gz```
a. ```gunzip green_tripdata_2019-09.csv.gz``` to collecting the gree trip data per the instructions
4. Run the following docker run command to get docker up and started
```
docker run -d \
--name pg-database \
-e POSTGRES_USER=root \
-e POSTGRES_PASSWORD=root \
-e POSTGRES_DB=ny_taxi \
-p 5432:5432 \
postgres:13
```
5. Forward the codespaces port to 5432 to access via local machine
6. install ```jupyternotebook```, ```psycopg2-binary```, ```sqlalchemy``` and  onto my codespaces environment
7. perform some basic pandas analysis on top of it to extract answer
a. Analysis of my python code can be found in my jupyter notebook; 
    /workspaces/AndresZoomCamp2024/Week_1_Docker_SQL_GCP_Terraform/Homework_1/Homework1_jupyter_notebook.ipynb



Question 3 Answer: 
- 15612

## Question 4. Longest trip for each day

Which was the pick up day with the longest trip distance?
Use the pick up time for your calculations.

Tip: For every trip on a single day, we only care about the trip with the longest distance. 

- 2019-09-18
- 2019-09-16
- 2019-09-26
- 2019-09-21

Steps Taken to Answer Question: 
1. perform some basic pandas analysis on top of it to extract answer
a. Analysis of my python code can be found in my jupyter notebook; 
    /workspaces/AndresZoomCamp2024/Week_1_Docker_SQL_GCP_Terraform/Homework_1/Homework1_jupyter_notebook.ipynb

Question 4 Answer: 
- The pick-up day with the longest trip distance is 2019-09-26 with a distance of 341.64

## Question 5. Three biggest pick up Boroughs

Consider lpep_pickup_datetime in '2019-09-18' and ignoring Borough has Unknown

Which were the 3 pick up Boroughs that had a sum of total_amount superior to 50000?
 
- "Brooklyn" "Manhattan" "Queens"
- "Bronx" "Brooklyn" "Manhattan"
- "Bronx" "Manhattan" "Queens" 
- "Brooklyn" "Queens" "Staten Island"

Steps Taken to Answer Question: 
1. perform some basic pandas analysis on top of it to extract answer
a. Analysis of my python code can be found in my jupyter notebook; 
    /workspaces/AndresZoomCamp2024/Week_1_Docker_SQL_GCP_Terraform/Homework_1/Homework1_jupyter_notebook.ipynb

Question 5 Answer: 
    None of the options are correct as no Borough had a sum of total_amount exceeding 50,000 on 2019-09-18.
    Explanation:
    Bronx: 397.84
    Queens: 37.29
    Manhattan: 16.71
    None of the Boroughs meet the required threshold.

## Question 6. Largest tip

For the passengers picked up in September 2019 in the zone name Astoria which was the drop off zone that had the largest tip?
We want the name of the zone, not the id.

Note: it's not a typo, it's `tip` , not `trip`

- Central Park
- Jamaica
- JFK Airport
- Long Island City/Queens Plaza

Steps Taken to Answer Question: 
1. perform some basic pandas analysis on top of it to extract answer
a. Analysis of my python code can be found in my jupyter notebook; 
    /workspaces/AndresZoomCamp2024/Week_1_Docker_SQL_GCP_Terraform/Homework_1/Homework1_jupyter_notebook.ipynb

Question 6 Answer: 
- Was not able to answer this question as 'Astoria' was removed from the zones table

## Terraform

In this section homework we'll prepare the environment by creating resources in GCP with Terraform.

In your VM on GCP/Laptop/GitHub Codespace install Terraform. 
Copy the files from the course repo
[here](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/01-docker-terraform/1_terraform_gcp/terraform) to your VM/Laptop/GitHub Codespace.

Modify the files as necessary to create a GCP Bucket and Big Query Dataset.