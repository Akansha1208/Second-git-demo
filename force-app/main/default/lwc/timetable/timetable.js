import { LightningElement , wire, track} from 'lwc';
import sortAccountItem from '@salesforce/apex/lwcSortingDataTableCtrl.sortEventsList';
const columns = [
    {
        label: 'Standard ',
        fieldName: 'std__c',
         type: 'Text',
        sortable: "true"
    }, {
        label: 'Subject',
        fieldName: 'subject__c',
        type: 'Text',
        sortable: "true"
    },
       {
        label: 'Start',
        fieldName: 'Starts__c',
        type:'Date/Time',
        sortable: "true"
    }, {
        label: 'End',
        fieldName: 'ends__c',
        sortable: "true"
    },
{
        label: 'Teacher',
        fieldName: 'Teacher__c',
        sortable: "true"
    },
];
export default class LwcSortingDataTable extends LightningElement {
    @track data;
    @track columns = columns;
    @track sortBy;
    @track sortDirection;
    @wire(sortAccountItem)
    accounts(result) {
        if (result.data) {
            this.data = result.data;
            this.error = undefined;
        } else if (result.error) {
            this.error = result.error;
            this.data = undefined;
        }
    }
    handleSortAccountData(event) {      
        this.sortBy = event.detail.fieldName;      
        this.sortDirection = event.detail.sortDirection;      
        this.sortAccountData(event.detail.fieldName, event.detail.sortDirection);
    }
    sortAccountData(fieldname, direction) {
        let parseData = JSON.parse(JSON.stringify(this.data));
        let keyValue = (a) => {
            return a[fieldname];
        };
       let isReverse = direction === 'asc' ? 1: -1;
           parseData.sort((x, y) => {
            x = keyValue(x) ? keyValue(x) : '';
            y = keyValue(y) ? keyValue(y) : '';
           
            return isReverse * ((x > y) - (y > x));
        });
        this.data = parseData;
    }
}