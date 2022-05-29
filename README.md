# FruitApp Devops Tools

Repository for devops tols and components used with the nodejs-rest-http-crud demo set.

## Requirements

### System

- Having the `oc` system package (using `sudo yum install -y openshift-client` command)
- having an Openshift-like (OCP/OKD) cluster running (read [openshift install](https://docs.openshift.com/container-platform/4.10/installing/index.html))
- Having the `bash`, `git` and `make` system package (using `sudo yum install -y make git` command)
- Being logged to an Openshift-like cluster (using `oc login` command)

### Context

Install this repository

```bash
git clone https://github.com/startxfr/nodejs-rest-http-crud.git
cd nodejs-rest-http-crud
```

## Single application

### Project

Run the ```make project``` command to create :

- Project **fruitapp-devel-christophe**
- Project **fruitapp-ci**
- Project **fruitapp-preprod**
- ImageStream **fruitapp-preprod** in **fruitapp-preprod**
- RoleBinding **ci-pipeline-pusher-role** in **fruitapp-preprod**
- Project **fruitapp-prod**
- ImageStream **fruitapp-prod** in **fruitapp-prod**
- RoleBinding **ci-pipeline-pusher-role** in **fruitapp-prod**

### Developpment

Run the ```make devel``` command to create :

- Use the **fruitapp-devel-christophe** project
- Secret **db** with database credentials
- Deployment **db** with ephemeral storage
- Service **db** routing to db devel deployment
- ImageStream **frontend** to host the builded image
- Pipeline **frontend-devel** to describe how to build and push image
- PipelineRun **frontend-firstrun** to trigger a pipeline

### Integration

Run the ```make integration``` command to create :

- Use the **fruitapp-ci** project
- Secret **db-test** with database credentials for test
- Secret **db-r7t** with database credentials for r7t
- Secret **github-credentials** with database credentials
- Deployment **db-test** with ephemeral storage
- Service **db-test** routing to db-test devel deployment
- Deployment **frontend-test** 
- Service **frontend-test** routing to frontend-test devel deployment
- ImageStream **frontend** to host both builded image
- Pipeline **fruitapp-ci** to describe how to build and push image
- PipelineRun **fruitapp:devel** to trigger a pipeline

### Pre-prod

Run the ```make preprod``` command to create :

- Use the **fruitapp-preprod** project
- Secret **db** with database credentials
- Deployment **db** with persistent storage
- Service **db** routing to db devel deployment
- Service **fruitapp-preprod** routing to db devel deployment
- Deployment **frontend-version**
- Service **frontend** routing to frontend-test devel deployment
- ImageStream **frontend:version** to host both builded image

### Production

Run the ```make prod``` command to create :

- Use the **fruitapp-prod** project
- Secret **db** with database credentials
- Deployment **db** with persistent storage
- Service **db** routing to db devel deployment
- Service **fruitapp-prod** routing to db devel deployment
- Deployment **frontend-version**
- Service **frontend** routing to frontend-test devel deployment
- ImageStream **frontend:version** to host both builded image

### Loadgen

Run the ```make loadgen 1 v3.2.10 2``` command to create :

XXXX

### Loaddel

Run the ```make loadgen 1 v3.2.10 2``` command to delete :

XXXX
