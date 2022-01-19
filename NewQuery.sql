create trigger Add_Date
on dbo.Sell_Invoice
instead of insert
as 
begin
insert into Sell_Invoice 
select Sell_Pro_Id, Inv_No ,getdate() from inserted;
end;