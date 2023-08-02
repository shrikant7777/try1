CREATE OR REPLACE FUNCTION AP_TD_X_R152
(

CURSNAME IN OUT Cv_Types.GENTYPE
)
RETURN NUMBER
AS
BEGIN


BEGIN
  OPEN CURSNAME FOR

  SELECT 
      a.COD_CUST,
      a.COD_ACCT_NO,
      a.COD_DEP_NO ,
      a.DAT_VALUE_DATE ,
      a.DAT_MATURITY ,
      a.REF_CUST_PHONE ,
      a.DEPOSIT_AMT ,
      a.AGGREGATED_AMT

  FROM RPT_TD_X_R152 a;
  EXCEPTION
  WHEN OTHERS THEN
    ora_raiserror(SQLCODE, 'Failed to open cursor AP_TD_X_R152', 33);
  RETURN 95;
END;
RETURN 0;
EXCEPTION
  WHEN OTHERS THEN
    ora_raiserror(SQLCODE, 'Failed to execute AP_TD_X_R152', 39);
  RETURN 95;
END;
/
