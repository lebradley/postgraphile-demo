# Postgraphile Demo

[Postgraphile](https://www.graphile.org/postgraphile/quick-start-guide/) automatically takes a PostgreSQL database and provides a GraphQL server. 

## Run the demo 

Requires docker and npm. In your commandline:

```
# build 
docker build -t db . 

# run
docker run --name crate -p 5555:5432 db
```

This will give you a running PostgreSQL database with some test data. You can view it using a tool like [Postico](https://eggerapps.at/postico/). 

![image of postico](postico.png)


The login credentials will be: 

```
user: postgres
password: postgres
host: localhost
port: 5555
database: micro
```

To run postGraphile in watcher mode:

```
npm i 
npm run connect:watch 
```

This gives us a GraphQL api and Graphiql playground at http://localhost:5000/graphiql. You can select information using queries, such as:

```
# All Candidate info
{
  allCandidates {
    nodes {
      candidatename
      skill
    }
  }
}

# All job titles
{
  allJobs {
    nodes {
      title
    }
  }
}
```