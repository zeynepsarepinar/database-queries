CREATE DATABASE vtysdeneme ON PRIMARY
( 
NAME= vtys_data, 
FILENAME = 'C:\vtysdeneme\vtysdata.mdf', 
SIZE = 8MB, 
MAXSIZE = unlimited, 
FILEGROWTH = 10%
) 
LOG ON 
( 
NAME= vtys_log, 
FILENAME = 'C:\vtysdeneme\vtysdata.ldf', 
SIZE = 8MB, 
MAXSIZE = unlimited, 
FILEGROWTH = 10%
) 

 

 