import { LightningElement,wire } from 'lwc';
import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import STAGE from '@salesforce/schema/Account.Type';

export default class LwcPicklistWithRecordtype extends LightningElement {
    @wire(getPicklistValues,
        {
            recordTypeId: '001Dn00000Aldh0IAB', //pass id dynamically
            fieldApiName: Type
        }
    )
    Type;
}