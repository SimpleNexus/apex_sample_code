public class LoanApplication
{
    public String guid {
        get { return guid; }
        set { guid = value; }
    }

    public Boolean active {
        get { return active; }
        set { active = value; }
    }

    public Boolean submitted {
        get { return submitted; }
        set { submitted = value; }
    }

    public String loanOfficerGuid {
        get { return loanOfficerGuid; }
        set { loanOfficerGuid = value; }
    }

    public String loanGuid {
        get { return loanGuid; }
        set { loanGuid = value; }
    }

    public DateTime createdAt {
        get { return createdAt; }
        set { createdAt = value; }
    }
    
    public DateTime updatedAt {
        get { return updatedAt; }
        set { updatedAt = value; }
    }

    public DateTime submittedAt {
        get { return submittedAt; }
        set { submittedAt = value; }
    }
    
    public Map<String, Object> values {
        get { return values; }
        set { values = value; }
    }
  
    public static LoanApplication fromJson(String jsonData)
    {
        Map<String, Object> m = (Map<String, Object>) JSON.deserializeUntyped(jsonData);
        LoanApplication loanApplication = new LoanApplication();
        loanApplication.guid = (String)m.get('guid');
        loanApplication.loanOfficerGuid = (String)m.get('loan_officer_guid');
        loanApplication.submitted = (Boolean)m.get('submitted');
        loanApplication.active = (Boolean)m.get('active');
        loanApplication.createdAt = JsonHelper.parse8601DateTime((String)m.get('created_at'));
        loanApplication.updatedAt = JsonHelper.parse8601DateTime((String)m.get('updated_at'));
        loanApplication.submittedAt = JsonHelper.parse8601DateTime((String)m.get('submitted_at'));
        loanApplication.values = (Map<String, Object>)m.get('values');
        return loanApplication;
    }
}