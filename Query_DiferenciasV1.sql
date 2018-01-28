
select  c.* from
        
(SELECT cdciagru,cdsinies,cdnumpol,ctvrspol,cdobjtp,
cdconrec,tcramdgs,tcsubram,cobertura,tccdmone,tctipres,
sum(IMIMDE100) as imde100_coas,
sum(IMGATO100) as imga100_coas ,
sum(IMSALV100) as imsa100_coas ,
sum(IMRECU100) as imre100_coas ,
sum(IMIVA100)  as imva100_coas ,
sum(IMIMDECOA) as imdecoa_coas ,
sum(IMGATOCOA) as imgacoa_coas ,
sum(IMSALVCOA) as imsacoa_coas ,
sum(IMRECUCOA) as imrecoa_coas ,
sum(IMIVACOA)  as imvacoa_coas
FROM  coaseguro.aotcoas 
GROUP BY cdciagru,cdsinies,cdnumpol,ctvrspol,cdobjtp,
cdconrec,tcramdgs,tcsubram,cobertura,tccdmone,tctipres
) a
cross join
(SELECT cdciagru,cdsinies,cdnumpol,ctvrspol,
cdobjtp,cdconrec,tcramdgs,tcsubram,cobertura,tccdmone,tctipres,
sum(IMIMDE100) as imde100_cont,
sum(IMGATO100) as imga100_cont ,
sum(IMSALV100) as imsa100_cont ,
sum(IMRECU100) as imre100_cont ,
sum(IMIVA100)  as imva100_cont ,
sum(IMIMDECOA) as imdecoa_cont ,
sum(IMGATOCOA) as imgacoa_cont ,
sum(IMSALVCOA) as imsacoa_cont ,
sum(IMRECUCOA) as imrecoa_cont ,
sum(IMIVACOA)  as imvacoa_cont 
FROM  coaseguro.aotcont
GROUP BY cdciagru,cdsinies,cdnumpol,ctvrspol,cdobjtp,cdconrec,tcramdgs,tcsubram,cobertura,tccdmone,tctipres
) b
inner join coaseguro.aotcont c
on 
(a.cdciagru = c.cdciagru 
and a.cdsinies = c.cdsinies
and a.cdnumpol = c.cdnumpol
and a.ctvrspol = c.ctvrspol
and a.cdobjtp  = c.cdobjtp
and a.cdconrec = c.cdconrec
and a.tcramdgs = c.tcramdgs
and a.tcsubram = c.tcsubram
and a.cobertura = c.cobertura
and a.tccdmone = c.tccdmone
and a.tctipres = c.tctipres
) 


where 
	a.cdciagru = b.cdciagru 
and a.cdsinies = b.cdsinies
and a.cdnumpol = b.cdnumpol
and a.ctvrspol = b.ctvrspol
and a.cdobjtp  = b.cdobjtp
and a.cdconrec = b.cdconrec
and a.tcramdgs = b.tcramdgs
and a.tcsubram = b.tcsubram
and a.cobertura = b.cobertura
and a.tccdmone = b.tccdmone
and a.tctipres = b.tctipres
and (imde100_coas <> imde100_cont
or imga100_coas <> imga100_cont
or imsa100_coas <> imsa100_cont
or imre100_coas <> imre100_cont
or imva100_coas <> imva100_cont
or imdecoa_coas <> imdecoa_cont
or imgacoa_coas <> imgacoa_cont
or imsacoa_coas <> imsacoa_cont
or imrecoa_coas <> imrecoa_cont
or imvacoa_coas <> imvacoa_cont)
;