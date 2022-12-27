trigger LeadSector on Lead (before insert, before update) {
    List<lead> newLeads = trigger.new;

    if(trigger.IsInsert && trigger.isBefore || trigger.isUpdate && trigger.isBefore) {

        LeadSector.SetLeadProductBySector(newLeads);
    }
}

