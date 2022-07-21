({

    allLeads : function(component) {

        var action = component.get("c.getAllLeads");

        action.setCallback(this, function(response) {

            var state = response.getState();

            if (state === "SUCCESS") {

                var allValues = response.getReturnValue();

                console.log('allValues -- >> ' + allValues);

                component.set("v.mydata", allValues);

            }

        });

        $A.enqueueAction(action);

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

    },

          leadSource : function(component) {

                     var action = component.get("c.getLeadSource");

        var percent = component.find("PicklistId");

        action.setCallback(this, function(response) {

            var state = response.getState();

            if (state === "SUCCESS") {

                var allValues = response.getReturnValue();

                console.log('allValues -- >> ' + allValues);

                component.set("v.pickName", allValues);

            }

        });

        $A.enqueueAction(action);

          }

})