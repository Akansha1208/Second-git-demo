trigger UndeletechildTrigger on Account (before delete) {

    if(Trigger.isDelete && Trigger.isBefore){

        Undeletechild.Undeletechildmethod(trigger.old);

    }

}