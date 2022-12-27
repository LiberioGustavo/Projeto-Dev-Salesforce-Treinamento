import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import OWNERSHIP_FIELD from '@salesforce/schema/Account.Ownership';

export default class atualizarContaLWC extends LightningElement {

    accountObject = ACCOUNT_OBJECT;
    fields = [NAME_FIELD, PHONE_FIELD, REVENUE_FIELD, TYPE_FIELD, INDUSTRY_FIELD, OWNERSHIP_FIELD];
    handleSucces(event) {
        const evt = new ShowToastEvent({
            title: "Account created",
            message: "record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(evt);
    }


}


