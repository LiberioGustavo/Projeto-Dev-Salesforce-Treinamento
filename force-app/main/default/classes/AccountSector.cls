public without sharing class AccountSector {

    public static void VerificaSetorContaECriaOportunidade(List<Account> accounts){
       List<Opportunity> oppList = new List<Opportunity>();
        for(Account acc : accounts) {
            if(acc.Industry == 'Finance') {
                Opportunity opp = new Opportunity();
                opp.AccountId = acc.id;
                opp.Name = 'Oportunidade de ' +acc.Name;
                opp.StageName = 'Novo';
                opp.Amount = 1000.00;
                opp.CloseDate = Date.toDay().addMonths(1);
                oppList.add(opp);

            }
        }

        insert oppList;
    }


    public static void VerificaFaseOportunidadeECriaOportunidade(List<Account> accounts){

        Map<Id,List<Opportunity>> acctsAndOpps = new Map<Id,List<Opportunity>>();
        List<Opportunity> OppDeConta = [SELECT Id, Name, StageName, AccountId FROM Opportunity WHERE AccountId =:accounts AND IsClosed=false];
        List<Opportunity> oppList = new List<Opportunity>();

       

        for(Opportunity opp : OppDeConta) {
            if(!acctsAndOpps.containsKey(opp.AccountId)){
              acctsAndOpps.put(opp.AccountId, new List<Opportunity>());
            }
            acctsAndOpps.get(opp.AccountId).add(opp);

        }
        for(Account acc : accounts) {
            List<Opportunity> opps = acctsAndOpps.get(acc.Id);

            if(opps == null || opps.size() == 0){
                Opportunity oppNova = new Opportunity();
                oppNova.AccountId = acc.Id;
                oppNova.Name = 'Nova Oportunidade Trigger';
                oppNova.StageName = 'Novo';
                oppNova.Amount = 2000.00;
                oppNova.CloseDate = Date.toDay().addMonths(1);

                   oppList.add(oppNova);

            }

        }   

        insert oppList;

    }
}

 