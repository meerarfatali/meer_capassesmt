namespace ust.meer.arfat.srv.sd;

using { ust.meer.arfat.db } from '../db/datamodel';

service EmployeeService @(path:'EmployeeService'){

    entity EmployeeSet as projection on db.master.employees;

}