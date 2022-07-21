public class Opportunityhelper {
    public static void oppshare(list<opportunity> opplist){
id userid = '0055j000006kO8sAAE';
list<OpportunityShare> oppsharelist = new list<OpportunityShare>();
for(opportunity op : opplist){
if(op.StageName == 'Closed Won'){
OpportunityShare os = new OpportunityShare();
os.UserOrGroupId = userid;
os.OpportunityAccessLevel = 'Read';
os.OpportunityId = op.id;
oppsharelist.add(os);
}
}
if(oppsharelist.size()>0){
insert oppsharelist;
}



}
}