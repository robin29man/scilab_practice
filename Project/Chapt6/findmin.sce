load('data32');
disp(n,m,data)
table=0;

table(1,[1:n])=1
for i=[2:m],
    table ={table;1,i};
end
disp(table)
// MAIN LOOP
for repeat=[1:R]
    mini=99999;
    temp([1:m],[1:m])=0;
    for i=[1:m-1],
        for j=[i+1:m],
            if table(i,1)<>0&table(j,1)<>0 then
                s=0;
                for k=[1:n]
                    s=s+(data(i,k)-data(j,k))^2;
                end
                temp(i,j)=sqrt(s);
                if temp(i,j)<mini then 
                    mini=temp(i,j);
                    I={i,j};,
                end,
            end
        end,
    end
//    disp(temp)
    disp(mini,I)
//disp(table)
    i=I(1,1);
    j=I(1,2);
    num(1)=table(i,1);
    num(2)=table(j,1);
    for k=[1:num(2)]
        table(i,k+num(1)+1)=table(j,k+1);
    end
    table(i,1)=num(1)+num(2);
    for k=[1:num(2)+1]
        table(j,k)=0;
    end
    disp(table)
    for k=[1:n]
        data(i,k)=(num(1)*data(i,k)+num(2)*data(j,k))/(num(1)+num(2));
        data(j,k)=0;
    end
    disp(data)
end
