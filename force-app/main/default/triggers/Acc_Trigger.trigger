trigger Acc_Trigger on Account (before insert, before update, after insert, after update) {
    
if(trigger.isBefore) {
if(trigger.isInsert) {
Demo.insertOperation(trigger.new);
}
}
if(trigger.isBefore) {
if(trigger.isUpdate) {
Demo.updateOperation(trigger.new);
}
}
}

/*if(trigger.isAfter) {
if(trigger.isInsert) {
Demo.createContact(trigger.new);
}
if(trigger.isUpdate) {
Demo.updateContact(trigger.new);
}
}
}*/