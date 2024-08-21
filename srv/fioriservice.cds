namespace ust.meer.arfat.srv.fiorisrv;
using { ust.meer.arfat.datamodel.master, ust.meer.arfat.datamodel.transaction } from '../db/fioridatamodel';

service Fioriservice{
 
    entity BPSet as projection on master.businesspartner;
    entity AddressSet as projection on master.address;
    entity ProductSet as projection on master.product;
    entity POSet as projection on transaction.purchaseorder;
    entity POItems as projection on transaction.poitems;
}