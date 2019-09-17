--- Write a select query to return the 'InvoiceID' and a field called 'Status' from the invoices table. The status field 
--- is either 'Late' or 'Paid' or 'Pending'. The status field will be 'Late' if the InvoiceDueDate is BEFORE 2016-04-30. 
--- The status field will be 'Paid' if there is a value in the PaymentDate field. Lastly, if the invoice isn't late or 
--- paid, the status will be 'Pending'. Do not sort the results.

SELECT InvoiceID,

  CASE

      WHEN InvoiceDueData <= '2016-04-30' THEN "Late"

      WHEN PaymentDate != NULL THEN "Paid"
      
      ELSE "Pending"

  END AS Status

FROM invoices;
