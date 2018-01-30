   SELECT A.NUAPUNTE,
          A.NUMSUBAP,
          A.NUORDAPN,
          A.CDCIAGRU,
          A.TCDOMORI, 
          A.TCTITXCT,
          A.FECMVTO,
          A.CDFILIAC,                            
          A.CDCONREC,
          A.CDNUMPOL,
          A.CTVRSPOL,
          A.CDOBJTP,                             
          A.CTSECOBJ,
          B.CDNUMPOL,
          B.CTVRSPOL,
          B.CDOBJTP,                             
          B.CTSECOBJ,
          A.CDMCT,
          A.CDMCR,
          A.CDRAMDGS,
          A.TCCDMONE,                            
          A.IMPAPUNT,
          A.NOMCAMPD,
          A.NOMCAMPH,
          B.TCCDRARE,                            
          B.TCCDSUBR,
          B.TCTINERE,
          B.CDCAPA,
          B.INTIREAS,                            
          A.NUMTRACO,
          A.AASUSCRI,
          A.CDPERCTA,
          B.CTSECVRS,                            
          B.NUORDCON,
          B.CDAGRCOM                            
   FROM PR1.KTOM60T A, 
        PR1.KTOM45T B                   
   WHERE 
         A.NUAPUNTE BETWEEN '000000000000000000' AND '999999999999999999'
     AND A.CDCIAGRU IN ('AU', 'DA', 'VI', 'SA')          
     AND A.TCTITXCT IN ('062','065')
     AND A.CDFILIAC BETWEEN '0000000000'  AND '9999999999'
     AND A.CDCONREC BETWEEN '0000000000'  AND '9999999999'
     AND A.TCDOMORI       = '05'
     AND A.FECONTAB BETWEEN '20170901' AND '20170931'
     AND B.FECONTAB       = A.FECONTAB          
     AND B.NUAPUNTE       = A.NUAPUNTE 
     AND  A.TCCOPERA >='600'
     AND  A.TCCOPERA <='700'           
     AND B.TCCDRARE BETWEEN '00' AND '99'
     AND B.TCCDSUBR BETWEEN '00' AND '99'
 UNION ALL  
   SELECT A.NUAPUNTE,
          A.NUMSUBAP,
          A.NUORDAPN,
          A.CDCIAGRU,
          A.TCDOMORI, 
          A.TCTITXCT,
          A.FECMVTO,
          A.CDFILIAC,                            
          A.CDCONREC,
          A.CDNUMPOL,
          A.CTVRSPOL,
          A.CDOBJTP,                             
          A.CTSECOBJ,
          B.CDNUMPOL,
          B.CTVRSPOL,
          B.CDOBJTP,                             
          B.CTSECOBJ,
          A.CDMCT,
          A.CDMCR,
          A.CDRAMDGS,
          A.TCCDMONE,                            
          A.IMPAPUNT,
          A.NOMCAMPD,
          A.NOMCAMPH,
          B.TCCDRARE,                            
          B.TCCDSUBR,
          B.TCTINERE,
          B.CDCAPA,
          B.INTIREAS,                            
          A.NUMTRACO,
          A.AASUSCRI,
          A.CDPERCTA,
          B.CTSECVRS,                            
          B.NUORDCON,
          B.CDAGRCOM           
   FROM PR1.KTOH60T A,
        PR1.KTOM45T B                    
   WHERE 
          A.NUAPUNTE BETWEEN '000000000000000000' AND '999999999999999999'
      AND A.CDCIAGRU IN ('AU', 'DA', 'VI', 'SA')          
      AND A.TCTITXCT IN ('062','065','066')
      AND A.CDFILIAC BETWEEN '0000000000'  AND '9999999999'
      AND A.CDCONREC BETWEEN '0000000000'  AND '9999999999'
      AND A.TCDOMORI       = '05'    
      AND A.FECONTAB BETWEEN '20170901' AND '20170931'
      AND B.FECONTAB       = A.FECONTAB          
      AND B.NUAPUNTE       = A.NUAPUNTE   
      AND  A.TCCOPERA >='600'
      AND  A.TCCOPERA <='700'         
      AND B.TCCDRARE BETWEEN '00' AND '99'
      AND B.TCCDSUBR BETWEEN '00' AND '99'   
      AND FEPRECON BETWEEN '0000000' AND '20170901'
   ORDER BY 4,17,23,9,10,11,12,13,21,22,8                           
    WITH UR;

