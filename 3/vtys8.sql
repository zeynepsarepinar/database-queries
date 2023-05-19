CREATE DATABASE vtysdenemeuc ON PRIMARY
( 
NAME= vtys_data, 
FILENAME = 'C:\vtysdenemeuc\vtysdata.mdf', 
SIZE = 8MB, 
MAXSIZE = unlimited, 
FILEGROWTH = 10%
) 
LOG ON 
( 
NAME= vtys_log, 
FILENAME = 'C:\vtysdenemeuc\vtysdata.ldf', 
SIZE = 8MB, 
MAXSIZE = unlimited, 
FILEGROWTH = 10%
) 