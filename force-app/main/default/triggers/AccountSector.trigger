trigger AccountSector on Account (after insert, after update) {
   
    List<Account> newListAccount = trigger.new;
    if(Trigger.isInsert && Trigger.isAfter){
        AccountSector.VerificaSetorContaECriaOportunidade(newListAccount);

    }
    if(Trigger.isUpdate && Trigger.isAfter){
        AccountSector.VerificaFaseOportunidadeECriaOportunidade(newListAccount);

    }

}