trigger opportunitytrigger on Opportunity (after insert,after update) {
if(trigger.isafter){
if(trigger.isinsert || trigger.isupdate){
Opportunityhelper.oppshare(trigger.new);
}
}
}