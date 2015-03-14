public with sharing class ForceEditRecordDemoController {
    
    @AuraEnabled
    public static List<Account> getAccounts() {
        return [
            SELECT
            	Id
            	,Name
            	,AccountNumber
            FROM
            	Account
            ORDER BY Name ASC
            LIMIT 200
        ];
    }
}