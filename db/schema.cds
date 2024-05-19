namespace Risks;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

using { managed } from '@sap/cds/common';

entity Risks : managed
{
    key ID : UUID;
    title : String(100);
    descr : String(100);
    prio : String(5);
    impact : Integer;
    criticality : Integer;
    mitigations : Association to one Mitigations;
    supplier : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigations : managed
{
    key ID : UUID;
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risks on risks.mitigations = $self;
}
