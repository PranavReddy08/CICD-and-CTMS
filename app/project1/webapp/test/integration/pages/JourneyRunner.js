sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/salesHeaderList",
	"project1/test/integration/pages/salesHeaderObjectPage"
], function (JourneyRunner, salesHeaderList, salesHeaderObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onThesalesHeaderList: salesHeaderList,
			onThesalesHeaderObjectPage: salesHeaderObjectPage
        },
        async: true
    });

    return runner;
});

