public class LoanApplicationsClient
{
    private static String LOAN_APPLICATIONS_PATH = '/v1/loan_applications';

    public LoanApplication getLoanApplication(String loanApplicationGuid)
    {
        HttpRequest req = new HttpRequest();
        String endpoint = string.format('callout:SN_API{0}/{1}', new String[] { LOAN_APPLICATIONS_PATH, loanApplicationGuid });
        System.debug(string.format('[LoanApplicationsClient#getLoanApplication({0})] ENDPOINT: {1}', new String[] { loanApplicationGuid, endpoint }));
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        req.setHeader('Authorization', 'Bearer {!$Credential.Password}');
        Http http = new Http();
        HttpResponse res = http.send(req);
        String body = res.getBody();
        System.debug(body);
        LoanApplication loanApplication = LoanApplication.fromJson(body);
        System.debug('LOAN APPLICATION GUID: ' + loanApplication.guid);
        return loanApplication;
    }
}