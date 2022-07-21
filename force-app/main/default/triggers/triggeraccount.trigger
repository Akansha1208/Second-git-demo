trigger triggeraccount on Account (before insert,before update, after insert) {
if(trigger.isinsert && trigger.isbefore){
//Demo3.insertname(trigger.new);
}
if(trigger.isupdate && trigger.isbefore){
Demo3.updatename(trigger.new);
}
if(trigger.isinsert && trigger.isafter){
Demo3.insertname(trigger.new);
}
}