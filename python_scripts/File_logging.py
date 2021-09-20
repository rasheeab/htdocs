import shutil
import os
import sys
import datetime
import configparser

## Determine timestamp to append_file
tnow = datetime.datetime.now()
dt_string = tnow.strftime("%Y_%m_%d_%H_%M_%S")

## Assigning uploaded to variable
uploadedFile = str(sys.argv[1])

## Replacing the invalid characters

n_file = uploadedFile.replace('..', '')

## reading config and assigning values

cfg = configparser.ConfigParser()
cfg.read('fileuploadconfig.ini')
pathstr1 = cfg['filepathvalue']['path_root']
staging_path = cfg['filepathvalue']['path_staging']

## concatinating file and path to a new variable
fsource = pathstr1+n_file

## creating a target file with timestamp
destination = staging_path+"\statement_"+dt_string+".csv"

## copying uploaded file to temp location
shutil.copyfile(fsource, destination)

print("<BR>Uploaded files is saved in " +destination )

## creating staging file to 
temp_file = str(staging_path+"\statement_temp_"+dt_string+".csv")

## Removing the top 6 unwanted lines from statement file
n = int(sys.argv[2])
nfirstlines = []

with open(destination,'r') as f, open(temp_file, 'w') as out:
 for x in range(n):
  nfirstlines.append(next(f))
 for line in f:
  out.write(line)
        
## Removing the copied file
os.remove(uploadedFile)

print("<BR>Uploaded statement is staged and saved post parsing as "+temp_file) 

