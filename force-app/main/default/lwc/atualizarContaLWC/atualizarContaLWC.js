import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';


export default class atualizarContaLWC extends LightningElement {

    accountObject = ACCOUNT_OBJECT;
    fields = [NAME_FIELD, TYPE_FIELD];
    handleSucces(event) {
        const evt = new ShowToastEvent({
            title: "Account created",
            message: "record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(evt);
    }


}



