sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'purchaseorderapp/test/integration/FirstJourney',
		'purchaseorderapp/test/integration/pages/POSetList',
		'purchaseorderapp/test/integration/pages/POSetObjectPage',
		'purchaseorderapp/test/integration/pages/poitemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, POSetList, POSetObjectPage, poitemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('purchaseorderapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOSetList: POSetList,
					onThePOSetObjectPage: POSetObjectPage,
					onThepoitemsObjectPage: poitemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);