import { LightningElement,track,api,wire } from 'lwc';
import returnRecord from '@salesforce/apex/Scoreboardresult.returnRecord';
export default class ScoreBoardLwcCmp extends LightningElement {

    @api recordId;
    
    @track hindiMarks;
    @track mathsMarks;
    @track ScienceMarks;

    connectedCallback(){
        returnRecord({
            'recordId' : this.recordId            
        })
        .then(result => {
            console.log("--> "+ JSON.stringify(result));
            this.hindiMarks = JSON.stringify(result[0].Hindi__c);
            this.mathsMarks = JSON.stringify(result[0].Maths__c);
            this.ScienceMarks = JSON.stringify(result[0].Science__c);
            console.log("Marks--> "+ this.hindiMarks);

        });

        
    }
}