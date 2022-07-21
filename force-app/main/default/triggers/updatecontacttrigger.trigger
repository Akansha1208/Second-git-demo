trigger updatecontacttrigger on Contact (before insert,after insert,before update,after update) {
    if(trigger.isUpdate){
            contactTriggerHandler.afterUpdateHelper(trigger.new);
        }
        if(trigger.isInsert){
            contactTriggerHandler.afterUpdateHelper(trigger.new);
    }
    }