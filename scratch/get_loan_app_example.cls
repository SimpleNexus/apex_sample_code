String loanApplicationGuid = 'a53f8662-dc2f-4b81-838b-5a665c7d8dcb';
LoanApplicationsClient client = new LoanApplicationsClient();
LoanApplication loanApplication = client.getLoanApplication(loanApplicationGuid);
System.debug('LOAN APP GUID: ' + loanApplication.guid);
System.debug('LOAN APP CREATED_AT: ' + loanApplication.createdAt);
System.debug('LOAN APP VALUES FIRST NAME: ' + loanApplication.values.get('first_name'));