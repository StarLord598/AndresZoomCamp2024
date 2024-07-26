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
1. Run ``````

Question 3 Answer: 
- 