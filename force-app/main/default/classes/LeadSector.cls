public with sharing class LeadSector {
    public static void SetLeadProductBySector(List<Lead> leads) {
        for (Lead lead : leads) {
            if (lead.Industry == 'Finance' || lead.Industry == 'Construction') {
                lead.ProductInterest__c = 'GC5000 series';
            } else if (lead.Industry == 'Other') {
                lead.ProductInterest__c = 'GC1000 series';
            } else {
                lead.ProductInterest__c = 'GC3000 series';
            }
        }
    }
}

