trigger ContactTrigger on Contact (after insert,after update,after delete,after undelete) {
    switch on Trigger.operationType{
        when AFTER_INSERT{
             CountContacts.insertHandler(Trigger.new);
                }
        when AFTER_UPDATE{
            CountContacts.updateHandler(Trigger.new,Trigger.oldMap);
        }
        when AFTER_DELETE{
            CountContacts.deleteHandler(Trigger.old);
            
        }
        when AFTER_UNDELETE{
            CountContacts.undeleteHandler(Trigger.new);
            }
        }
}