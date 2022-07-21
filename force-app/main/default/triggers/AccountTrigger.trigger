trigger AccountTrigger on Account ( after insert, before delete, after delete) {    
    
         if(trigger.isDelete){
             ContactController.delRelContact(trigger.old, trigger.oldMap);
         
    }
    
      
  }