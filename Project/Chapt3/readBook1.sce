
[fd,SST,Sheetnames,Sheetpos] = xls_open('Book1.xls')

[Value,TextInd] = xls_read(fd,Sheetpos(1))

mclose(fd)
 
 
