Use assigmenttest
go
Create Table LogInfo
(
	LogId int not null identity(1,1) primary key,
	LogStatus varchar(50) not null,
	LogDescription varchar(500) null
)