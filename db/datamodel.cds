namespace ust.meer.arfat.db;

//mapping reusable types and objects
using { cuid , Currency } from '@sap/cds/common';
using { ust.meer.arfat.common } from '../db/common';

context master {

    //Database Table For Master Employees Data Population...
    entity employees : cuid {
        nameFirst : String(40);
        nameMiddle : String(40);
        nameLast : String(40);
        nameInitials : String(40);
        Gender : common.Gender;
        Language : String(1);
        phoneNumber : common.PhoneNumber;
        Email : common.Email;
        loginName : String(12);
        Currency : Currency;
        salaryAmount : common.AmountT;
        accountNumber : String(16);
        bankId : String(12);
        bankName : String(64);
    }

}
