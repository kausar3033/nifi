Apache NiFi is a software project from the Apache Software Foundation designed to automate the flow of data between software systems. Leveraging the concept of Extract, transform, load, it is based on the "NiagaraFiles" software previously developed by the US National Security Agency (NSA), which is also the source of a part of its present name – NiFi. It was open-sourced as a part of NSA's technology transfer program in 2014.

## Download nifi in any directory 
    https://nifi.apache.org/download.html

Desktop~$ nifi-1.15.3-bin.tar.gz

## Unzip nifi
    tar -xvf nifi-1.15.3-bin.tar.gz 
    
## check unzip file 
    ls 
    
## Change directory
    cd Desktop/nifi-1.15.3/bin
    
## Start nifi 
    Desktop/nifi-1.15.3/bin/~$: ./nifi.sh start
    
## Show log for get login url and pass first time 
    Desktop/nifi-1.15.3~$:cat logs/nifi-app.log    
    
## Set password
    Desktop/nifi-1.15.3/bin/~$: nifi.sh set-single-user-credentials <username> <password>
    
## 
