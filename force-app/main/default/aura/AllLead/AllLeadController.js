({

        doinit : function(component, event, helper) {

        component.set('v.columns', [

            {label: 'Name', fieldName: 'Name', type: 'text'},

            {label: 'Phone', fieldName: 'Phone', type: 'text'},

            {label: 'Industry', fieldName: 'Industry', type: 'text'},

            {label: 'Email', fieldName: 'Email', type: 'text'},

            {label: 'Company', fieldName: 'Company', type: 'text'},

            {label: 'Address', fieldName: 'Address', type: 'text'},

     

            {label: 'Lead Source', fieldName: 'LeadSource', type: 'text'}

        ]);

            helper.allLeads(component);

        helper.leadSource(component);

            helper.onControllerFieldChange(component,event,helper);

        },

     handleClick : function(component, event) {

       var action = component.get( "c.getAllLeads" );

        action.setCallback(this, function( response ) {

            var state = response.getState();

            if (state === "SUCCESS" ) {

                var rows = response.getReturnValue();

                component.set( "v.LeadList", rows );

            }

        });
         $A.enqueueAction( action );

    },

onControllerFieldChange : function(component, event, helper){

        var pickselected = component.find("PicklistId").get("v.value");

        console.log('pickselected--->>> ' + pickselected);

        var action = component.get("c.getLeads");

        action.setParams({cLeadSource : pickselected});

        action.setCallback(this, function(response) {

            var state = response.getState();

            if (state === "SUCCESS") {

                var allValues = response.getReturnValue();

                console.log('allValues--->>> ' + JSON.stringify(allValues));

                component.set("v.LeadList", allValues);

            }

        });

       A.enqueueAction( action );

    },

onControllerFieldChange : function(component, event, helper){

        var pickselected = component.find("PicklistId").get("v.value");

        console.log('pickselected--->>> ' + pickselected);

        var action = component.get("c.getLeads");

        action.setParams({cLeadSource : pickselected});

        action.setCallback(this, function(response) {

            var state = response.getState();

            if (state === "SUCCESS") {

                var allValues = response.getReturnValue();

                console.log('allValues--->>> ' + JSON.stringify(allValues));

                component.set("v.LeadList", allValues);

            }

        });


$A.enqueueAction( action );

    },

onControllerFieldChange : function(component, event, helper){

        var pickselected = component.find("PicklistId").get("v.value");

        console.log('pickselected--->>> ' + pickselected);

        var action = component.get("c.getLeads");

        action.setParams({cLeadSource : pickselected});

        action.setCallback(this, function(response) {

            var state = response.getState();

            if (state === "SUCCESS") {

                var allValues = response.getReturnValue();

                console.log('allValues--->>> ' + JSON.stringify(allValues));

                component.set("v.LeadList", allValues);

            }

        });

        $A.enqueueAction(action);

    }

    })