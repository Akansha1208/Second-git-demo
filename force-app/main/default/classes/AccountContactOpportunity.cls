public class AccountContactOpportunity
{
public String AccId{get;set;}
public list<contact> conlist{get;set;}
public list<Opportunity> opplist{get;set;}

public List<SelectOption> getAccountNames()
{
List<SelectOption> accOptions= new List<SelectOption>();
accOptions.add( new SelectOption('','--Select--'));
for( Account acc : [select Id,name from Account ] )
{
accOptions.add( new SelectOption(acc.Id,acc.name));
}
return accOptions;
}
public pageReference showContact()
{
conlist=[select id,Name,Email from contact where accountid =:AccId];
system.debug('----->'+conlist);
opplist=[select id,Name,stageName from opportunity where accountid=:AccId];
system.debug('====>'+opplist);
return null;
}
}