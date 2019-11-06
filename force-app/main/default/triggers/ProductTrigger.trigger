trigger ProductTrigger on Product__c (before insert,before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
           ProductTriggerHelper.checkBeforeInsertUpdate(Trigger.New);
        }
        if(Trigger.isUpdate){
            ProductTriggerHelper.checkBeforeInsertUpdate(Trigger.New);
        }
    }
    
}