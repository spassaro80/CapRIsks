using { Risks as my } from '../db/schema.cds';

@path : '/service/RiskManagement'
service RiskManagement
{
    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;
}

annotate RiskManagement with @requires :
[
    'authenticated-user'
];
