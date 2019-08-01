describe "DomPredictionHelper", ->
  fixtures =
    class_name_tests: '<div id="class_name_tests">' +
                      '  <div class="iCIMS_InfoMsg iCIMS_InfoMsg_Job">' +
                      '    <span id="moo">Hello      </span>' +
                      '  </div>' +
                      '</div>'
    leaves: "<div id='parent1'>" +
            "<span class='sibling' id='some_id'>" +
            "  <b>&nbsp;</b>" +
            "</span>" +
            "<span class='sibling something else'>" +
            "  <i id='leaf1'>&nbsp;</i>" +
            "</span>" +
            "<span class='sibling' id='leaf2'>" +
            "  <b>&nbsp;</b>" +
            "</span>" +
            "<span class='sibling'>&nbsp;</span>" +
            "</div>"
    big_structure:  "<div>" +
                    "  <strong>" +
                    "    <table class='reasonable'>" +
                    "      <tr>" +
                    "        <td id='omg-im-ugly-7777777'>" +
                    "          <div>hi</div>" +
                    "          <div id='a' class='hi'>" +
                    "            <b class='b'>" +
                    "              <div>" +
                    "              </div>" +
                    "            </b>" +
                    "          </div>" +
                    "        </td>" +
                    "      </tr>" +
                    "    </table>" +
                    "  </strong>" +
                    "</div>" +
                    "" +
                    "<table>" +
                    "  <tr id='something_else'>" +
                    "    <td>" +
                    "      <div id='a' class='hi'>" +
                    "        <spacer />" +
                    "      </div>" +
                    "    </td>" +
                    "  </tr>" +
                    "</table>" +
                    "" +
                    "<div>" +
                    "  <b>" +
                    "    <strong>" +
                    "      <div>" +
                    "        Yo" +
                    "      </div>" +
                    "    </strong>" +
                    "  </b>" +
                    "</div>" +
                    "" +
                    "<ul id='jobs'>" +
                    "  <li>" +
                    "    <ul>" +
                    "      <li>do not want</li>" +
                    "      <li>do not want</li>" +
                    "      <li>do not want</li>" +
                    "      <li>do not want</li>" +
                    "      <li>do not want</li>" +
                    "    </ul>" +
                    "  </li>" +
                    "  <li>hi thar</li>" +
                    "  <li>WANT</li>" +
                    "  <li>omonomonom</li>" +
                    "</ul>" +
                    "" +
                    "<div id='sibling_test'>" +
                    "  <div>" +
                    "    <h3 class='a'>Awesome</h3>" +
                    "    <span>Goal</span>" +
                    "  </div>" +
                    "  <div>" +
                    "    <h3 class='a'>Awesome</h3>" +
                    "    <span>Goal</span>" +
                    "  </div>" +
                    "  <div>" +
                    "    <h4>Awesome</h4>" +
                    "    <span>Not Goal</span>" +
                    "  </div>" +
                    "</div>" +
                    "" +
                    "<font color='003366'><strong><u>Department:</u><span class='wrap'>IT&amp;C MANAGEMENT SERVICES</span></strong></font><br><br>" +
                    "<font color='003366'><strong><u>Requisition ID:</u><span class='wrap'>20913</span></strong></font><br><br>" +
                    "<font color='003366'><strong><u>Job Title:</u><span class='wrap'>Manager, Strategic Systems</span></strong></font><br>" +
                    "<font color='003366'><strong><u>Location:</u><span class='wrap'>El Segundo, CA  (Los Angeles)</span></strong></font><br><br>"
    linkedIn: """
    <body data-t-link-to-event-attached="true" class="ember-application boot-complete">
    <div class="initial-loading-state hide-loading">
      <div class="initial-load-animation">
        <div class="salesnav-image"></div>
        <div class="loading-bar">
          <div class="blue-bar"></div>
        </div>
      </div>
    </div>
    <!-- EMBER_CLI_FASTBOOT_BODY -->
    
<script src="https://static-exp2.licdn.com/sc/h/br/cbxeg3qv2vchfll2vj62eegoq"></script>
<script src="https://static-exp2.licdn.com/sc/h/br/7bkmeddw3wsnjda3v42814k4k"></script>
<script src="https://static-exp2.licdn.com/sc/h/br/2zx4qfi8pf0lva617nkkw9tvq"></script>
<div id="ember-basic-dropdown-wormhole"></div>
<div id="artdeco-modal-outlet"></div>
<code style="display: none" id="bpr-guid-689823">
  {"primaryIdentity":"dXJuOmxpOm1lbWJlcjo3NDkzODM0NTE"}
</code>
<code style="display: none" id="datalet-bpr-guid-689823">
  {"request":"/sales-api/salesApiPrimaryIdentity","status":200,"body":"bpr-guid-689823"}
</code>
<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display: none" class="datalet-bpr-guid-689823"><code style="display: none" id="bpr-guid-689826">
  {"statuses":{},"results":{"lss-snap-custom-lists":{"value":"enabled"},"lss-lists-collaboration-v2-contract":{"value":"control"},"lss-ads-integration":{"value":"control"},"profile-decoration.fetch.sales.navigator.info.for.contract":{"value":"enable"},"lss-crm-dynamics":{"value":"enabled"},"lss-crm-sync-error-handling":{"value":"enabled"},"lss-crm-writeback-presentation-view":{"value":"enabled"},"lss-account-center":{"value":"control"},"lss-search-max-page-count":{"value":"control"},"lss-crm-data-validation":{"value":"control"}},"errors":{}}
</code>
<code style="display: none" id="datalet-bpr-guid-689826">
  {"request":"/sales-api/salesApiTreatment?ids\u003DList(lss-account-center,lss-ads-integration,lss-crm-data-validation,lss-crm-dynamics,lss-crm-writeback-presentation-view,lss-crm-sync-error-handling,lss-search-max-page-count,lss-snap-custom-lists,profile-decoration.fetch.sales.navigator.info.for.contract,lss-lists-collaboration-v2-contract)","status":200,"body":"bpr-guid-689826"}
</code>
<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display: none" class="datalet-bpr-guid-689826"><code style="display: none" id="bpr-guid-689833">
  {"onboarded":true,"seatRoles":["LSS_ADMIN_SEAT","SALES_SEAT_TIER1"],"adminCrmSynced":false,"unreadMessagesCount":0,"unseenNotificationsCount":0,"viewerPrivacy":{"salesProfileViewingPrivacy":"FULL"},"admin":true,"memberResolutionResult":{"lastName":"AI","objectUrn":"urn:li:member:749383451","fullName":"Axiom AI","pictureInfo":{},"firstName":"Axiom","entityUrn":"urn:li:fs_salesProfile:(ACwAACyqrxsBgKngAkIQ7broJkuZXWWiM-I7tt4, , )","headline":"Developer at axiom.ai - Techstars'18"},"adminOnly":false,"showUsageReporting":false,"seatSources":[],"linkedInMailboxCount":0,"member":"urn:li:fs_salesProfile:(ACwAACyqrxsBgKngAkIQ7broJkuZXWWiM-I7tt4, , )","showDealbook":false,"homepageOptOut":false,"showSeatManagement":true,"salesMailboxCount":0,"viewerSalesUrn":"urn:li:fs_sales:(749383451,459463702,139291402)","savedSearchesNewHitCount":0,"showAdminSettings":false,"showSettings":true,"baseMprUrl":"https://media-exp2.licdn.com/mpr/mpr","baseScdsUrl":"https://static-exp2.licdn.com/scds"}
</code>
<code style="display: none" id="datalet-bpr-guid-689833">
  {"request":"/sales-api/salesApiNavChrome?decoration\u003D%28baseMprUrl%2CbaseScdsUrl%2CviewerPrivacy%2CviewerSalesUrn%2Cadmin%2CadminOnly%2CadminCrmSynced%2CshowAdminSettings%2CshowDealbook%2CshowSeatManagement%2CshowSettings%2CshowUsageReporting%2CunreadMessagesCount%2CsalesMailboxCount%2ClinkedInMailboxCount%2CunseenNotificationsCount%2CsavedSearchesNewHitCount%2Conboarded%2Cmember~fs_salesProfile%28entityUrn%2CfirstName%2ClastName%2CfullName%2Cheadline%2CprofilePictureDisplayImage%2CpictureInfo%28croppedImage%29%2CobjectUrn%29%2CseatSources*%2CseatRoles*%2CepAccountId%2CepApplicationInstanceId%2ChomepageOptOut%29","status":200,"body":"bpr-guid-689833"}
</code>
<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display: none" class="datalet-bpr-guid-689833"><code style="display: none" id="bpr-guid-689834">
  {"seatRoles":["LSS_ADMIN_SEAT","SALES_SEAT_TIER1"],"entityUrn":"urn:li:fs_salesSeat:139291402"}
</code>
<code style="display: none" id="datalet-bpr-guid-689834">
  {"request":"/sales-api/salesAuthenticatedSeat?decoration\u003D%28entityUrn%2CseatRoles*%29","status":200,"body":"bpr-guid-689834"}
</code>
<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display: none" class="datalet-bpr-guid-689834"><code style="display: none" id="bpr-guid-689837">
  {"elements":[],"paging":{"count":0,"start":0,"links":[]}}
</code>
<code style="display: none" id="datalet-bpr-guid-689837">
  {"request":"/sales-api/salesApiColleagueRelationships?fromProfileId\u003DACwAAAzkTNABmryDnvdm-SaCy9FNjdDXUzHFOJ0\u0026count\u003D1\u0026start\u003D0\u0026decoration\u003D%28lastUpdatedAt%2CfromMember%2Csource%2CtoMember~fs_salesProfile%28entityUrn%2CprofilePictureDisplayImage%2CfullName%2Cdegree%2CdefaultPosition%29%2Ccreator~fs_salesProfile%28entityUrn%2CfullName%29%29\u0026_id\u003DfromProfileId%3DACwAAAzkTNABmryDnvdm-SaCy9FNjdDXUzHFOJ0%26count%3D1%26start%3D0\u0026q\u003DlatestByFromMember\u0026relationshipType\u003DREPORTS_TO","status":200,"body":"bpr-guid-689837"}
</code>
<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display: none" class="datalet-bpr-guid-689837"><code style="display: none" id="bpr-guid-689838">
  {"elements":[{"entityUrn":"urn:li:fs_salesTag:48532292","type":"LEAD_OR_ACCOUNT","value":"Customer"},{"entityUrn":"urn:li:fs_salesTag:48532302","type":"LEAD_OR_ACCOUNT","value":"Decision Maker"},{"entityUrn":"urn:li:fs_salesTag:48532252","type":"LEAD_OR_ACCOUNT","value":"Follow-up"},{"entityUrn":"urn:li:fs_salesTag:48532272","type":"LEAD_OR_ACCOUNT","value":"High Priority"},{"entityUrn":"urn:li:fs_salesTag:48532282","type":"LEAD_OR_ACCOUNT","value":"Influencer"},{"entityUrn":"urn:li:fs_salesTag:48532262","type":"LEAD_OR_ACCOUNT","value":"Opportunity"}],"paging":{"count":10,"start":0,"links":[]}}
</code>
<code style="display: none" id="datalet-bpr-guid-689838">
  {"request":"/sales-api/salesApiTags?q\u003DcurrentSeatHolder\u0026tagType\u003DLEAD_OR_ACCOUNT\u0026isActiveOnly\u003Dtrue","status":200,"body":"bpr-guid-689838"}
</code>
<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display: none" class="datalet-bpr-guid-689838"><code style="display: none" id="bpr-guid-689840">
  {"objectUrn":"urn:li:member:216288464","contactInfo":{"socialHandles":[{"name":"almriswan","type":"TWITTER","dataSource":"LINKEDIN"}]},"crmStatus":{"imported":false},"educations":[{"endedOn":{"year":2014},"fieldsOfStudy":["Computer Engineering"],"degree":"Diploma In Technology","schoolName":"OUSL","startedOn":{"year":2007},"eduId":133940747},{"endedOn":{"year":2009},"fieldsOfStudy":["IT"],"degree":"HNDIT","schoolName":"SLIATE","startedOn":{"year":2007},"eduId":133941638}],"inmailRestriction":"NO_RESTRICTION","unlocked":false,"showTotalConnectionsPage":false,"defaultPosition":{"new":false,"companyName":"axiom.ai In-browser Robotic Process Automation","title":"Software Quality Assurance Engineer","companyUrn":"urn:li:fs_salesCompany:11860018","posId":1319298981,"current":true,"location":"Kandy, Sri Lanka","startedOn":{"month":9,"year":2016}},"noteCount":0,"degree":2,"positions":[{"new":false,"companyName":"axiom.ai In-browser Robotic Process Automation","title":"Software Quality Assurance Engineer","companyUrn":"urn:li:fs_salesCompany:11860018","posId":1319298981,"current":true,"location":"Kandy, Sri Lanka","startedOn":{"month":9,"year":2016}},{"new":false,"endedOn":{"month":5,"year":2016},"companyName":"Engineering Design Centre","title":"Software Developer","posId":337133378,"current":false,"startedOn":{"month":2,"year":2011}}],"relatedColleagueCompanyId":11860018,"savedLead":true,"tags":[],"firstName":"Riswan","numOfSharedConnections":1,"memberBadges":{"premium":false,"openLink":false,"jobSeeker":false},"lastName":"Muhammadh","industry":"Computer Software","entityUrn":"urn:li:fs_salesProfile:(ACwAAAzkTNABmryDnvdm-SaCy9FNjdDXUzHFOJ0,NAME_SEARCH,kFrw)","numOfConnections":75,"headline":"Software Quality Assurance Engineer at axiom.ai In-browser Robotic Process Automation","profileUnlockInfo":{"showProfileUnlock":false},"summary":"Experienced Software Quality Assurance Engineer with a demonstrated history of working in the computer software industry. Skilled in SQL, ASP.NET MVC, Object-Oriented Programming (OOP) and .NET Framework. Strong engineering professional with a Diploma In Technology focused in Computer Engineering from OUSL.","pendingInvitation":false,"fullName":"Riswan Muhammadh","pictureInfo":{},"listCount":1,"flagshipProfileUrl":"https://www.linkedin.com/in/riswan-muhammadh-b2852660","location":"Sri Lanka"}
</code>
<code style="display: none" id="datalet-bpr-guid-689840">
  {"request":"/sales-api/salesApiProfiles/(profileId:ACwAAAzkTNABmryDnvdm-SaCy9FNjdDXUzHFOJ0,authType:NAME_SEARCH,authToken:kFrw)?decoration\u003D%28entityUrn%2CobjectUrn%2CpictureInfo%2CprofilePictureDisplayImage%2CfirstName%2ClastName%2CfullName%2Cheadline%2CmemberBadges%2Cdegree%2CprofileUnlockInfo%2Clocation%2ClistCount%2Cindustry%2CnumOfConnections%2CinmailRestriction%2CsavedLead%2CdefaultPosition%2CcontactInfo%2Csummary%2CcrmStatus%2CpendingInvitation%2Cunlocked%2CrelatedColleagueCompanyId%2CnumOfSharedConnections%2CshowTotalConnectionsPage%2CconnectedTime%2CnoteCount%2CflagshipProfileUrl%2Cpositions*%2Ceducations*%2Ctags*~fs_salesTag%28entityUrn%2Ctype%2Cvalue%29%29","status":200,"body":"bpr-guid-689840"}
</code>
<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display: none" class="datalet-bpr-guid-689840"><code style="display: none" id="clientPageInstance">
  urn:li:page:d_sales2_profile;0zbKChkxTUOgq7fdWZ1eDA==
</code>

<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display: none" class="terminatorlet">

  

<div class="ember-view" id="ember3"><!---->
    <header id="ember4" class="global-nav global-nav-v2 ember-view">







<div class="navbar-main">
  <div class="container">


    <h1 class="brand">
      <a href="/sales?trk=d_sales2_nav_snlogo">
<linkedin-logo id="ember7" size="28dp" class="ember-view"><li-icon aria-hidden="true" type="linkedin-bug" class="logo-lockup-inverse" size="28dp" color="inverse"><svg preserveAspectRatio="xMinYMin meet" focusable="false">
      <g class="scaling-icon" style="fill-opacity: 1">
        <defs>
        </defs>
        <g class="bug-14dp" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
          <g class="dp-1">
            <path d="M14,1.25 L14,12.75 C14,13.44 13.44,14 12.75,14 L1.25,14 C0.56,14 0,13.44 0,12.75 L0,1.25 C0,0.56 0.56,0 1.25,0 L12.75,0 C13.44,0 14,0.56 14,1.25" class="bug-text-color" fill="#FFFFFF"></path>
            <path d="M14,1.25 L14,12.75 C14,13.44 13.44,14 12.75,14 L1.25,14 C0.56,14 0,13.44 0,12.75 L0,1.25 C0,0.56 0.56,0 1.25,0 L12.75,0 C13.44,0 14,0.56 14,1.25 Z M5,5 L6.85,5 L6.85,6.016 L6.893,6.016 C7.259,5.541 8.018,4.938 9.25,4.938 C11.125,4.938 12,5.808 12,8 L12,12 L10,12 L10,8.75 C10,7.313 9.672,6.875 8.632,6.875 C7.5,6.875 7,7.75 7,9 L7,12 L5,12 L5,5 Z M2,12 L4,12 L4,5 L2,5 L2,12 Z M4.335,3 C4.335,3.737 3.737,4.335 3,4.335 C2.263,4.335 1.665,3.737 1.665,3 C1.665,2.263 2.263,1.665 3,1.665 C3.737,1.665 4.335,2.263 4.335,3 Z" class="background" fill="#0073B2"></path>
          </g>
          <g class="dpi-gt1" transform="scale(0.2917)">
            <rect class="bug-text-color" fill="#FFFFFF" x="1" y="1" width="46" height="46" rx="4"></rect>
            <path d="M0,4.00989318 C0,1.79529033 1.79405245,0 4.00989318,0 L43.9901068,0 C46.2047097,0 48,1.79405245 48,4.00989318 L48,43.9901068 C48,46.2047097 46.2059475,48 43.9901068,48 L4.00989318,48 C1.79529033,48 0,46.2059475 0,43.9901068 L0,4.00989318 Z M19,18.3 L25.5,18.3 L25.5,21.566 C26.437,19.688 28.838,18 32.445,18 C39.359,18 41,21.738 41,28.597 L41,41.3 L34,41.3 L34,30.159 C34,26.253 33.063,24.05 30.68,24.05 C27.375,24.05 26,26.425 26,30.159 L26,41.3 L19,41.3 L19,18.3 Z M7,41 L14,41 L14,18 L7,18 L7,41 Z M15,10.5 C15,12.985 12.985,15 10.5,15 C8.015,15 6,12.985 6,10.5 C6,8.015 8.015,6 10.5,6 C12.985,6 15,8.015 15,10.5 Z" class="background" fill="#0077B5"></path>
          </g>
        </g>
        <g class="bug-21dp" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
          <g class="dp-1">
            <path d="M19.479,0 L1.583,0 C0.728,0 0,0.677 0,1.511 L0,19.488 C0,20.323 0.478,21 1.333,21 L19.229,21 C20.086,21 21,20.323 21,19.488 L21,1.511 C21,0.677 20.336,0 19.479,0" class="bug-text-color" fill="#FFFFFF"></path>
            <path d="M19.479,0 L1.583,0 C0.728,0 0,0.677 0,1.511 L0,19.488 C0,20.323 0.478,21 1.333,21 L19.229,21 C20.086,21 21,20.323 21,19.488 L21,1.511 C21,0.677 20.336,0 19.479,0 Z M8,8 L10.827,8 L10.827,9.441 L10.858,9.441 C11.289,8.664 12.562,7.875 14.136,7.875 C17.157,7.875 18,9.479 18,12.45 L18,18 L15,18 L15,12.997 C15,11.667 14.469,10.5 13.227,10.5 C11.719,10.5 11,11.521 11,13.197 L11,18 L8,18 L8,8 Z M3,18 L6,18 L6,8 L3,8 L3,18 Z M6.375,4.5 C6.375,5.536 5.536,6.375 4.5,6.375 C3.464,6.375 2.625,5.536 2.625,4.5 C2.625,3.464 3.464,2.625 4.5,2.625 C5.536,2.625 6.375,3.464 6.375,4.5 Z" class="background" fill="#0077B5"></path>
          </g>
          <g class="dpi-gt1" transform="scale(0.4375)">
            <rect class="bug-text-color" fill="#FFFFFF" x="1" y="1" width="46" height="46" rx="4"></rect>
            <path d="M0,4.00989318 C0,1.79529033 1.79405245,0 4.00989318,0 L43.9901068,0 C46.2047097,0 48,1.79405245 48,4.00989318 L48,43.9901068 C48,46.2047097 46.2059475,48 43.9901068,48 L4.00989318,48 C1.79529033,48 0,46.2059475 0,43.9901068 L0,4.00989318 Z M19,18.3 L25.5,18.3 L25.5,21.566 C26.437,19.688 28.838,18 32.445,18 C39.359,18 41,21.738 41,28.597 L41,41.3 L34,41.3 L34,30.159 C34,26.253 33.063,24.05 30.68,24.05 C27.375,24.05 26,26.425 26,30.159 L26,41.3 L19,41.3 L19,18.3 Z M7,41 L14,41 L14,18 L7,18 L7,41 Z M15,10.5 C15,12.985 12.985,15 10.5,15 C8.015,15 6,12.985 6,10.5 C6,8.015 8.015,6 10.5,6 C12.985,6 15,8.015 15,10.5 Z" class="background" fill="#0077B5"></path>
          </g>
        </g>
        <g class="bug-28dp" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
          <g class="dp-1">
            <path d="M25.375,0 L2.625,0 C1.175,0 0,1.175 0,2.625 L0,25.375 C0,26.825 1.175,28 2.625,28 L25.375,28 C26.825,28 28,26.825 28,25.375 L28,2.625 C28,1.175 26.825,0 25.375,0" class="bug-text-color" fill="#FFFFFF"></path>
            <path d="M25.375,0 L2.625,0 C1.175,0 0,1.175 0,2.625 L0,25.375 C0,26.825 1.175,28 2.625,28 L25.375,28 C26.825,28 28,26.825 28,25.375 L28,2.625 C28,1.175 26.825,0 25.375,0 Z M14.8747,12.025 L14.8747,10 L10.9997,10 L10.9997,24 L14.9997,24 L14.9997,17.375 C14.9997,15.603 15.6627,13.875 17.6497,13.875 C19.4667,13.875 19.9997,14.965 19.9997,16.875 L19.9997,24 L23.9997,24 L23.9997,14.975 C23.9997,11.75 22.2917,9.875 19.0137,9.875 C16.9227,9.875 15.4487,11.025 14.8747,12.025 Z M4,24 L8,24 L8,10 L4,10 L4,24 Z M6,3.665 C4.71,3.665 3.665,4.71 3.665,6 C3.665,7.29 4.71,8.335 6,8.335 C7.29,8.335 8.335,7.29 8.335,6 C8.335,4.71 7.29,3.665 6,3.665 Z" class="background" fill="#0077B5"></path>
          </g>
          <g class="dpi-gt1" transform="scale(0.5833)">
            <rect class="bug-text-color" fill="#FFFFFF" x="1" y="1" width="46" height="46" rx="4"></rect>
            <path d="M0,4.00989318 C0,1.79529033 1.79405245,0 4.00989318,0 L43.9901068,0 C46.2047097,0 48,1.79405245 48,4.00989318 L48,43.9901068 C48,46.2047097 46.2059475,48 43.9901068,48 L4.00989318,48 C1.79529033,48 0,46.2059475 0,43.9901068 L0,4.00989318 Z M19,18.3 L25.5,18.3 L25.5,21.566 C26.437,19.688 28.838,18 32.445,18 C39.359,18 41,21.738 41,28.597 L41,41.3 L34,41.3 L34,30.159 C34,26.253 33.063,24.05 30.68,24.05 C27.375,24.05 26,26.425 26,30.159 L26,41.3 L19,41.3 L19,18.3 Z M7,41 L14,41 L14,18 L7,18 L7,41 Z M15,10.5 C15,12.985 12.985,15 10.5,15 C8.015,15 6,12.985 6,10.5 C6,8.015 8.015,6 10.5,6 C12.985,6 15,8.015 15,10.5 Z" class="background" fill="#0077B5"></path>
          </g>
        </g>
        <g class="bug-34dp" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
          <g class="dp-1">
            <path d="M2.8,34 L31.2,34 C32.746,34 34,32.746 34,31.2 L34,2.8 C34,1.254 32.746,0 31.2,0 L2.8,0 C1.254,0 0,1.254 0,2.8 L0,31.2 C0,32.746 1.254,34 2.8,34" class="bug-text-color" fill="#FFFFFF"></path>
            <path d="M2.8,34 L31.2,34 C32.746,34 34,32.746 34,31.2 L34,2.8 C34,1.254 32.746,0 31.2,0 L2.8,0 C1.254,0 0,1.254 0,2.8 L0,31.2 C0,32.746 1.254,34 2.8,34 Z M13,13 L17.75,13 L17.75,15.391 C18.387,14.114 20.242,12.75 22.695,12.75 C27.397,12.75 29,14.875 29,19.922 L29,29 L24,29 L24,20.984 C24,18.328 23.481,16.875 21.542,16.875 C18.921,16.875 18,18.867 18,20.984 L18,29 L13,29 L13,13 Z M5,29 L10,29 L10,13 L5,13 L5,29 Z M10.55,7.5 C10.55,9.184 9.184,10.55 7.5,10.55 C5.816,10.55 4.45,9.184 4.45,7.5 C4.45,5.815 5.816,4.45 7.5,4.45 C9.184,4.45 10.55,5.815 10.55,7.5 Z" class="background" fill="#0077B5"></path>
          </g>
          <g class="dpi-gt1" transform="scale(0.7083)">
            <rect class="bug-text-color" fill="#FFFFFF" x="1" y="1" width="46" height="46" rx="4"></rect>
            <path d="M0,4.00989318 C0,1.79529033 1.79405245,0 4.00989318,0 L43.9901068,0 C46.2047097,0 48,1.79405245 48,4.00989318 L48,43.9901068 C48,46.2047097 46.2059475,48 43.9901068,48 L4.00989318,48 C1.79529033,48 0,46.2059475 0,43.9901068 L0,4.00989318 Z M19,18.3 L25.5,18.3 L25.5,21.566 C26.437,19.688 28.838,18 32.445,18 C39.359,18 41,21.738 41,28.597 L41,41.3 L34,41.3 L34,30.159 C34,26.253 33.063,24.05 30.68,24.05 C27.375,24.05 26,26.425 26,30.159 L26,41.3 L19,41.3 L19,18.3 Z M7,41 L14,41 L14,18 L7,18 L7,41 Z M15,10.5 C15,12.985 12.985,15 10.5,15 C8.015,15 6,12.985 6,10.5 C6,8.015 8.015,6 10.5,6 C12.985,6 15,8.015 15,10.5 Z" class="background" fill="#0077B5"></path>
          </g>
        </g>
        <g class="bug-40dp" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
          <g class="dp-1">
            <path d="M40,3.5 L40,36.5 C40,38.434 38.434,40 36.5,40 L3.5,40 C1.566,40 0,38.434 0,36.5 L0,3.5 C0,1.566 1.566,0 3.5,0 L36.5,0 C38.434,0 40,1.566 40,3.5 L40,3.5 Z" class="bug-text-color" fill="#FFFFFF"></path>
            <path d="M40,3.5 L40,36.5 C40,38.434 38.434,40 36.5,40 L3.5,40 C1.566,40 0,38.434 0,36.5 L0,3.5 C0,1.566 1.566,0 3.5,0 L36.5,0 C38.434,0 40,1.566 40,3.5 Z M15,15.0000122 L20.875,15.0000122 L20.875,18.3330122 C21.542,17.1460122 23,14.7000122 26.957,14.7000122 C33.137,14.7000122 34,18.6800122 34,23.9670122 L34,34.0000122 L28,34.0000122 L28,25.0180122 C28,22.1830122 27.542,19.8750122 24.922,19.8750122 C21.75,19.8750122 21,21.9560122 21,24.5160122 L21,34.0000122 L15,34.0000122 L15,15.0000122 Z M6,34 L12,34 L12,15 L6,15 L6,34 Z M12.6509756,8.99997559 C12.6509756,11.0159756 11.0169756,12.6499756 9.00097559,12.6499756 C6.98397559,12.6499756 5.34997559,11.0159756 5.34997559,8.99997559 C5.34997559,6.98397559 6.98397559,5.34997559 9.00097559,5.34997559 C11.0169756,5.34997559 12.6509756,6.98397559 12.6509756,8.99997559 Z" class="background" fill="#0077B5"></path>
          </g>
          <g class="dpi-gt1" transform="scale(0.8333)">
            <rect class="bug-text-color" fill="#FFFFFF" x="1" y="1" width="46" height="46" rx="4"></rect>
            <path d="M0,4.00989318 C0,1.79529033 1.79405245,0 4.00989318,0 L43.9901068,0 C46.2047097,0 48,1.79405245 48,4.00989318 L48,43.9901068 C48,46.2047097 46.2059475,48 43.9901068,48 L4.00989318,48 C1.79529033,48 0,46.2059475 0,43.9901068 L0,4.00989318 Z M19,18.3 L25.5,18.3 L25.5,21.566 C26.437,19.688 28.838,18 32.445,18 C39.359,18 41,21.738 41,28.597 L41,41.3 L34,41.3 L34,30.159 C34,26.253 33.063,24.05 30.68,24.05 C27.375,24.05 26,26.425 26,30.159 L26,41.3 L19,41.3 L19,18.3 Z M7,41 L14,41 L14,18 L7,18 L7,41 Z M15,10.5 C15,12.985 12.985,15 10.5,15 C8.015,15 6,12.985 6,10.5 C6,8.015 8.015,6 10.5,6 C12.985,6 15,8.015 15,10.5 Z" class="background" fill="#0077B5"></path>
          </g>
        </g>
        <g class="bug-48dp" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
          <rect class="bug-text-color" fill="#FFFFFF" x="1" y="1" width="46" height="46" rx="4"></rect>
          <path d="M0,4.00989318 C0,1.79529033 1.79405245,0 4.00989318,0 L43.9901068,0 C46.2047097,0 48,1.79405245 48,4.00989318 L48,43.9901068 C48,46.2047097 46.2059475,48 43.9901068,48 L4.00989318,48 C1.79529033,48 0,46.2059475 0,43.9901068 L0,4.00989318 Z M19,18.3 L25.5,18.3 L25.5,21.566 C26.437,19.688 28.838,18 32.445,18 C39.359,18 41,21.738 41,28.597 L41,41.3 L34,41.3 L34,30.159 C34,26.253 33.063,24.05 30.68,24.05 C27.375,24.05 26,26.425 26,30.159 L26,41.3 L19,41.3 L19,18.3 Z M7,41 L14,41 L14,18 L7,18 L7,41 Z M15,10.5 C15,12.985 12.985,15 10.5,15 C8.015,15 6,12.985 6,10.5 C6,8.015 8.015,6 10.5,6 C12.985,6 15,8.015 15,10.5 Z" class="background" fill="#0077B5"></path>
        </g>
      </g>
    </svg></li-icon>
<span class="logo-text logo-lockup-inverse">          Sales Navigator 
</span></linkedin-logo>      </a>
    </h1>


    <nav class="nav-main">
        <ul>
          <li class="nav-item nav-item-home ">
              <a class="nav-item__text" href="/sales/?trk=d_sales2_nav_home">
                Home
              </a>
          </li>
<!---->          <li class="nav-item nav-item-lists ">
            <h2 class="nav-item__text">
              Lists
            </h2>
            <div class="dropdown-menu nav-item__dropdown-menu">
              <ul class="list-menu">
                <li>
<a id="ember8" href="/sales/search/people/list/my-network" class="ember-view">                    My network
</a>                </li>
                <li class="list-menu__profile-item">
<a id="ember9" data-control-name="view_lead_lists_from_nav" href="/sales/lists/people" class="ember-view">                      Lead Lists
</a>                </li>
                <li class="list-menu__account-item">
<a id="ember10" data-control-name="view_account_lists_from_nav" href="/sales/lists/company" class="ember-view">                      Account Lists
</a>                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item nav-item-discover ">
            <h2 class="nav-item__text">
              Discover
            </h2>
            <div class="dropdown-menu nav-item__dropdown-menu">
              <ul>
                <li>
<a id="ember11" href="/sales/search/people/list/recommended-leads" class="ember-view">                    Recommended leads
</a>                </li>
                <li>
<a id="ember12" href="/sales/search/company/list/recommended-accounts" class="ember-view">                    Recommended accounts
</a>                </li>
                <li>
                  <a href="/sales/settings?trk=d_sales2_nav_discover">
                    Edit your sales preferences
                  </a>
                </li>
              </ul>
            </div>
          </li>
            <li class="nav-item nav-item-admin ">
              <h2 class="nav-item__text">
                Admin
              </h2>
              <div class="dropdown-menu nav-item__dropdown-menu">
                <ul>
<!---->                    <li>
<div id="ember13" class="ember-view">                        <a href="/sales/admin/seats?trk=d_sales2_nav_admin">
                          Seat Management
                        </a>

</div>                    </li>
<!---->                </ul>
              </div>
            </li>
        </ul>
    </nav>


    <nav class="utility-navs">
      <ul>
          <li class="nav-item nav-item-inbox ">
<a id="ember14" href="/sales/inbox?trk=d_sales2_nav_inbox" class="nav-item__text type--icon ember-view">              <li-icon type="messages-icon" class="nav-item__icon" role="img" aria-label="Inbox"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M21,8H8A1,1,0,0,0,7,9V19a1,1,0,0,0,1,1H18l4,3V9A1,1,0,0,0,21,8ZM20,19.11L18.52,18H9V10H20v9.11ZM12,15h5v1H12V15ZM4,13H5v2H3a1,1,0,0,1-1-1V4A1,1,0,0,1,3,3H16a1,1,0,0,1,1,1V6H15V5H4v8Zm14,0H11V12h7v1Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
<!----></a>            <div class="dropdown nav-item__dropdown">
              <ul>
                <li>
<a id="ember15" href="/sales/inbox?trk=d_sales2_nav_inbox" class="ember-view">                    Sales Navigator Inbox
</a>                </li>
                <li>
                  <a href="/messaging?trk=d_sales2_nav_inbox" target="_blank" rel="noopener noreferrer">
                    LinkedIn Inbox
                  </a>
                </li>
              </ul>
            </div>
          </li>
            <li class="nav-item nav-item-alert-center ">
              <button class="button--unstyled nav-item__text type--icon" type="button" data-ember-action="" data-ember-action-16="16">
                <li-icon type="bell-filled-icon" class="nav-item__icon" role="img" aria-label="Alerts"><svg viewBox="0 0 24 24" width="24" height="24" style="" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false"><path d="M18.94,14H5.06L5.79,8.44A6.26,6.26,0,0,1,12,3h0a6.26,6.26,0,0,1,6.21,5.44Zm2,5-1.71-4H4.78L3.06,19a0.71,0.71,0,0,0-.06.28,0.75,0.75,0,0,0,.75.76H10a2,2,0,1,0,4,0h6.27A0.74,0.74,0,0,0,20.94,19Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
              </button>
<!---->              <div class="dropdown-no-baggage nav-item__dropdown for--alert-center open-on--click">
<div id="ember17" class="ember-view">                  <aside id="ember18" style="display: none;" class="in--dropdown alert-center ember-view">
<section class="alert-center__list relative">
      <header class="alert-center__list-header display-flex align-items-center pl4 pr2 pv1">
          <h2 class="a11y-text">
            Alert Center
          </h2>
            <span class="alert-center__list-header-text Sans-14px-black-90%">
              <span class="alert-center__illustration-caught-up illustration-56 shooting-star inline-block vertical-align-middle"></span>
              You’re all caught up!
            </span>
          <a id="ember19" href="/sales/settings" class="mlA button-tertiary-small alert-center__list-header-settings link-without-visited-and-hover-state ember-view">            Settings
</a>      </header>

      <div class="alert-center__scroll-block-overlay absolute "></div>

      <div class="alert-center__list-body">
          <div class="alert-center__list-content full-height box-sizing-border-box">
<div id="alertListId" class="infinite-scroller alert-center__infinite-list ember-view">              <ul class="ui-list list-style-none">
                  <li>
<div id="ember118" class="ember-view">                      <article id="ember119" class="alert-card flex ember-view">

<div class="alert-card__content flex-child-overflow-ellipsis mh4 mv3">
  <div class="alert-card__entity-lockup ui-entity-lockup ui-entity-lockup-size-2 ui-entity-lockup-type-person align-top">
    <figure class="alert-card__image">
<a id="ember120" href="/sales/people/ACwAAA3MRgEBIsjHBffsdBVsPOzjmrI92G5wO6w,ig_W,NAME_SEARCH" class="block ember-view">            <!---->  
<div class="mr2 presence-entity--size-2 relative">
  <img class="lazy-image circle-entity-2 loaded" alt="" src="https://media.licdn.com/dms/image/C5103AQFVp-VHSzg_5w/profile-displayphoto-shrink_100_100/0?e=1570060800&amp;v=beta&amp;t=eCXgChYhqjggoo0ii3NlM4-ZfwhpGxvyH-abnYn8fRA">

<!----></div>



</a>    </figure>
    <dl class="alert-card__lockup-text-content flex-child-overflow-ellipsis">
      <dt class="ui-entity-lockup-primary-text">
        <h3>
<a id="ember124" href="/sales/people/ACwAAA3MRgEBIsjHBffsdBVsPOzjmrI92G5wO6w,ig_W,NAME_SEARCH" class="alert-card__primary-text-link Sans-14px-black-90% ember-view"><div id="ember125" class="ember-view">Nasik Shafeek, a saved lead at axiom.ai - Techstars'18, <strong>viewed your profile</strong></div></a>        </h3>
      </dt>
      <dd class="mt3">
<!----><!---->      </dd>
    </dl>
  </div>
</div>
<div class="alert-card__actions text-align-right relative mv3">
<artdeco-hoverable-trigger id="ember126" tabindex="-1" class="alert-card__actions-hoverable-trigger block relative mlA ember-view">    <button class="alert-card__actions-icon button-round-tertiary-medium-muted vertical-align-middle" aria-describedby="artdeco-hoverable-artdeco-gen-42" aria-expanded="false" aria-controls="artdeco-hoverable-artdeco-gen-42" type="button" data-ember-action="" data-ember-action-127="127">
      <li-icon aria-hidden="true" type="ellipsis-horizontal-icon" color="muted"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M2,10H6v4H2V10Zm8,4h4V10H10v4Zm8-4v4h4V10H18Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
    </button>
<div id="artdeco-gen-42" style="display: none;" class="ember-view"><div id="ember129" class="ember-view"></div></div></artdeco-hoverable-trigger>  <time class="alert-card__time-ago Sans-12px-black-60% block" datetime="2019-07-31T16:09:25.822Z" title="July 31, 2019, 4:09 PM">
    20h
  </time>
</div>
</article>

</div>                  </li>
                  <li>
<div id="ember140" class="ember-view">                      <article id="ember141" class="alert-card flex ember-view">

<div class="alert-card__content flex-child-overflow-ellipsis mh4 mv3">
  <div class="alert-card__entity-lockup ui-entity-lockup ui-entity-lockup-size-2 ui-entity-lockup-type-person align-top">
    <figure class="alert-card__image">
<a id="ember142" href="/sales/people/ACwAABQpPxgBVmA7yFB640GsoUrPay8drcvNbGA,EY1B,NAME_SEARCH" class="block ember-view">            <!---->  
<div class="mr2 presence-entity--size-2 relative">
  <img class="lazy-image circle-entity-2 loaded" alt="" src="https://media.licdn.com/dms/image/C4E03AQFvBOgmWYTH3Q/profile-displayphoto-shrink_100_100/0?e=1570060800&amp;v=beta&amp;t=xUoIocn50Irm3DHwd_rKaa3jS5Irf9WIzFdUQrV4W8k">

<!----></div>



</a>    </figure>
    <dl class="alert-card__lockup-text-content flex-child-overflow-ellipsis">
      <dt class="ui-entity-lockup-primary-text">
        <h3>
<a id="ember146" href="/sales/people/ACwAABQpPxgBVmA7yFB640GsoUrPay8drcvNbGA,EY1B,NAME_SEARCH" class="alert-card__primary-text-link Sans-14px-black-90% ember-view"><div id="ember147" class="ember-view">Vanitha Maheshwaran, a saved lead at axiom.ai - Techstars'18, <strong>viewed your profile</strong></div></a>        </h3>
      </dt>
      <dd class="mt3">
<!----><!---->      </dd>
    </dl>
  </div>
</div>
<div class="alert-card__actions text-align-right relative mv3">
<artdeco-hoverable-trigger id="ember148" tabindex="-1" class="alert-card__actions-hoverable-trigger block relative mlA ember-view">    <button class="alert-card__actions-icon button-round-tertiary-medium-muted vertical-align-middle" aria-describedby="artdeco-hoverable-artdeco-gen-43" aria-expanded="false" aria-controls="artdeco-hoverable-artdeco-gen-43" type="button" data-ember-action="" data-ember-action-149="149">
      <li-icon aria-hidden="true" type="ellipsis-horizontal-icon" color="muted"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M2,10H6v4H2V10Zm8,4h4V10H10v4Zm8-4v4h4V10H18Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
    </button>
<div id="artdeco-gen-43" style="display: none;" class="ember-view"><div id="ember151" class="ember-view"></div></div></artdeco-hoverable-trigger>  <time class="alert-card__time-ago Sans-12px-black-60% block" datetime="2019-07-19T16:06:14.061Z" title="July 19, 2019, 4:06 PM">
    2w
  </time>
</div>
</article>

</div>                  </li>
                  <li>
<div id="ember162" class="ember-view">                      <article id="ember163" class="alert-card flex ember-view">

<div class="alert-card__content flex-child-overflow-ellipsis mh4 mv3">
  <div class="alert-card__entity-lockup ui-entity-lockup ui-entity-lockup-size-2 ui-entity-lockup-type-person align-top">
    <figure class="alert-card__image">
<a id="ember164" href="/sales/people/ACwAAAzkTNABmryDnvdm-SaCy9FNjdDXUzHFOJ0,kFrw,NAME_SEARCH" class="block ember-view">            <!---->  
<div class="mr2 presence-entity--size-2 relative">
  <img class="lazy-image circle-entity-2 ghost-person loaded" alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7">

<!----></div>



</a>    </figure>
    <dl class="alert-card__lockup-text-content flex-child-overflow-ellipsis">
      <dt class="ui-entity-lockup-primary-text">
        <h3>
<a id="ember168" href="/sales/people/ACwAAAzkTNABmryDnvdm-SaCy9FNjdDXUzHFOJ0,kFrw,NAME_SEARCH" class="alert-card__primary-text-link Sans-14px-black-90% ember-view"><div id="ember169" class="ember-view">Riswan Muhammadh, a saved lead at axiom.ai - Techstars'18, <strong>viewed your profile</strong></div></a>        </h3>
      </dt>
      <dd class="mt3">
<!----><!---->      </dd>
    </dl>
  </div>
</div>
<div class="alert-card__actions text-align-right relative mv3">
<artdeco-hoverable-trigger id="ember170" tabindex="-1" class="alert-card__actions-hoverable-trigger block relative mlA ember-view">    <button class="alert-card__actions-icon button-round-tertiary-medium-muted vertical-align-middle" aria-describedby="artdeco-hoverable-artdeco-gen-44" aria-expanded="false" aria-controls="artdeco-hoverable-artdeco-gen-44" type="button" data-ember-action="" data-ember-action-171="171">
      <li-icon aria-hidden="true" type="ellipsis-horizontal-icon" color="muted"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M2,10H6v4H2V10Zm8,4h4V10H10v4Zm8-4v4h4V10H18Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
    </button>
<div id="artdeco-gen-44" style="display: none;" class="ember-view"><div id="ember173" class="ember-view"></div></div></artdeco-hoverable-trigger>  <time class="alert-card__time-ago Sans-12px-black-60% block" datetime="2019-07-19T16:06:09.718Z" title="July 19, 2019, 4:06 PM">
    2w
  </time>
</div>
</article>

</div>                  </li>
                  <li>
<div id="ember184" class="ember-view">                      <article id="ember185" class="alert-card flex ember-view">

<div class="alert-card__content flex-child-overflow-ellipsis mh4 mv3">
  <div class="alert-card__entity-lockup ui-entity-lockup ui-entity-lockup-size-2 ui-entity-lockup-type-person align-top">
    <figure class="alert-card__image">
<a id="ember186" href="/sales/people/ACwAAAutXGwBJL1cba26WBdq6xjZMezMQumufbE,0wOv,NAME_SEARCH" class="block ember-view">            <!---->  
<div class="mr2 presence-entity--size-2 relative">
  <img class="lazy-image circle-entity-2 loaded" alt="" src="https://media.licdn.com/dms/image/C5103AQFbVIdq0iy-Iw/profile-displayphoto-shrink_100_100/0?e=1570060800&amp;v=beta&amp;t=7ZduOeZs8B51-he1a3lURIkyAeje-xHmMZr0fiVIuIk">

<!----></div>



</a>    </figure>
    <dl class="alert-card__lockup-text-content flex-child-overflow-ellipsis">
      <dt class="ui-entity-lockup-primary-text">
        <h3>
<a id="ember190" href="/sales/people/ACwAAAutXGwBJL1cba26WBdq6xjZMezMQumufbE,0wOv,NAME_SEARCH" class="alert-card__primary-text-link Sans-14px-black-90% ember-view"><div id="ember191" class="ember-view">Raza Rafaideen, a saved lead at axiom.ai - Techstars'18, <strong>accepted your invitation to connect</strong></div></a>        </h3>
      </dt>
      <dd class="mt3">
<!----><!---->      </dd>
    </dl>
  </div>
</div>
<div class="alert-card__actions text-align-right relative mv3">
<artdeco-hoverable-trigger id="ember192" tabindex="-1" class="alert-card__actions-hoverable-trigger block relative mlA ember-view">    <button class="alert-card__actions-icon button-round-tertiary-medium-muted vertical-align-middle" aria-describedby="artdeco-hoverable-artdeco-gen-45" aria-expanded="false" aria-controls="artdeco-hoverable-artdeco-gen-45" type="button" data-ember-action="" data-ember-action-193="193">
      <li-icon aria-hidden="true" type="ellipsis-horizontal-icon" color="muted"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M2,10H6v4H2V10Zm8,4h4V10H10v4Zm8-4v4h4V10H18Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
    </button>
<div id="artdeco-gen-45" style="display: none;" class="ember-view"><div id="ember195" class="ember-view"></div></div></artdeco-hoverable-trigger>  <time class="alert-card__time-ago Sans-12px-black-60% block" datetime="2019-07-19T15:54:38.496Z" title="July 19, 2019, 3:54 PM">
    2w
  </time>
</div>
</article>

</div>                  </li>
<!---->              </ul>
</div>          </div>
      </div>
    </section>
    <div id="ember20" class="ember-view">
<div id="ember21" class="ember-view"><!----></div></div>
</aside>
</div>              </div>
            </li>
        <li class="nav-item nav-item-user ">
          <h2 class="nav-item__text type--entity">
            <span class="a11y-text">
              Axiom AI
            </span>
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" class="entity-person ghost-person" alt="Axiom AI">
<!---->            <div id="profile-visibility-settings-wormhole"></div>
          </h2>
          <div class="dropdown nav-item__dropdown">
              <h3>
                Account
              </h3>
              <ul class="utility-nav-items" role="navigation">
                  <li class="settings">
                      <a id="ember22" href="/sales/settings?trk=d_sales2_nav_admin" class="ember-view">Settings</a>
                  </li>
                <li>
<a id="ember23" data-control-name="view_sales_nav_coach" href="/sales/coach" class="ember-view">                    <div class="flex align-items-center">
                      <div class="mr1">Sales Navigator Coach</div>
<!---->                    </div>
</a>                </li>
                <li>
                  <a href="/sales/ssi/dashboard?trk=sales-home2-ssi_score" target="_blank" rel="noopener noreferrer">
                    Social Selling Index
                  </a>
                </li>
              </ul>
              <h3>
                Help
              </h3>
              <ul>
                <li class="help-center">
                  <a href="/help/sales-navigator?trk=d_sales2_nav_account" target="_blank" rel="noopener noreferrer">
                    Help Center
                  </a>
                </li>
                <li class="learning-center">
                  <a href="https://business.linkedin.com/en-us/sales-solutions/sales-navigator-customer-hub?trk=d_sales2_nav_account" target="_blank" rel="noopener noreferrer">
                    Customer Hub
                  </a>
                </li>
<!---->              </ul>
              <h3>
                Legal
              </h3>
              <ul>
                <li class="user-agreement">
                  <a href="/legal/user-agreement?trk=d_sales2_nav_account" target="_blank" rel="noopener noreferrer">
                    User agreement
                  </a>
                </li>
                <li class="privacy-policy">
                  <a href="/legal/privacy-policy?trk=d_sales2_nav_account" target="_blank" rel="noopener noreferrer">
                    Privacy policy
                  </a>
                </li>
                <li class="cookie-policy">
                  <a href="/legal/cookie-policy?trk=d_sales2_nav_account" target="_blank" rel="noopener noreferrer">
                    Cookie policy
                  </a>
                </li>
              </ul>
              <hr>
              <h3 class="a11y-text">
                Other
              </h3>
              <ul>
                <li class="user">
<a id="ember24" href="/sales/logout?trk=d_sales2_nav_account" class="ember-view">                    Sign out
</a>                </li>
              </ul>
          </div>
        </li>
        <hr class="nav-divider">
<!---->        <li class="nav-item nav-item-app-switcher">
          <h2 class="nav-item__text type--icon" title="More products">
            <li-icon type="grid-icon" class="nav-item__icon" role="img" aria-label="More products"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M10,10h4v4H10V10Zm0,11h4V17H10v4ZM3,14H7V10H3v4Zm0,7H7V17H3v4ZM3,7H7V3H3V7Zm14,7h4V10H17v4ZM17,3V7h4V3H17ZM10,7h4V3H10V7Zm7,14h4V17H17v4Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
          </h2>
          <div class="dropdown nav-item__dropdown">
            <h3>
              Visit more LinkedIn products
            </h3>
            <ul>
              <li>
                <a class="global-nav-app-switcher__icon" href="/?trk=d_sales2_nav_applauncher">
                  <span class="product-logo">
                    <li-icon aria-hidden="true" type="app-linkedin-bug-color-icon"><svg viewBox="0 0 40 40" width="40px" height="40px" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false">
      <g class="app-icon" style="fill: currentColor">
        <g>
          <path style="fill:#0077B5;" d="M34.5,3H5.6C4.2,3,3,4.1,3,5.4v29.1C3,35.9,4.2,37,5.6,37h29C35.9,37,37,35.9,37,34.6V5.4C37,4.1,35.9,3,34.5,3z"></path>
          <path style="fill:#FFFFFF;" d="M8,16h5v16H8V16z"></path>
          <path style="fill:#FFFFFF;" d="M16,16h4.8v2.4c0.6-1.3,2.5-2.6,4.9-2.6c4.7,0,6.3,2.1,6.3,7.2V32h-5v-8c0-2.7-0.5-4.1-2.5-4.1c-2.6,0-3.5,2-3.5,4.1V32h-5V16z"></path>
          <circle style="fill:#FFFFFF;" cx="10.5" cy="10.5" r="3.05"></circle>
        </g>
      </g>
    </svg></li-icon>
                  </span>
                  <span class="product-name">
                    LinkedIn
                  </span>
                </a>
              </li>
<!---->              <li>
                <a class="global-nav-app-switcher__icon" href="/ad/start?trk=d_sales2_nav_applauncher">
                  <span class="product-logo">
                    <li-icon aria-hidden="true" type="app-ads-icon"><svg viewBox="0 0 40 40" width="40px" height="40px" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false">
      <g class="app-icon" style="fill: currentColor">
        <defs>
          <linearGradient id="hg3" x1="34.78" y1="3.84" x2="14.66" y2="25.84" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#665ed0"></stop>
            <stop offset="1" stop-color="#0073b1"></stop>
          </linearGradient>
        </defs>
        <g>
          <path d="M20,11.88A8.13,8.13,0,1,1,11.88,20,8.13,8.13,0,0,1,20,11.88M20,9A11,11,0,1,0,31,20,11,11,0,0,0,20,9h0Z" style="fill: url(#hg3)"></path>
          <circle cx="20" cy="20" r="4" style="fill: url(#hg3)"></circle>
        </g>
        <circle cx="20" cy="20" r="2" transform="translate(-8.28 20) rotate(-45)" style="fill: #33aada"></circle>
        <rect x="20.83" y="13.17" width="4" height="8" transform="translate(18.83 -11.11) rotate(45)" style="fill: #33aada"></rect>
        <polygon points="29.19 16.46 24.24 15.76 23.54 10.81 28.48 5.86 29 11 34.14 11.52 29.19 16.46" style="fill: #33aada"></polygon>
      </g>
    </svg></li-icon>
                  </span>
                  <span class="product-name">
                    Advertise
                  </span>
                </a>
              </li>
              <li>
                <a class="global-nav-app-switcher__icon" href="/learning/?trk=d_sales2_nav_applauncher">
                  <span class="product-logo">
                    <li-icon aria-hidden="true" type="app-learning-icon"><svg viewBox="0 0 40 40" width="40px" height="40px" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false">
      <g class="app-icon" style="fill: currentColor">
        <defs>
          <linearGradient id="hg22" x1="7.18" y1="6.98" x2="13.8" y2="20.22" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#33aada"></stop>
            <stop offset="1" stop-color="#0091ca"></stop>
          </linearGradient>
          <linearGradient id="hg23" x1="12.96" y1="-17.55" x2="27.9" y2="24.33" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#665ed0"></stop>
            <stop offset="1" stop-color="#0073b1"></stop>
          </linearGradient>
        </defs>
        <path d="M20,30H8a1,1,0,0,1-1-1V11a1,1,0,0,1,1-1H20V30Z" style="fill: url(#hg22)"></path>
        <path d="M20,10H32a1,1,0,0,1,1,1V29a1,1,0,0,1-1,1H20a0,0,0,0,1,0,0V10A0,0,0,0,1,20,10Z" style="fill: url(#hg23)"></path>
        <rect x="9" y="19" width="8" height="2" style="fill: #33aada"></rect>
        <rect x="9" y="23" width="8" height="2" style="fill: #33aada"></rect>
        <rect x="9" y="15" width="8" height="2" style="fill: #33aada"></rect>
        <rect x="23" y="19" width="8" height="2" style="fill: #006097"></rect>
        <rect x="23" y="23" width="8" height="2" style="fill: #006097"></rect>
        <rect x="23" y="15" width="8" height="2" style="fill: #006097"></rect>
        <path d="M17.41,15.25l7.46,4.52a0.27,0.27,0,0,1,0,.46l-7.46,4.52A0.27,0.27,0,0,1,17,24.52v-9A0.27,0.27,0,0,1,17.41,15.25Z" style="fill: #fff"></path>
      </g>
    </svg></li-icon>
                  </span>
                  <span class="product-name">
                    Learning
                  </span>
                </a>
              </li>
              <li>
                <a class="global-nav-app-switcher__icon" href="/mjobs/jobPosting/learnMore?trk=d_sales2_nav_applauncher">
                  <span class="product-logo">
                    <li-icon aria-hidden="true" type="app-jobs-posting-icon"><svg viewBox="0 0 40 40" width="40px" height="40px" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false">
      <g class="app-icon" style="fill: currentColor">
        <defs>
          <linearGradient id="hg19" x1="-6.68" y1="-1" x2="25.05" y2="26.36" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#665ed0"></stop>
            <stop offset="1" stop-color="#0073b1"></stop>
          </linearGradient>
        </defs>
        <line x1="20" y1="8.67" x2="16" y2="15.33" style="fill: none;stroke: #caedff;stroke-miterlimit: 10;stroke-width: 2px"></line>
        <line x1="20" y1="8.67" x2="24" y2="15.33" style="fill: none;stroke: #caedff;stroke-miterlimit: 10;stroke-width: 2px"></line>
        <rect x="8" y="14" width="24" height="16" rx="1" ry="1" style="fill: url(#hg19)"></rect>
        <rect x="12" y="18" width="16" height="3" style="fill: #65c3e8"></rect>
        <rect x="15" y="23" width="10" height="3" style="fill: #33aada"></rect>
        <circle cx="20" cy="9" r="2" style="fill: #65c3e8"></circle>
      </g>
    </svg></li-icon>
                  </span>
                  <span class="product-name">
                    Post a job
                  </span>
                </a>
              </li>
              <li>
                <a class="global-nav-app-switcher__icon" href="/groups?trk=d_sales2_nav_applauncher">
                  <span class="product-logo">
                    <li-icon aria-hidden="true" type="app-groups-icon"><svg viewBox="0 0 40 40" width="40px" height="40px" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false">
      <g class="app-icon" style="fill: currentColor">
        <defs>
          <clipPath id="hg15">
            <path d="M18.17,9.15a11,11,0,0,0-7.76,16.23l-2,5.6a0.47,0.47,0,0,0,.63.59l5.21-2.23A11,11,0,1,0,18.17,9.15Z" style="fill: none"></path>
          </clipPath>
          <linearGradient id="hg16" x1="1.84" y1="-24.59" x2="20.66" y2="25.05" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#665ed0"></stop>
            <stop offset="1" stop-color="#0073b1"></stop>
          </linearGradient>
        </defs>
        <path d="M18.17,9.15a11,11,0,0,0-7.76,16.23l-2,5.6a0.47,0.47,0,0,0,.63.59l5.21-2.23A11,11,0,1,0,18.17,9.15Z" style="fill: #caedff"></path>
        <circle cx="29" cy="16" r="3" style="fill: #0091ca"></circle>
        <circle cx="11" cy="16" r="3" style="fill: #0091ca"></circle>
        <g style="clip-path: url(#hg15)">
          <path d="M20,18a4,4,0,1,1,4-4A4,4,0,0,1,20,18Zm3,2H17V36h6V20Z" style="fill: url(#hg16)"></path>
          <rect x="26" y="21" width="6" height="14" style="fill: #0091ca"></rect>
          <rect x="8" y="21" width="6" height="14" style="fill: #0091ca"></rect>
        </g>
      </g>
    </svg></li-icon>
                  </span>
                  <span class="product-name">
                    Groups
                  </span>
                </a>
              </li>
              <li>
                <a class="global-nav-app-switcher__icon" href="/profinder?trk=d_sales2_nav_applauncher">
                  <span class="product-logo">
                    <li-icon aria-hidden="true" type="app-profinder-icon"><svg viewBox="0 0 40 40" width="40px" height="40px" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false">
      <g class="app-icon" style="fill: currentColor">
        <circle cx="20" cy="12" r="4" style="fill: #0073b1"></circle>
        <path d="M31.88,13.46L16.17,29.17,18,31A1.37,1.37,0,0,0,20,31L34.71,16.29a1.13,1.13,0,0,0,.29-0.8,0.89,0.89,0,0,0-.29-0.61L33.3,13.46A1,1,0,0,0,31.88,13.46Z" style="fill: #0091ca"></path>
        <path d="M21.83,29.17L20,31a1.35,1.35,0,0,1-1,.4,1.36,1.36,0,0,1-1-.4L9.29,22.29a1,1,0,0,1,0-1.41l1.41-1.41a1.07,1.07,0,0,1,.76-0.29,0.94,0.94,0,0,1,.65.29Z" style="fill: #33aada;opacity: 0.8"></path>
        <polygon points="19 26.34 23 22.34 23 18 17 18 17 24.34 19 26.34" style="fill: #0073b1"></polygon>
      </g>
    </svg></li-icon>
                  </span>
                  <span class="product-name">
                    ProFinder
                  </span>
                </a>
              </li>
              <li>
                <a class="global-nav-app-switcher__icon" href="/salary?trk=d_sales2_nav_applauncher">
                  <span class="product-logo">
                    <li-icon aria-hidden="true" type="app-salary-icon"><svg viewBox="0 0 40 40" width="40px" height="40px" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false">
      <g class="app-icon" style="fill: currentColor">
        <g id="Salary_App_Icon_1_">
          <g>
            <rect x="7" y="27" style="fill-rule:evenodd;clip-rule:evenodd;fill:#0084BF;" width="26" height="2"></rect>
            <path style="fill-rule:evenodd;clip-rule:evenodd;fill:#33AADA;" d="M31,32H9c-1.1,0-2-0.9-2-2v0h26v0C33,31.1,32.1,32,31,32z"></path>
            <g>
              <linearGradient id="hg33" gradientUnits="userSpaceOnUse" x1="21.8265" y1="19.1212" x2="16.7278" y2="13.1997">
                <stop offset="0" style="stop-color:#1074AF"></stop>
                <stop offset="1" style="stop-color:#5251C0"></stop>
              </linearGradient>
              <circle style="fill-rule:evenodd;clip-rule:evenodd;fill:url(#hg33);" cx="20" cy="17" r="5"></circle>
              <linearGradient id="hg34" gradientUnits="userSpaceOnUse" x1="25.44" y1="23.3179" x2="10.2541" y2="5.6813">
                <stop offset="0" style="stop-color:#1074AF"></stop>
                <stop offset="1" style="stop-color:#5251C0"></stop>
              </linearGradient>
              <path style="fill-rule:evenodd;clip-rule:evenodd;fill:url(#hg34);" d="M32,8H8C7.4,8,7,8.4,7,9v16c0,0.6,0.4,1,1,1h24c0.6,0,1-0.4,1-1V9C33,8.4,32.6,8,32,8z M31,20c-1.9,0.7-3.3,2.2-4,4H13c-0.7-1.9-2.2-3.3-4-4V14c1.9-0.7,3.3-2.2,4-4H27c0.7,1.9,2.2,3.3,4,4V20z"></path>
            </g>
          </g>
        </g>
        <g>
          <path style="fill-rule:evenodd;clip-rule:evenodd;fill:#0084BF;" d="M16.5,20.5c2,2,5.1,2,7.1,0c2-2,2-5.1,0-7.1L16.5,20.5z"></path>
        </g>
      </g>
    </svg></li-icon>
                  </span>
                  <span class="product-name">
                    Salary
                  </span>
                </a>
              </li>
              <li>
                <a class="global-nav-app-switcher__icon" href="https://www.slideshare.net/?trk=d_sales2_nav_applauncher">
                  <span class="product-logo">
                    <li-icon aria-hidden="true" type="app-slideshare-icon"><svg viewBox="0 0 40 40" width="40px" height="40px" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false">
      <g class="app-icon" style="fill: currentColor">
        <path style="fill-rule:evenodd;clip-rule:evenodd;fill:#CAEDFF;" d="M18,24.1h4h0.9c4.2,0,9.5-1,12.1-1.6V11c0-1.7-1.3-3-3-3H8c-1.7,0-3,1.3-3,3v11.5c2.6,0.6,7.9,1.6,12.1,1.6H18z"></path>
        <circle style="fill-rule:evenodd;clip-rule:evenodd;fill:#0091CA;" cx="13" cy="17" r="4"></circle>
        <linearGradient id="hg36" gradientUnits="userSpaceOnUse" x1="25.2828" y1="11.5146" x2="30.3518" y2="27.7071">
          <stop offset="0" style="stop-color:#665ED0"></stop>
          <stop offset="1" style="stop-color:#0073B1"></stop>
        </linearGradient>
        <circle style="fill-rule:evenodd;clip-rule:evenodd;fill:url(#hg36);" cx="27" cy="17" r="4"></circle>
        <g>
          <path style="fill:#2569B4;" d="M37.4,25l-0.6-2c-0.2-0.5-0.7-0.8-1.2-0.7c-1.9,0.4-6.5,1.4-10.7,1.7v4.9c0,0.8-0.4,1.4-1,1.8V33c0,0.6,0.4,1,1,1h5c0.6,0,1-0.4,1-1v-5.7c2.4-0.4,4.5-0.7,5.7-1C37.3,26.2,37.6,25.6,37.4,25z"></path>
        </g>
        <path style="fill:#0091CA;" d="M22,24.1h-4.9c-4.6,0-10.6-1.2-12.8-1.7c-0.5-0.1-1,0.2-1.2,0.7l-0.6,2c-0.2,0.6,0.2,1.2,0.8,1.3c1.2,0.2,3.3,0.6,5.7,1V33c0,0.6,0.4,1,1,1h5c0.6,0,1-0.4,1-1v-5c0.4,0,0.8,0,1.1,0H22c0.6,0,1-0.4,1-1v-1.9C23,24.5,22.6,24.1,22,24.1z"></path>
      </g>
    </svg></li-icon>
                  </span>
                  <span class="product-name">
                    SlideShare
                  </span>
                </a>
              </li>
            </ul>
          </div>
        </li>
      </ul>
    </nav>

  </div>
</div>



  <div class="navbar-search">
    <div class="container">


      <section class="nav-search">
        <h2 class="a11y-text">
          Search
        </h2>
        <form id="nav-search-form" class="nav-search-form inverse-form" name="globalNavSearch" action="https://www.linkedin.com/sales/search?trk=nav_search" role="search" data-lead-builder-clean-up="true" data-open-link-in-results="true" data-recent-searches-enabled="true" data-exclude-leads-enabled="true" data-states-typeahead-enabled="true" data-galene-search-enabled="true" data-admin-sync-enabled="true" data-company-pivot-page-enabled="true" data-search-v3-enabled="true">
          <button name="cancel" class="nav-search-cancel" aria-label="Cancel search" data-ember-action="" data-ember-action-25="25">
            <li-icon aria-hidden="true" type="arrow-left-icon"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M2,12a1,1,0,0,1,.29-0.71L10.59,3l1.29,1.29L5.17,11H21v2H5.17l6.71,6.71L10.59,21,2.29,12.71A1,1,0,0,1,2,12Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
            Cancel
          </button>
          <fieldset>
            <label for="nav-search-input" class="a11y-text">
              Search by keywords or boolean
            </label>
            <li-icon aria-hidden="true" type="search-icon" class="search-icon"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M21,19.67l-5.44-5.44a7,7,0,1,0-1.33,1.33L19.67,21ZM10,15.13A5.13,5.13,0,1,1,15.13,10,5.13,5.13,0,0,1,10,15.13Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
<div id="ember26" class="nav-search-typeahead-component ember-view"><!----><div id="ember27" class="nav-search-typeahead-component__typeahead nav-search-typeahead nav-search-typeahead--rounded ember-view"><div class="ui-dope-typeahead-input-container nav-search-typeahead__visible">
  <input autocomplete="off" class="nav-search-typeahead__input" id="typeahead-input-ember27" name="keywords" placeholder="Search by keywords or boolean" spellcheck="true" type="text">
</div>

<!----></div></div>            <input id="ember28" name="trk" class="ember-text-field ember-view" type="hidden" value="lss-nav-typeahead">
            <input id="ember29" name="updateHistory" class="ember-text-field ember-view" type="hidden" value="false">
          </fieldset>
          <button name="search" class="nav-search-submit icon-search" aria-label="Search" type="submit" data-ember-action="" data-ember-action-30="30">
            <span>
              Search
            </span>
          </button>
        </form>
          <div class="nav-advanced-search">
            
<div class="advanced global-nav-list-item">
  <button class="global-nav-advanced-button" type="button">
    Advanced
  </button>
  <div class="dropdown">
    <ul>
      <li>
<a id="ember31" href="/sales/search/people?viewAllFilters=true" class="ember-view">          Search for leads
</a>      </li>
      <li>
<a id="ember32" href="/sales/search/company?viewAllFilters=true" class="ember-view">          Search for accounts
</a>      </li>
    </ul>
  </div>
</div>
          </div>
      </section>


      <section class="nav-saved-searches">
        <h2 class="dropdown-label">
          Saved Searches
        </h2>
<!---->        <div class="dropdown nav-item__dropdown">
          <h3 class="dropdown-heading">
            Saved Searches
            –
            <button class="trigger-saved-searches" disabled="" data-ember-action="" data-ember-action-33="33">
              Edit
            </button>
          </h3>
              <p>
                You have no saved searches. Save your searches to receive automated alerts when new leads match your criteria.
                <a href="https://www.linkedin.com/help/sales-navigator/answer/50237" target="_blank" rel="noopener">
                  Learn more
                </a>
              </p>
        </div>
      </section>
      
<div id="ember34" class="ember-view"><!----></div>
    </div>
  </div>

<!---->

<div class="global-nav-search-dimmer"></div>
</header>

    <div class="navbar-help">
      <div id="ember35" class="global-nav-help-container ember-view">
<h3 class="hide-a11y">Help links</h3>

<button aria-label="Help" class="global-nav-help-button" aria-haspopup="true" aria-expanded="false" type="button">
  <li-icon aria-hidden="true" type="question-pebble-icon" class="global-nav-help-icon"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M12,2C6.5,2,2,6.5,2,12s4.5,10,10,10c5.5,0,10-4.5,10-10S17.5,2,12,2zM12,20.2c-4.5,0-8.2-3.7-8.2-8.2S7.5,3.8,12,3.8c4.5,0,8.2,3.7,8.2,8.2S16.5,20.2,12,20.2zM11,16h2v2h-2V16zM16,9.3V10c0,1.7-1.3,2.9-3,2.9V14h-2v-1c0-1.1,0.9-2,2-2h0.3c0.5,0,0.9-0.4,0.9-0.9v-1.3c0-0.5-0.4-0.9-0.9-0.9h-2.6c-0.5,0-0.9,0.4-0.9,0.9V10H8V9.3C8,7.5,9.5,6,11.3,6h1.5C14.5,6,16,7.5,16,9.3z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
  <span class="global-nav-help-text">Help</span>
  <li-icon aria-hidden="true" type="cancel-icon" class="global-nav-close-icon" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M13,4.32L9.31,8,13,11.69,11.69,13,8,9.31,4.31,13,3,11.69,6.69,8,3,4.31,4.31,3,8,6.69,11.68,3Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
</button>

<nav class="global-nav-help-wrapper">
  <ul class="global-nav-help-list" role="menu">

      <li class="global-nav-help-item" role="menuitem">
        <button class="global-nav-help-link" id="global-chat-now" style="display: none" type="button">
          Chat with us
        </button>
      </li>

      <li class="global-nav-help-item" role="menuitem">
        <button class="global-nav-help-link" id="global-chat-offline" disabled="" type="button">
          Chat with us (offline)
        </button>
      </li>

<!---->
    <li class="global-nav-help-item" role="menuitem">
      <a class="global-nav-help-link" href="https://business.linkedin.com/en-us/sales-solutions/sales-navigator-customer-hub?trk=d_sales2_nav_account" target="_blank" rel="noopener noreferrer">
        Customer Hub
      </a>
    </li>

    <li class="global-nav-help-item" role="menuitem">
      <a class="global-nav-help-link" href="/help/sales-navigator/?trk=d_sales2_nav_helpwidget&amp;lang=en" target="_blank" rel="noopener noreferrer">
        Help Center
      </a>
    </li>

  </ul>
</nav>
</div>
    </div>

    <main id="content-main" class="content-main people desktop">
        <div class="profile-topcard full-width pb5">
    <div class="container">
      <div class="flex">
        <div class="flex-1 mr2">
          <div class="pt6 ph0 pb0 mt2 flex Sans-14px-black-75%">
              
<div class=" presence-entity--size-6 relative">
  <img class="lazy-image circle-entity-6 ghost-person loaded" alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7">

<!----></div>

            <div class="profile-topcard-person-entity__content min-width inline-block">
              <dl class="vertical-align-top pl4">
                <dt class="flex align-items-center">
                  <span class="profile-topcard-person-entity__name Sans-24px-black-90%-bold">
                      Riswan Muhammadh
                  </span>

                  <ul class="ml2 flex align-items-center list-style-none">
                      <li class="mr1">
                        <span class="label-16dp block">
                          2nd
                        </span>
                      </li>

<!---->
<!---->
<!---->
<!---->
                      <li class="mr1">
                        <li-icon aria-hidden="true" type="check-xsmall-icon" class="profile-badges__icon m-type--saved"><svg viewBox="0 0 16 16" width="16" height="16" style="" x="0" y="0" preserveAspectRatio="xMinYMin meet" focusable="false"><path d="M12.88,3L6,11.72,3.13,8,1.76,9.07l3.65,4.66A0.72,0.72,0,0,0,6,14a0.7,0.7,0,0,0,.59-0.28L14.2,4Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
                        <span class="Sans-14px-black-75%-bold" aria-hidden="true">
                          Saved
                        </span>
                      </li>
                  </ul>
                </dt>

                <dd class="mt2">
                    Software Quality Assurance Engineer at axiom.ai In-browser Robotic Process Automation
                </dd>
                <dd class="profile-topcard-person-entity__summary min-width mt2">
                    <div class="flex">
                      <span class="display-block overflow-hidden profile-topcard__summary-content profile-topcard__summary Sans-14px-black-75%">
                        <div id="ember49" class="ember-view">Experienced Software Quality Assurance Engineer with a demonstrated history of working in the computer software industry. Skilled in SQL, ASP.NET MVC, O<button class="button--unstyled link-without-visited-state inline-block font-size-inherit profile-topcard__summary-expand-link" type="button">…see more</button></div>
                      </span>
                    </div>
                </dd>
                <dd class="mt4 mb0">
                    <div class="profile-topcard__location-data inline Sans-14px-black-60% mr5">
                      <li-icon aria-hidden="true" type="map-marker-icon" class="profile-topcard__hovercard-icon" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M8,4a2,2,0,1,0,2,2A2,2,0,0,0,8,4ZM8,7.13A1.13,1.13,0,1,1,9.13,6,1.13,1.13,0,0,1,8,7.13ZM8,1A5,5,0,0,0,3,6a5.37,5.37,0,0,0,.41,2S5.91,13,7.22,15.52A0.86,0.86,0,0,0,8,16H8a0.86,0.86,0,0,0,.78-0.48C10.09,13,12.59,8,12.59,8A5.37,5.37,0,0,0,13,6,5,5,0,0,0,8,1Zm2.88,6.24L8,12.92,5.12,7.24A3.49,3.49,0,0,1,4.88,6a3.13,3.13,0,0,1,6.25,0A3.49,3.49,0,0,1,10.88,7.24Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
                      Sri Lanka
                    </div>

                      <div class="profile-topcard__connections-data type-total inline Sans-14px-black-60% mr5">
                        <li-icon aria-hidden="true" type="people-icon" class="profile-topcard__hovercard-icon" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M14.27,9.23l-1.2-.45,0.31-.51A4.17,4.17,0,0,0,14,6.08V5.5a2.5,2.5,0,0,0-5,0V6.08a4.17,4.17,0,0,0,.62,2.19L9.93,8.78l-1.15.43a3.48,3.48,0,0,0-1-.63L7,8.29V7.73l0.25-.41A5,5,0,0,0,8,4.69V4A3,3,0,0,0,2,4V4.69a5,5,0,0,0,.75,2.63L3,7.73V8.29l-0.74.29A3.5,3.5,0,0,0,0,11.84V13a1,1,0,0,0,1,1H15a1,1,0,0,0,1-1V11.75A2.7,2.7,0,0,0,14.27,9.23ZM10.88,5.38a0.63,0.63,0,0,1,1.25,0v1a2.29,2.29,0,0,1-.34,1.2L11.5,8l-0.28-.46a2.29,2.29,0,0,1-.34-1.2v-1ZM4,3.75a1,1,0,0,1,2,0V5.19a3,3,0,0,1-.38,1.46l-0.33.6a0.25,0.25,0,0,1-.22.13H4.93a0.25,0.25,0,0,1-.22-0.13l-0.33-.6A3,3,0,0,1,4,5.19V3.75ZM8,12H2V11.68a1.5,1.5,0,0,1,1-1.4L4.5,9.7V9.2a2,2,0,0,0,.4.05H5.1A2,2,0,0,0,5.5,9.2V9.7L7,10.28a1.5,1.5,0,0,1,1,1.4V12Zm6.13,0H10V11.84a3.48,3.48,0,0,0-.24-1.25L11,10.13V9.75h1v0.38l1.54,0.61a0.93,0.93,0,0,1,.58.87V12Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
                        75 connections
                      </div>

                    <div class="profile-topcard__connections-data type-shared inline mr5">
<a id="ember50" href="/sales/search/people/list/shared-connections/ACwAAAzkTNABmryDnvdm-SaCy9FNjdDXUzHFOJ0,kFrw,NAME_SEARCH" class="profile-topcard__connections-link type-shared inverse-link-on-a-light-background ember-view">                        <li-icon aria-hidden="true" type="in-common-icon" class="profile-topcard__hovercard-icon" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M11,3C9.9,3,8.9,3.4,8,4C5.8,2.3,2.7,2.8,1,5s-1.2,5.3,1,7c0.9,0.6,1.9,1,3,1s2.1-0.4,3-1c2.2,1.7,5.3,1.2,7-1s1.2-5.3-1-7C13.1,3.4,12.1,3,11,3z M1.9,8c0-1.7,1.4-3.1,3.1-3.1c0.6,0,1.2,0.2,1.7,0.5c-1,1.6-1,3.6,0,5.2c-1.4,1-3.4,0.6-4.3-0.8C2.1,9.2,1.9,8.6,1.9,8z M11,11.1c-0.6,0-1.2-0.2-1.7-0.5c1-1.6,1-3.6,0-5.2c1.4-1,3.4-0.6,4.3,0.9s0.6,3.4-0.9,4.3C12.2,10.9,11.6,11.1,11,11.1z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
                        1 shared connection
</a>                    </div>
                </dd>
              </dl>
            </div>
          </div>

          <div class="Sans-14px-black-75%">
            <dl class="overflow-hidden">

                <dd class="profile-topcard__current-positions flex mt3">
<a id="ember51" href="#profile-positions" class="profile-topcard__summary-link type-positions brand-color link-without-visited-state flex align-items-center ember-view">                        <span aria-hidden="true">Current</span>
                      <span class="a11y-text">Current job (same page)</span>

</a>
                  <div class="full-width">
                        <div class="profile-topcard__summary-position flex align-items-top">
<a id="ember211" href="/sales/company/11860018" class="ember-view">                                  <div id="ember212" class="profile-topcard__summary-logo flex align-items-center ember-view"><img src="https://media.licdn.com/dms/image/C4E0BAQFPgBgovI-OzQ/company-logo_100_100/0?e=1572480000&amp;v=beta&amp;t=2EsXLkwvoMFRKAzdBhlt3CuBp4eNCVN2Z27yhgL_arg" class="entity-image entity-size-3 company profile-topcard__summary-img" alt="axiom.ai - Techstars&amp;#39;18’s logo">
</div>

</a>                            <span class="align-self-center">
                              <span class="profile-topcard__summary-position-title">Software Quality Assurance Engineer</span> at <a href="/sales/company/11860018" class="li-i18n-linkto inverse-link-on-a-light-background Sans-14px-black-75%-bold" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018">axiom.ai In-browser Robotic Process Automation</a>
                              <button aria-expanded="false" aria-label="See more about axiom.ai In-browser Robotic Process Automation" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
                              <span class="profile-topcard__time-period-bullet">
                                  3 yrs
                              </span>
                            </span>
                        </div>

<!---->                  </div>
                </dd>

                <dd class="profile-topcard__previous-positions flex mt3">
<a id="ember54" href="#profile-positions" class="profile-topcard__summary-link type-past-positions brand-color link-without-visited-state flex align-items-center ember-view">                        <span aria-hidden="true">Previous</span>
                      <span class="a11y-text">Previous job (same page)</span>

</a>                  <div class="full-width">
                        <div class="profile-topcard__summary-position flex align-items-top">
                            <div id="ember214" class="profile-topcard__summary-logo flex align-items-center ember-view"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" class="entity-image entity-size-3 company profile-topcard__summary-img ghost-company" alt="Engineering Design Centre’s logo">
</div>
                            <span class="align-self-center">
                              <span class="profile-topcard__summary-position-title">Software Developer</span> at <span class="Sans-14px-black-75%-bold">Engineering Design Centre</span>
                              <span class="profile-topcard__time-period-bullet">
                                5 yrs 4 mos
                              </span>
                            </span>
                        </div>

<!---->                  </div>
                </dd>

                  <dd class="profile-topcard__educations flex mt3">
<a id="ember57" href="#profile-educations" class="profile-topcard__summary-link type-educations brand-color link-without-visited-state flex align-items-center ember-view">                          <span aria-hidden="true">Education</span>
                        <span class="a11y-text">Education (same page)</span>

</a>
                    <div class="full-width">
                      <div class="profile-topcard__summary-position flex align-items-top">
                          <div id="ember58" class="profile-topcard__summary-logo flex align-items-center ember-view"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" class="entity-image entity-size-3 school profile-topcard__summary-img ghost-school" alt="profile picture">
</div>
                          <span class="align-self-center">
                            <span class="profile-topcard__education Sans-14px-black-75%-bold">
                              OUSL
                            </span>
                              <span class="profile-topcard__time-period-bullet">
                                2007 – 2014
                              </span>
                          </span>
                      </div>

                        <div class="profile-topcard__summary-view-more list-style-none display-list-item Sans-14px-black-75%">
<a id="ember59" href="#profile-educations" class="profile-topcard__summary-view-more-link type-educations link-without-visited-state inline-block cursor-pointer ml6 ember-view">                              <span aria-hidden="true">+ 1 more</span>
                            <span class="a11y-text">See 1 more in education history (same page)</span>

</a>                        </div>
                    </div>
                  </dd>

            </dl>

              <div class="profile-topcard__tags-container mt3">
                <ul class="flex flex-wrap list-style-none">
<!---->
<li id="ember60" class="inline-flex mt2 ml1 pb1 ember-view">
                    <button class="topcard__add-button button--unstyled t-14 t-bold t-black--light" data-control-name="add_tag" type="button">
                      <li-icon aria-hidden="true" type="plus-icon" class="vertical-align-text-bottom" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M14,9H9v5H7V9H2V7H7V2H9V7h5V9Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
                      Add tag

<!---->                    </button>

<!---->
</li>                </ul>
              </div>

              <div class="flex profile-topcard__right-column"></div>
          </div>
        </div>

        <div class="profile-topcard__right-column flex-column pt6">

            <div class="profile-topcard-actions flex align-items-center mt2">


<!---->
<div id="ember61" class="ember-view">                    <button class="profile-topcard-actions__saved-lead-button ph4 button-secondary-large-muted" data-control-name="topcard_unsave_lead" type="button" data-ember-action="" data-ember-action-62="62">
                      <span class="profile-topcard-actions__saved-lead-primary">
                        <li-icon aria-hidden="true" type="check-icon" class="vertical-align-middle" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M15,3L6.57,13.72A0.7,0.7,0,0,1,6,14a0.72,0.72,0,0,1-.56-0.27L1,8.07,2.36,7,6,11.72,13.68,2Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
                        Saved
                      </span>
                      <span class="profile-topcard-actions__unsave-lead-secondary ph2">
                        Unsave
                      </span>
                    </button>

<div id="ember63" class="ember-view">
<!---->
<!----></div>
</div>
                <div id="ember64" class="ember-view">  <button class="ph4 ml2 button-primary-large" data-ember-action="" data-ember-action-65="65">
    Message
  </button>
</div>

<artdeco-dropdown id="ember66" class="ember-view"><artdeco-dropdown-trigger id="ember67" aria-expanded="false" role="button" placement="bottom" class="button-round-tertiary-medium-muted block ml1 ember-view" tabindex="0">                    <li-icon type="ellipsis-horizontal-icon" role="img" aria-label="More actions"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M2,10H6v4H2V10Zm8,4h4V10H10v4Zm8-4v4h4V10H18Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>

<!----></artdeco-dropdown-trigger>
<artdeco-dropdown-content id="ember68" arrow-dir="right" justification="right" placement="bottom" data-dropdown="" tabindex="-1" aria-hidden="true" class="profile-topcard-actions__overflow-dropdown artdeco-dropdown-with-arrow ember-view">                      <ul>
                        <li>
<div id="ember69" class="ember-view">
<artdeco-dropdown-item id="ember70" data-control-name="connect" data-dropdown="" class="inverse-link-on-a-light-background ember-view" tabindex="0"><!---->                              Connect
</artdeco-dropdown-item>

<div id="ember71" class="ember-view"><!----></div></div>                        </li>
                      
                      <li>
<artdeco-dropdown-item id="ember72" data-control-name="add_note" data-dropdown="" class="inverse-link-on-a-light-background ember-view" tabindex="0"><!---->                          Add note
</artdeco-dropdown-item>                      </li>

<!---->
                      <li>
<artdeco-dropdown-item id="ember73" data-control-name="view_linkedin" data-dropdown="" class="inverse-link-on-a-light-background ember-view" tabindex="0"><!---->                          View on LinkedIn.com
</artdeco-dropdown-item>                      </li>

                      <li>
<artdeco-dropdown-item id="ember74" data-control-name="copy_linkedin" data-dropdown="" class="inverse-link-on-a-light-background ember-view" tabindex="0"><!---->                          Copy LinkedIn.com URL
</artdeco-dropdown-item>                      </li>

                        <li>
<artdeco-dropdown-item id="ember75" data-dropdown="" class="inverse-link-on-a-light-background ember-view" tabindex="0"><!---->                            Add to another list
</artdeco-dropdown-item>                        </li>
                    </ul>

</artdeco-dropdown-content></artdeco-dropdown>            </div>
              <div class="profile-topcard__reports-to mt5 flex flex-column">
                <div class="mv2 flex Sans-14px-black-75%-bold">
                  Reports to:
                </div>
                  <div class="flex flex-row mb2 align-items-center">
                    <div id="ember76" class="profile-topcard__reports-to-ghost-image ember-view"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" class="entity-image entity-size-2 person ghost-person ghost-profile" alt="profile picture">
</div>
                    <div class="flex flex-column Sans-14px-black-75%-bold ml2 justify-center">
                      <button class="flex button-tertiary-small pl0" data-control-name="add_new_manager">
                        Add manager
                      </button>
<!---->                    </div>
                  </div>
              </div>
            <div class="profile-topcard__contact-info mt5">
              <li-icon aria-hidden="true" type="pencil-icon" class="profile-topcard__contact-info-edit-icon"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M21.71,5,19,2.29A1,1,0,0,0,18.29,2a1,1,0,0,0-.7.29L4,15.85,2,22l6.15-2L21.71,6.45A1,1,0,0,0,22,5.71,1,1,0,0,0,21.71,5ZM6.87,18.64l-1.5-1.5L15.92,6.57l1.5,1.5ZM18.09,7.41l-1.5-1.5,1.67-1.67,1.5,1.5Z" class="large-icon" style="fill: currentColor"></path></svg></li-icon>
              <dl>
                <dt class="mv3 Sans-14px-black-75%-bold">
                  Riswan’s contact info
                </dt>
<!---->                      <dd class="profile-topcard__contact-info-item mv2 Sans-14px-black-60%">
                        <li-icon aria-hidden="true" type="twitter-icon" class="profile-topcard__contact-info-icon profile-topcard__contact-info-icon--shrink" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="social-icon" focusable="false"><g style="fill: currentColor" class="solid-icon">
        <rect x="-0.003" style="fill:none;" width="24" height="24"></rect>
        <path style="" d="M21,7.7c0,0.2,0,0.4,0,0.6C21,14.4,16.5,21,8.3,21c-2.5,0-5.4-0.5-7.3-1.6c2.7,0,5.1-0.7,7-2c-2-0.2-3.7-1.3-4.3-3c0.7,0.1,1.9-0.1,2.3-0.3c-2-0.6-3.1-2.1-3.4-4.1c0.4,0.2,1.2,0.2,1.7,0.1c-1-0.8-1.4-2.2-1.4-3.8c0-0.8,0.2-1.7,0.6-2.3c1.9,2.8,5.2,4.9,8.7,5.1c-0.1-0.5-0.3-1.2-0.3-1.8C12,4.8,13.7,3,16.3,3c1.9,0,2.8,0.7,3.6,1.7c0.9-0.3,1.7-0.8,2.5-1.3c-0.2,1.1-0.8,2.1-1.8,2.7c0.9-0,1.8-0.3,2.6-0.7C22.7,6.2,22,7,21,7.7z"></path>
      </g></svg></li-icon>
  <a class="
                              profile-topcard__contact-info-item-link
                              inverse-link-on-a-light-background
                              Sans-14px-black-60%
                            " href="https://twitter.com/almriswan" rel="noopener noreferrer" target="_blank">
                                almriswan

  </a>
                      </dd>
                    <dd class="mv2 Sans-14px-black-60%-bold">
                      <button class="profile-topcard__contact-info-show-all button-tertiary-small" aria-label="Show Riswan’s contact information (1)" data-ember-action="" data-ember-action-79="79">
                        Show all (1)
                      </button>
                    </dd>
              </dl>
            </div>

              <div class="profile-topcard__activity-info mt5">
                <dl>
                  <dt class="mv3 Sans-14px-black-75%-bold">
                    Activity
                  </dt>

                  <div id="ember80" class="ember-view">  <dd class="mv2">
<div id="ember370" class="ember-view">          <button class="profile-topcard__messages-info flex align-items-center t-14 t-bold t-black--light button--unstyled" data-control-name="compose_message_profile_topcard" data-ember-action="" data-ember-action-371="371">
          <li-icon aria-hidden="true" type="messages-icon" class="mr1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M2,8H3v2H1A1,1,0,0,1,0,9V2A1,1,0,0,1,1,1H11a1,1,0,0,1,1,1V4H10V3H2V8ZM12,9H8v1h4V9Zm4-3V16l-3-2H5a1,1,0,0,1-1-1V6A1,1,0,0,1,5,5H15A1,1,0,0,1,16,6ZM14,7H6v5h7.52L14,12.34V7Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
          6 Messages
        </button>

</div>      </dd>
</div>

                    <div id="ember81" class="ember-view">
<artdeco-dropdown id="ember82" class="lists-indicator__topcard ember-view"><artdeco-dropdown-trigger id="ember83" aria-expanded="false" role="button" placement="bottom" class="ember-view" tabindex="0">    <span class="t-14 font-weight-600 lists-indicator__trigger button-tertiary-small-muted">
      <li-icon aria-hidden="true" type="bulleted-list-icon" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><g class="small-icon" style="fill-opacity: 1">
        <rect x="7" y="3" width="8" height="2"></rect>
        <rect x="7" y="7" width="8" height="2"></rect>
        <rect x="7" y="11" width="8" height="2"></rect>
        <circle cx="4" cy="4" r="1.33"></circle>
        <circle cx="4" cy="8" r="1.33"></circle>
        <circle cx="4" cy="12" r="1.33"></circle>
      </g></svg></li-icon> 1 List
    </span>

<!----></artdeco-dropdown-trigger><artdeco-dropdown-content id="ember84" arrow-dir="left" justification="left" placement="bottom" data-dropdown="" tabindex="-1" aria-hidden="true" class="lists-indicator__content-container artdeco-dropdown-with-arrow ember-view"><!----></artdeco-dropdown-content></artdeco-dropdown></div>
                  <dd class="mv2">
                    <button class="topcard__add-button t-14 t-bold t-black--light button--unstyled" data-control-name="add_note" data-ember-action="" data-ember-action-85="85">
                      <li-icon aria-hidden="true" type="sticky-note-icon" class="vertical-align-text-bottom" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M2,3V13a1,1,0,0,0,1,1h7.13L14,10.1V3a1,1,0,0,0-1-1H3A1,1,0,0,0,2,3ZM4,4h8V9H9v3H4V4Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
                      Add note

<!---->                    </button>
                  </dd>
                </dl>
              </div>

<!---->        </div>
      </div>
    </div>

<div id="ember86" class="ember-view"><!----></div>
<div id="ember87" class="ember-view"><!----></div>
<div id="ember88" class="ember-view"><!----></div>
<div id="ember89" class="ember-view"><!----></div>
<div id="ember90" class="ember-view"><!----></div>
      <div id="ember91" class="ember-view">
<div id="ember92" class="ember-view"><!----></div></div>

      <div id="ember93" class="ember-view"><div id="ember94" class="ember-view"><!----></div></div>
      <div id="ember95" class="ember-view"><div id="ember96" class="ember-view"><!----></div></div>

      <div id="ember97" class="ember-view"><div id="ember98" class="ember-view"><!----></div></div>

  <div id="profile-topcard__tags-popup" class="magic-popup tags-notes-popup"></div>
</div>


<div class="profile-body container mb6">
<!---->
      <section class="profile-highlights mt2 mb6">
    <h2 class="pv4 ph0 t-20 t-black--light">
      Highlights
    </h2>

    <ul class="display-flex list-style-none">
      <li class="incommon profile-highlight-card relative overflow-hidden inline-block mr4">
        
    <h3 class="truncate ph4 pt4 pb1 t-16 t-16--open">
      What you share in common
    </h3>

<a id="ember205" href="/sales/search/people/list/shared-connections/ACwAAAzkTNABmryDnvdm-SaCy9FNjdDXUzHFOJ0,kFrw,NAME_SEARCH" class="link-without-hover-state ember-view">          <div class="horizontal-person-entity-lockup-3 pv0 ph4 incommon-entity">
            <figure>
              
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3 loaded" alt="" src="https://media.licdn.com/dms/image/C5103AQFbVIdq0iy-Iw/profile-displayphoto-shrink_100_100/0?e=1570060800&amp;v=beta&amp;t=7ZduOeZs8B51-he1a3lURIkyAeje-xHmMZr0fiVIuIk">

<!----></div>

            </figure>
            <dl class="profile vertical-align-top">
              <dt>1 shared connections</dt>
                <dd class="Sans-12px-black-60%">
                  You and Riswan Muhammadh both know Raza Rafaideen
                </dd>
            </dl>
          </div>
</a>
<!---->
<div id="ember207" class="ember-view"><!----></div>
      </li>
      <li class="best-path-in profile-highlight-card relative overflow-hidden inline-block mr4">
        
  <h3 class="truncate ph4 pt4 pb1 t-16 t-16--open">
    Your best path in
  </h3>

      <div class="best-path-in-entity__graph relative full-width">
        <figure class="best-path-in-entity__graph-node type-you absolute">
<a id="ember359" href="/sales/people/ACwAACyqrxsBgKngAkIQ7broJkuZXWWiM-I7tt4,%20,%20" class="inverse-link-on-a-light-background ember-view">                <div id="ember360" class="ember-view"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" class="entity-image entity-size-2 person best-path-in-entity__graph-img ghost-person" alt="Axiom AI’S picture">
</div>

</a>        </figure>
        <figure class="best-path-in-entity__graph-node type-introducer absolute">
<a id="ember362" data-control-name="highlights_best_path_in_introducer_picture" href="/sales/people/ACwAAAutXGwBJL1cba26WBdq6xjZMezMQumufbE,NAME_SEARCH,0wOv" class="inverse-link-on-a-light-background ember-view">                
<div class=" presence-entity--size-2 relative">
  <img class="lazy-image circle-entity-2 loaded" alt="" src="https://media.licdn.com/dms/image/C5103AQFbVIdq0iy-Iw/profile-displayphoto-shrink_100_100/0?e=1570060800&amp;v=beta&amp;t=7ZduOeZs8B51-he1a3lURIkyAeje-xHmMZr0fiVIuIk">

<!----></div>


</a>        </figure>
        <figure class="best-path-in-entity__graph-node type-lead absolute">
          
<div class=" presence-entity--size-2 relative">
  <img class="lazy-image circle-entity-2 ghost-person loaded" alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7">

<!----></div>

        </figure>

        <hr class="best-path-in-entity__graph-line absolute">

        <div class="best-path-in-entity__spotlight absolute full-width text-align-center">
<div id="ember365" class="ember-view">            <div class="Sans-14px-black-75% font-weight-600">
<a id="ember367" data-control-name="highlights_best_path_in_introducer_name" href="/sales/people/ACwAAAutXGwBJL1cba26WBdq6xjZMezMQumufbE,NAME_SEARCH,0wOv" class="inverse-link-on-a-light-background ember-view">                    Raza Rafaideen

</a>              ·
              <span class="Sans-14px-black-75%">
                1st
              </span>
            </div>

</div>          <div class="Sans-12px-black-60%">
              
    Works with Riswan at axiom.ai - Techstars'18

          </div>
          <div class="Sans-14px-black-75% brand-color font-weight-600 mt4">
            <div id="ember368" class="ember-view">  <button class="button-tertiary-small" data-ember-action="" data-ember-action-369="369">
    Message
  </button>
</div>
          </div>
        </div>
      </div>

<!---->

<div id="ember99" class="ember-view"><!----></div>
      </li>
      <li class="recent-activity profile-highlight-card relative overflow-hidden inline-block">
        
  <h3 class="truncate ph4 pt4 t-16 t-16--open">
    Riswan’s recent activity on LinkedIn
  </h3>

    <p class="Sans-14px-black-60% p4">
      Riswan hasn’t had any recent activity within the last 30 days.
    </p>

<!---->
      </li>
    </ul>
</section>


    <div class="display-flex align-items-flex-start mb4">
      <div class="profile-details full-width mr4">
        <div class="profile-section mb2">
            <section id="profile-positions" class="full-width">
              <h3 class="profile-section__header Sans-20px-black-90% ph5 pt5 pb0">
  Experience
</h3>
<div id="profile-experience" class="profile-experience profile-section__body p5">
  <ul class="profile-experience__position-list list-style-none">
      <li class="profile-position display-flex align-items-flex-start">

<a id="ember216" href="/sales/company/11860018" class="ember-view">              <figure class="profile-position__company-logo pl0 pr3 pt0">
            <div id="ember217" class="ember-view"><img src="https://media.licdn.com/dms/image/C4E0BAQFPgBgovI-OzQ/company-logo_100_100/0?e=1572480000&amp;v=beta&amp;t=2EsXLkwvoMFRKAzdBhlt3CuBp4eNCVN2Z27yhgL_arg" class="profile-position__company-img avatar" alt="axiom.ai In-browser Robotic Process Automation’s logo">
</div>
          </figure>

</a>
        <dl class="bt0 pt0 pb5 full-width">

          <dt class="profile-position__title Sans-16px-black-90%-bold-open">
            Software Quality Assurance Engineer
          </dt>

          <dd class="profile-position__secondary-title Sans-14px-black-90% mb1">
            <span class="visually-hidden">
              Company Name
            </span>
            <span>
<a id="ember219" href="/sales/company/11860018" class="inverse-link-on-a-light-background font-weight-400 ember-view">                    axiom.ai In-browser Robotic Process Automation

</a>            </span>
          </dd>

            <dd>
              <p class="profile-position__dates-employed fl Sans-12px-black-60%">
                <span class="visually-hidden">
                  Dates Employed
                </span>
                Sep 2016 – Present
              </p>
              <p class="profile-position__duration mb1 Sans-12px-black-60%-italic">
                <span class="visually-hidden">
                  Employment Duration
                </span>
                3 yrs
              </p>
            </dd>

            <dd class="profile-position__company-location mb2 Sans-12px-black-60%">
              <span class="visually-hidden">
                Location
              </span>
              Kandy, Sri Lanka
            </dd>

          <dd class="profile-position__description Sans-14px-black-75%">
            <span class="visually-hidden">
              Description
            </span>
            
          </dd>

<!---->
        </dl>
      </li>
      <li class="profile-position display-flex align-items-flex-start">

            <figure class="profile-position__company-logo pl0 pr3 pt5">
            <div id="ember221" class="ember-view"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" class="profile-position__company-img avatar ghost-company" alt="Engineering Design Centre’s logo">
</div>
          </figure>


        <dl class="profile-position__details pv5 full-width">

          <dt class="profile-position__title Sans-16px-black-90%-bold-open">
            Software Developer
          </dt>

          <dd class="profile-position__secondary-title Sans-14px-black-90% mb1">
            <span class="visually-hidden">
              Company Name
            </span>
            <span>
                  Engineering Design Centre

            </span>
          </dd>

            <dd>
              <p class="profile-position__dates-employed fl Sans-12px-black-60%">
                <span class="visually-hidden">
                  Dates Employed
                </span>
                Feb 2011 – May 2016
              </p>
              <p class="profile-position__duration mb1 Sans-12px-black-60%-italic">
                <span class="visually-hidden">
                  Employment Duration
                </span>
                5 yrs 4 mos
              </p>
            </dd>

<!---->
          <dd class="profile-position__description Sans-14px-black-75%">
            <span class="visually-hidden">
              Description
            </span>
            
          </dd>

<!---->
        </dl>
      </li>
  </ul>

<!----></div>

            </section>

            <section id="profile-educations" class="full-width">
              <h3 class="profile-section__header Sans-20px-black-90% ph5 pt5 pb0">
  Education
</h3>
<div id="profile-education" class="profile-education profile-section__body p5">
  <ul class="profile-education__school-list list-style-none">
      <li class="profile-education display-flex align-items-flex-start">

          <figure class="profile-education__school-logo pl0 pr3 pt0">
            <div id="ember224" class="avatar ember-view"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" class="entity-image entity-size-3 school  ghost-school" alt="profile picture">
</div>
          </figure>

        <dl class="bt0 pt0 pb5 full-width">

          <dt class="profile-education__school-name Sans-16px-black-90%-bold-open">
              OUSL
          </dt>

            <dd class="profile-education__degree inline Sans-14px-black-90% mb1">
              <span class="visually-hidden">
                Degree Name
              </span>
              <span>
                Diploma In Technology
              </span>
            </dd>

              <dd class="profile-education__field-of-study inline Sans-14px-black-90%">
                <span class="visually-hidden">
                  Field Of Study
                </span>
                <span>
                  Computer Engineering
                </span>
              </dd>

          <dd class="profile-education__dates Sans-12px-black-60%">
            <span class="visually-hidden">
              Dates attended or expected graduation
            </span>
            <span>
                  <time>2007</time> – <time>2014</time>
            </span>
          </dd>

<!---->        </dl>
      </li>
      <li class="profile-education display-flex align-items-flex-start">

          <figure class="profile-education__school-logo pl0 pr3 pt5">
            <div id="ember226" class="avatar ember-view"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" class="entity-image entity-size-3 school  ghost-school" alt="profile picture">
</div>
          </figure>

        <dl class="profile-education__details pv5 full-width">

          <dt class="profile-education__school-name Sans-16px-black-90%-bold-open">
              SLIATE
          </dt>

            <dd class="profile-education__degree inline Sans-14px-black-90% mb1">
              <span class="visually-hidden">
                Degree Name
              </span>
              <span>
                HNDIT
              </span>
            </dd>

              <dd class="profile-education__field-of-study inline Sans-14px-black-90%">
                <span class="visually-hidden">
                  Field Of Study
                </span>
                <span>
                  IT
                </span>
              </dd>

          <dd class="profile-education__dates Sans-12px-black-60%">
            <span class="visually-hidden">
              Dates attended or expected graduation
            </span>
            <span>
                  <time>2007</time> – <time>2009</time>
            </span>
          </dd>

<!---->        </dl>
      </li>
  </ul>

<!----></div>

            </section>

<!---->        </div>

<div id="ember110" style="min-height: 300px" class="deferred-area deferred-area--pending ember-view">  <li-icon aria-hidden="true" type="loader" class="deferred-area__loader" size="large"><div class="artdeco-spinner"><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span></div></li-icon>
</div>
<div id="ember111" style="min-height: 300px" class="deferred-area deferred-area--pending ember-view">  <li-icon aria-hidden="true" type="loader" class="deferred-area__loader" size="large"><div class="artdeco-spinner"><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span></div></li-icon>
</div>
<div id="ember112" style="min-height: 300px" class="deferred-area deferred-area--pending ember-view">  <li-icon aria-hidden="true" type="loader" class="deferred-area__loader" size="large"><div class="artdeco-spinner"><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span></div></li-icon>
</div>
<div id="ember113" style="min-height: 300px" class="deferred-area deferred-area--pending ember-view">  <li-icon aria-hidden="true" type="loader" class="deferred-area__loader" size="large"><div class="artdeco-spinner"><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span></div></li-icon>
</div>      </div>
        <section class="profile-recommended-leads">
          <h2 class="Sans-20px-black-90%">
  Recommended leads at:
</h2>

  <div class="overflow-hidden Sans-16px-black-90%-open font-weight-600">
    <figure class="profile-recommended-leads__company-logo fl mr2 mv1">
      <img src="https://media.licdn.com/dms/image/C4E0BAQFPgBgovI-OzQ/company-logo_100_100/0?e=1572480000&amp;v=beta&amp;t=2EsXLkwvoMFRKAzdBhlt3CuBp4eNCVN2Z27yhgL_arg" class="profile-recommended-leads__company-img ghost-company" alt="">
    </figure>
    <span class="mv1 fl">
      axiom.ai - Techstars'18
    </span>
  </div>

    <ul class="list-style-none">
<div id="ember231" class="ember-view">              <li class="profile-recommended-leads__list-item pv3">
                <div class="horizontal-person-entity-lockup-3 profile-recommended-leads__entity block">
                  <figure>
<a id="ember232" href="/sales/people/ACwAACmCdlsBm8rMlzFhXiKZMAOhjM1_rh7TV_E,NAME_SEARCH,aqa4" class="avatar-link ember-view">                      
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3" alt="">

<!----></div>

</a>                  </figure>
                  <dl>
                    <dt>
<a id="ember234" data-control-name="recommended_leads_lead_name" href="/sales/people/ACwAACmCdlsBm8rMlzFhXiKZMAOhjM1_rh7TV_E,NAME_SEARCH,aqa4" class="inverse-link-on-a-light-background Sans-16px-black-90%-open-open-semibold ember-view">                        Matt N.
</a>                    </dt>
                      <dd class="badge profile-recommended-leads__entity-badge">
                        2nd
                      </dd>
                      <dd class="Sans-14px-black-75%">
                        <span>Developer</span>
                          <span>
    at
    <span data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" class="result-lockup__position-company">
<a id="ember236" href="/sales/company/11860018" class="Sans-14px-black-75%-bold ember-view">        <span aria-hidden="true">
          axiom.ai In-browser Robotic Process Automation
        </span>
        <span class="a11y-text">
          Go to axiom.ai In-browser Robotic Process Automation account page
        </span>
</a>      <button aria-expanded="false" aria-label="See more about axiom.ai In-browser Robotic Process Automation" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
    </span>
  </span>

                      </dd>
                    <dd>
                      <span class="Sans-12px-black-60%">
                        Hove, Brighton and Hove, United Kingdom
                      </span>
                    </dd>
<!---->                  </dl>
                    <p class="profile-recommended-leads__entity-highlight pt3 Sans-12px-black-75% full-width">
                      <div id="ember237" class="ember-view">  <strong>1 connection</strong> in common
</div>
                    </p>
                    <div class="profile-recommended-leads__entity-actions">
                          <artdeco-dropdown id="ember239" class="save-to-list-dropdown ember-view"><artdeco-dropdown-trigger id="ember240" aria-expanded="false" role="button" placement="bottom" class="save-to-list-dropdown__trigger save-to-list-dropdown__trigger__profile t-16 button-tertiary-small full-width flex justify-center align-items-center ember-view" tabindex="0">    Save

<!----></artdeco-dropdown-trigger><artdeco-dropdown-content id="ember241" arrow-dir="right" justification="left" placement="bottom" data-dropdown="" tabindex="-1" aria-hidden="true" class="save-to-list-dropdown__content-container artdeco-dropdown-with-arrow ember-view">  <!---->
</artdeco-dropdown-content></artdeco-dropdown>
                      <button data-control-name="recommended_leads_dismiss_lead" class="profile-recommended-leads__entity-dismiss-button button-tertiary-small-muted mr4" data-ember-action="" data-ember-action-242="242">
                        Dismiss
                      </button>
                    </div>
                </div>
              </li>

</div><div id="ember246" class="ember-view">              <li class="profile-recommended-leads__list-item pv3">
                <div class="horizontal-person-entity-lockup-3 profile-recommended-leads__entity block">
                  <figure>
<a id="ember247" href="/sales/people/ACwAAAOjWKYB7-HgOvcCjweESg9PIi2tbbmuihI,NAME_SEARCH,JFwa" class="avatar-link ember-view">                      
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3" alt="">

<!----></div>

</a>                  </figure>
                  <dl>
                    <dt>
<a id="ember249" data-control-name="recommended_leads_lead_name" href="/sales/people/ACwAAAOjWKYB7-HgOvcCjweESg9PIi2tbbmuihI,NAME_SEARCH,JFwa" class="inverse-link-on-a-light-background Sans-16px-black-90%-open-open-semibold ember-view">                        Simon Williams
</a>                    </dt>
                      <dd class="badge profile-recommended-leads__entity-badge">
                        2nd
                      </dd>
                      <dd class="Sans-14px-black-75%">
                        <span>CTO</span>
                          <span>
    at
    <span data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" class="result-lockup__position-company">
<a id="ember251" href="/sales/company/11860018" class="Sans-14px-black-75%-bold ember-view">        <span aria-hidden="true">
          AXIOM AI
        </span>
        <span class="a11y-text">
          Go to AXIOM AI account page
        </span>
</a>      <button aria-expanded="false" aria-label="See more about AXIOM AI" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
    </span>
  </span>

                      </dd>
                    <dd>
                      <span class="Sans-12px-black-60%">
                        London, Greater London, United Kingdom
                      </span>
                    </dd>
<!---->                  </dl>
                    <p class="profile-recommended-leads__entity-highlight pt3 Sans-12px-black-75% full-width">
                      <div id="ember252" class="ember-view">  <strong>1 connection</strong> in common
</div>
                    </p>
                    <div class="profile-recommended-leads__entity-actions">
                          <artdeco-dropdown id="ember254" class="save-to-list-dropdown ember-view"><artdeco-dropdown-trigger id="ember255" aria-expanded="false" role="button" placement="bottom" class="save-to-list-dropdown__trigger save-to-list-dropdown__trigger__profile t-16 button-tertiary-small full-width flex justify-center align-items-center ember-view" tabindex="0">    Save

<!----></artdeco-dropdown-trigger><artdeco-dropdown-content id="ember256" arrow-dir="right" justification="left" placement="bottom" data-dropdown="" tabindex="-1" aria-hidden="true" class="save-to-list-dropdown__content-container artdeco-dropdown-with-arrow ember-view">  <!---->
</artdeco-dropdown-content></artdeco-dropdown>
                      <button data-control-name="recommended_leads_dismiss_lead" class="profile-recommended-leads__entity-dismiss-button button-tertiary-small-muted mr4" data-ember-action="" data-ember-action-257="257">
                        Dismiss
                      </button>
                    </div>
                </div>
              </li>

</div><div id="ember261" class="ember-view">              <li class="profile-recommended-leads__list-item pv3">
                <div class="horizontal-person-entity-lockup-3 profile-recommended-leads__entity block">
                  <figure>
<a id="ember262" href="/sales/people/ACwAAAOjKQcBKjZ_zPURr6SezdCNVpEhXwarMEo,NAME_SEARCH,0bub" class="avatar-link ember-view">                      
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3" alt="">

<!----></div>

</a>                  </figure>
                  <dl>
                    <dt>
<a id="ember264" data-control-name="recommended_leads_lead_name" href="/sales/people/ACwAAAOjKQcBKjZ_zPURr6SezdCNVpEhXwarMEo,NAME_SEARCH,0bub" class="inverse-link-on-a-light-background Sans-16px-black-90%-open-open-semibold ember-view">                        Yaseer Sheriff
</a>                    </dt>
                      <dd class="badge profile-recommended-leads__entity-badge">
                        3rd
                      </dd>
                      <dd class="Sans-14px-black-75%">
                        <span>Co-founder and CEO</span>
                          <span>
    at
    <span data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" class="result-lockup__position-company">
<a id="ember266" href="/sales/company/11860018" class="Sans-14px-black-75%-bold ember-view">        <span aria-hidden="true">
          axiom.ai - Techstars'18
        </span>
        <span class="a11y-text">
          Go to axiom.ai - Techstars'18 account page
        </span>
</a>      <button aria-expanded="false" aria-label="See more about axiom.ai - Techstars&amp;#39;18" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
    </span>
  </span>

                      </dd>
                    <dd>
                      <span class="Sans-12px-black-60%">
                        London, Greater London, United Kingdom
                      </span>
                    </dd>
                      <dd class="profile-recommended-leads__entity-actions">
                            <artdeco-dropdown id="ember268" class="save-to-list-dropdown ember-view"><artdeco-dropdown-trigger id="ember269" aria-expanded="false" role="button" placement="bottom" class="save-to-list-dropdown__trigger save-to-list-dropdown__trigger__profile t-16 button-tertiary-small full-width flex justify-center align-items-center ember-view" tabindex="0">    Save

<!----></artdeco-dropdown-trigger><artdeco-dropdown-content id="ember270" arrow-dir="right" justification="left" placement="bottom" data-dropdown="" tabindex="-1" aria-hidden="true" class="save-to-list-dropdown__content-container artdeco-dropdown-with-arrow ember-view">  <!---->
</artdeco-dropdown-content></artdeco-dropdown>
                        <button class="profile-recommended-leads__entity-dismiss-button button-tertiary-small-muted mr4" data-control-name="recommended_leads_dismiss_lead" data-ember-action="" data-ember-action-271="271">
                          Dismiss
                        </button>
                      </dd>
                  </dl>
<!---->                </div>
              </li>

</div><div id="ember275" class="ember-view">              <li class="profile-recommended-leads__list-item pv3">
                <div class="horizontal-person-entity-lockup-3 profile-recommended-leads__entity block">
                  <figure>
<a id="ember276" href="/sales/people/ACwAAA3MRgEBIsjHBffsdBVsPOzjmrI92G5wO6w,NAME_SEARCH,ig_W" class="avatar-link ember-view">                      
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3" alt="">

<!----></div>

</a>                  </figure>
                  <dl>
                    <dt>
<a id="ember278" data-control-name="recommended_leads_lead_name" href="/sales/people/ACwAAA3MRgEBIsjHBffsdBVsPOzjmrI92G5wO6w,NAME_SEARCH,ig_W" class="inverse-link-on-a-light-background Sans-16px-black-90%-open-open-semibold ember-view">                        Nasik Shafeek
</a>                    </dt>
                      <dd class="badge profile-recommended-leads__entity-badge">
                        2nd
                      </dd>
                      <dd class="Sans-14px-black-75%">
                        <span>Technical Lead</span>
                          <span>
    at
    <span data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" class="result-lockup__position-company">
<a id="ember280" href="/sales/company/11860018" class="Sans-14px-black-75%-bold ember-view">        <span aria-hidden="true">
          axiom.ai In-browser Robotic Process Automation
        </span>
        <span class="a11y-text">
          Go to axiom.ai In-browser Robotic Process Automation account page
        </span>
</a>      <button aria-expanded="false" aria-label="See more about axiom.ai In-browser Robotic Process Automation" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
    </span>
  </span>

                      </dd>
                    <dd>
                      <span class="Sans-12px-black-60%">
                        Sri Lanka
                      </span>
                    </dd>
<!---->                  </dl>
                    <p class="profile-recommended-leads__entity-highlight pt3 Sans-12px-black-75% full-width">
                      <div id="ember281" class="ember-view">  <strong>1 connection</strong> in common
</div>
                    </p>
                    <div class="profile-recommended-leads__entity-actions">
                          <div id="ember282" class="profile-recommended-leads__entity-save-button float-right ember-view">  <button class="button-tertiary-small float-right save-button" data-ember-action="" data-ember-action-283="283">
    <span class="save-button__saved">
      <li-icon aria-hidden="true" type="check-icon" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M15,3L6.57,13.72A0.7,0.7,0,0,1,6,14a0.72,0.72,0,0,1-.56-0.27L1,8.07,2.36,7,6,11.72,13.68,2Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
      Saved
    </span>
    <span class="save-button__unsave">
      Unsave
    </span>
  </button>
</div>
                      <button data-control-name="recommended_leads_dismiss_lead" class="profile-recommended-leads__entity-dismiss-button button-tertiary-small-muted mr4" data-ember-action="" data-ember-action-284="284">
                        Dismiss
                      </button>
                    </div>
                </div>
              </li>

</div><div id="ember288" class="ember-view">              <li class="profile-recommended-leads__list-item pv3">
                <div class="horizontal-person-entity-lockup-3 profile-recommended-leads__entity block">
                  <figure>
<a id="ember289" href="/sales/people/ACwAACl9078BJYok2Krg9PItad5QN7R_DyRJj2Q,NAME_SEARCH,H92p" class="avatar-link ember-view">                      
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3" alt="">

<!----></div>

</a>                  </figure>
                  <dl>
                    <dt>
<a id="ember291" data-control-name="recommended_leads_lead_name" href="/sales/people/ACwAACl9078BJYok2Krg9PItad5QN7R_DyRJj2Q,NAME_SEARCH,H92p" class="inverse-link-on-a-light-background Sans-16px-black-90%-open-open-semibold ember-view">                        Simon Delany
</a>                    </dt>
                      <dd class="badge profile-recommended-leads__entity-badge">
                        2nd
                      </dd>
                      <dd class="Sans-14px-black-75%">
                        <span>Junior Developer</span>
                          <span>
    at
    <span data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" class="result-lockup__position-company">
<a id="ember293" href="/sales/company/11860018" class="Sans-14px-black-75%-bold ember-view">        <span aria-hidden="true">
          axiom.ai In-browser Robotic Process Automation
        </span>
        <span class="a11y-text">
          Go to axiom.ai In-browser Robotic Process Automation account page
        </span>
</a>      <button aria-expanded="false" aria-label="See more about axiom.ai In-browser Robotic Process Automation" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
    </span>
  </span>

                      </dd>
                    <dd>
                      <span class="Sans-12px-black-60%">
                        United Kingdom
                      </span>
                    </dd>
<!---->                  </dl>
                    <p class="profile-recommended-leads__entity-highlight pt3 Sans-12px-black-75% full-width">
                      <div id="ember294" class="ember-view">  <strong>1 connection</strong> in common
</div>
                    </p>
                    <div class="profile-recommended-leads__entity-actions">
                          <artdeco-dropdown id="ember296" class="save-to-list-dropdown ember-view"><artdeco-dropdown-trigger id="ember297" aria-expanded="false" role="button" placement="bottom" class="save-to-list-dropdown__trigger save-to-list-dropdown__trigger__profile t-16 button-tertiary-small full-width flex justify-center align-items-center ember-view" tabindex="0">    Save

<!----></artdeco-dropdown-trigger><artdeco-dropdown-content id="ember298" arrow-dir="right" justification="left" placement="bottom" data-dropdown="" tabindex="-1" aria-hidden="true" class="save-to-list-dropdown__content-container artdeco-dropdown-with-arrow ember-view">  <!---->
</artdeco-dropdown-content></artdeco-dropdown>
                      <button data-control-name="recommended_leads_dismiss_lead" class="profile-recommended-leads__entity-dismiss-button button-tertiary-small-muted mr4" data-ember-action="" data-ember-action-299="299">
                        Dismiss
                      </button>
                    </div>
                </div>
              </li>

</div><div id="ember303" class="ember-view">              <li class="profile-recommended-leads__list-item pv3">
                <div class="horizontal-person-entity-lockup-3 profile-recommended-leads__entity block">
                  <figure>
<a id="ember304" href="/sales/people/ACwAAAaJktgBdNfxhwuSeR1t9lxKdCwuPUtb-Bs,NAME_SEARCH,z9go" class="avatar-link ember-view">                      
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3" alt="">

<!----></div>

</a>                  </figure>
                  <dl>
                    <dt>
<a id="ember306" data-control-name="recommended_leads_lead_name" href="/sales/people/ACwAAAaJktgBdNfxhwuSeR1t9lxKdCwuPUtb-Bs,NAME_SEARCH,z9go" class="inverse-link-on-a-light-background Sans-16px-black-90%-open-open-semibold ember-view">                        Alex Barlow
</a>                    </dt>
                      <dd class="badge profile-recommended-leads__entity-badge">
                        2nd
                      </dd>
                      <dd class="Sans-14px-black-75%">
                        <span>Founder | Director | CPO</span>
                          <span>
    at
    <span data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" class="result-lockup__position-company">
<a id="ember308" href="/sales/company/11860018" class="Sans-14px-black-75%-bold ember-view">        <span aria-hidden="true">
          AXIOM AI
        </span>
        <span class="a11y-text">
          Go to AXIOM AI account page
        </span>
</a>      <button aria-expanded="false" aria-label="See more about AXIOM AI" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
    </span>
  </span>

                      </dd>
                    <dd>
                      <span class="Sans-12px-black-60%">
                        London, Greater London, United Kingdom
                      </span>
                    </dd>
<!---->                  </dl>
                    <p class="profile-recommended-leads__entity-highlight pt3 Sans-12px-black-75% full-width">
                      <div id="ember309" class="ember-view">  <strong>1 connection</strong> in common
</div>
                    </p>
                    <div class="profile-recommended-leads__entity-actions">
                          <artdeco-dropdown id="ember311" class="save-to-list-dropdown ember-view"><artdeco-dropdown-trigger id="ember312" aria-expanded="false" role="button" placement="bottom" class="save-to-list-dropdown__trigger save-to-list-dropdown__trigger__profile t-16 button-tertiary-small full-width flex justify-center align-items-center ember-view" tabindex="0">    Save

<!----></artdeco-dropdown-trigger><artdeco-dropdown-content id="ember313" arrow-dir="right" justification="left" placement="bottom" data-dropdown="" tabindex="-1" aria-hidden="true" class="save-to-list-dropdown__content-container artdeco-dropdown-with-arrow ember-view">  <!---->
</artdeco-dropdown-content></artdeco-dropdown>
                      <button data-control-name="recommended_leads_dismiss_lead" class="profile-recommended-leads__entity-dismiss-button button-tertiary-small-muted mr4" data-ember-action="" data-ember-action-314="314">
                        Dismiss
                      </button>
                    </div>
                </div>
              </li>

</div><div id="ember318" class="ember-view">              <li class="profile-recommended-leads__list-item pv3">
                <div class="horizontal-person-entity-lockup-3 profile-recommended-leads__entity block">
                  <figure>
<a id="ember319" href="/sales/people/ACwAAChH_RgBsej89sptHhfiPhrAhp5W6BNd1ec,NAME_SEARCH,_OrR" class="avatar-link ember-view">                      
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3" alt="">

<!----></div>

</a>                  </figure>
                  <dl>
                    <dt>
<a id="ember321" data-control-name="recommended_leads_lead_name" href="/sales/people/ACwAAChH_RgBsej89sptHhfiPhrAhp5W6BNd1ec,NAME_SEARCH,_OrR" class="inverse-link-on-a-light-background Sans-16px-black-90%-open-open-semibold ember-view">                        Sampath Randeniya
</a>                    </dt>
                      <dd class="badge profile-recommended-leads__entity-badge">
                        2nd
                      </dd>
                      <dd class="Sans-14px-black-75%">
                        <span>Full Stack Software Engineer</span>
                          <span>
    at
    <span data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" class="result-lockup__position-company">
<a id="ember323" href="/sales/company/11860018" class="Sans-14px-black-75%-bold ember-view">        <span aria-hidden="true">
          axiom.ai In-browser Robotic Process Automation
        </span>
        <span class="a11y-text">
          Go to axiom.ai In-browser Robotic Process Automation account page
        </span>
</a>      <button aria-expanded="false" aria-label="See more about axiom.ai In-browser Robotic Process Automation" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
    </span>
  </span>

                      </dd>
                    <dd>
                      <span class="Sans-12px-black-60%">
                        Sri Lanka
                      </span>
                    </dd>
<!---->                  </dl>
                    <p class="profile-recommended-leads__entity-highlight pt3 Sans-12px-black-75% full-width">
                      <div id="ember324" class="ember-view">  <strong>1 connection</strong> in common
</div>
                    </p>
                    <div class="profile-recommended-leads__entity-actions">
                          <artdeco-dropdown id="ember326" class="save-to-list-dropdown ember-view"><artdeco-dropdown-trigger id="ember327" aria-expanded="false" role="button" placement="bottom" class="save-to-list-dropdown__trigger save-to-list-dropdown__trigger__profile t-16 button-tertiary-small full-width flex justify-center align-items-center ember-view" tabindex="0">    Save

<!----></artdeco-dropdown-trigger><artdeco-dropdown-content id="ember328" arrow-dir="right" justification="left" placement="bottom" data-dropdown="" tabindex="-1" aria-hidden="true" class="save-to-list-dropdown__content-container artdeco-dropdown-with-arrow ember-view">  <!---->
</artdeco-dropdown-content></artdeco-dropdown>
                      <button data-control-name="recommended_leads_dismiss_lead" class="profile-recommended-leads__entity-dismiss-button button-tertiary-small-muted mr4" data-ember-action="" data-ember-action-329="329">
                        Dismiss
                      </button>
                    </div>
                </div>
              </li>

</div><div id="ember333" class="ember-view">              <li class="profile-recommended-leads__list-item pv3">
                <div class="horizontal-person-entity-lockup-3 profile-recommended-leads__entity block">
                  <figure>
<a id="ember334" href="/sales/people/ACwAABQpPxgBVmA7yFB640GsoUrPay8drcvNbGA,NAME_SEARCH,EY1B" class="avatar-link ember-view">                      
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3" alt="">

<!----></div>

</a>                  </figure>
                  <dl>
                    <dt>
<a id="ember336" data-control-name="recommended_leads_lead_name" href="/sales/people/ACwAABQpPxgBVmA7yFB640GsoUrPay8drcvNbGA,NAME_SEARCH,EY1B" class="inverse-link-on-a-light-background Sans-16px-black-90%-open-open-semibold ember-view">                        Vanitha Maheshwaran
</a>                    </dt>
                      <dd class="badge profile-recommended-leads__entity-badge">
                        2nd
                      </dd>
                      <dd class="Sans-14px-black-75%">
                        <span>Software Engineer</span>
                          <span>
    at
    <span data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" class="result-lockup__position-company">
<a id="ember338" href="/sales/company/11860018" class="Sans-14px-black-75%-bold ember-view">        <span aria-hidden="true">
          axiom.ai In-browser Robotic Process Automation
        </span>
        <span class="a11y-text">
          Go to axiom.ai In-browser Robotic Process Automation account page
        </span>
</a>      <button aria-expanded="false" aria-label="See more about axiom.ai In-browser Robotic Process Automation" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
    </span>
  </span>

                      </dd>
                    <dd>
                      <span class="Sans-12px-black-60%">
                        Sri Lanka
                      </span>
                    </dd>
<!---->                  </dl>
                    <p class="profile-recommended-leads__entity-highlight pt3 Sans-12px-black-75% full-width">
                      <div id="ember339" class="ember-view">  <strong>1 connection</strong> in common
</div>
                    </p>
                    <div class="profile-recommended-leads__entity-actions">
                          <div id="ember340" class="profile-recommended-leads__entity-save-button float-right ember-view">  <button class="button-tertiary-small float-right save-button" data-ember-action="" data-ember-action-341="341">
    <span class="save-button__saved">
      <li-icon aria-hidden="true" type="check-icon" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M15,3L6.57,13.72A0.7,0.7,0,0,1,6,14a0.72,0.72,0,0,1-.56-0.27L1,8.07,2.36,7,6,11.72,13.68,2Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
      Saved
    </span>
    <span class="save-button__unsave">
      Unsave
    </span>
  </button>
</div>
                      <button data-control-name="recommended_leads_dismiss_lead" class="profile-recommended-leads__entity-dismiss-button button-tertiary-small-muted mr4" data-ember-action="" data-ember-action-342="342">
                        Dismiss
                      </button>
                    </div>
                </div>
              </li>

</div><div id="ember346" class="ember-view">              <li class="profile-recommended-leads__list-item pv3">
                <div class="horizontal-person-entity-lockup-3 profile-recommended-leads__entity block">
                  <figure>
<a id="ember347" href="/sales/people/ACwAACckhXwBZwsEo5e62tNo1Dq9RbJw5CrTDWw,NAME_SEARCH,vXMO" class="avatar-link ember-view">                      
<div class="mr2 presence-entity--size-3 relative">
  <img class="lazy-image circle-entity-3" alt="">

<!----></div>

</a>                  </figure>
                  <dl>
                    <dt>
<a id="ember349" data-control-name="recommended_leads_lead_name" href="/sales/people/ACwAACckhXwBZwsEo5e62tNo1Dq9RbJw5CrTDWw,NAME_SEARCH,vXMO" class="inverse-link-on-a-light-background Sans-16px-black-90%-open-open-semibold ember-view">                        Suranga Kasun
</a>                    </dt>
                      <dd class="badge profile-recommended-leads__entity-badge">
                        2nd
                      </dd>
                      <dd class="Sans-14px-black-75%">
                        <span>Operations Admin</span>
                          <span>
    at
    <span data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" class="result-lockup__position-company">
<a id="ember351" href="/sales/company/11860018" class="Sans-14px-black-75%-bold ember-view">        <span aria-hidden="true">
          axiom.ai - Techstars'18
        </span>
        <span class="a11y-text">
          Go to axiom.ai - Techstars'18 account page
        </span>
</a>      <button aria-expanded="false" aria-label="See more about axiom.ai - Techstars&amp;#39;18" class="entity-hovercard__a11y-trigger p0 b0" data-entity-hovercard-id="urn:li:fs_salesCompany:11860018" data-entity-hovercard-trigger="click"></button>
    </span>
  </span>

                      </dd>
                    <dd>
                      <span class="Sans-12px-black-60%">
                        Sri Lanka
                      </span>
                    </dd>
<!---->                  </dl>
                    <p class="profile-recommended-leads__entity-highlight pt3 Sans-12px-black-75% full-width">
                      <div id="ember352" class="ember-view">  <strong>1 connection</strong> in common
</div>
                    </p>
                    <div class="profile-recommended-leads__entity-actions">
                          <artdeco-dropdown id="ember354" class="save-to-list-dropdown ember-view"><artdeco-dropdown-trigger id="ember355" aria-expanded="false" role="button" placement="bottom" class="save-to-list-dropdown__trigger save-to-list-dropdown__trigger__profile t-16 button-tertiary-small full-width flex justify-center align-items-center ember-view" tabindex="0">    Save

<!----></artdeco-dropdown-trigger><artdeco-dropdown-content id="ember356" arrow-dir="right" justification="left" placement="bottom" data-dropdown="" tabindex="-1" aria-hidden="true" class="save-to-list-dropdown__content-container artdeco-dropdown-with-arrow ember-view">  <!---->
</artdeco-dropdown-content></artdeco-dropdown>
                      <button data-control-name="recommended_leads_dismiss_lead" class="profile-recommended-leads__entity-dismiss-button button-tertiary-small-muted mr4" data-ember-action="" data-ember-action-357="357">
                        Dismiss
                      </button>
                    </div>
                </div>
              </li>

</div>    </ul>

        </section>
    </div>
    <hr class="mb3">
<div id="ember114" style="min-height: 300px" class="deferred-area deferred-area--pending ember-view">  <li-icon aria-hidden="true" type="loader" class="deferred-area__loader" size="large"><div class="artdeco-spinner"><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span><span class="artdeco-spinner-bars"></span></div></li-icon>
</div></div>

<!---->
<!---->
    </main>


<div id="ember36" class="msg-overlay-container ember-view">
      <div id="artdeco-hoverable-outlet__message-overlay"></div>

<!---->

<div id="ember37" class="ember-view"><!----></div></div>
<!---->
  <artdeco-toasts id="artdeco-toasts-outlet" class="artdeco-toasts ember-view"><div id="ember39" class="ember-view"><ul class="artdeco-toasts-container" data-ember-action="" data-ember-action-40="40" data-ember-action-41="41">
<!----></ul>
</div></artdeco-toasts>

  <div id="carousels-hovercard" class="magic-popup carousels-hovercard"></div>

  <div id="tags-notes-popup" class="magic-popup tags-notes-popup"></div>

  <div id="notes-popup" class="magic-popup notes-popup"></div>


  <div id="ui-modal-outlet"></div>
  <div id="artdeco-hoverable-outlet"></div>
  <div id="alerts-hoverable-outlet" class="alerts-hoverable-outlet for--global-nav-alert-center">    <artdeco-hoverable-content id="artdeco-hoverable-artdeco-gen-42" class="artdeco-hoverable-content alert-card__actions-list artdeco-hoverable-content--inverse-theme artdeco-hoverable-content--default-spacing artdeco-hoverable-content--undefined-placement" tabindex="-1" role="tooltip" aria-hidden="true">
      <div class="artdeco-hoverable-content__shell">
        <div class="artdeco-hoverable-content__content">
                <ul class="artdeco-list">
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-132="132">
  <li-icon aria-hidden="true" type="trash-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M13.29,1.83A21.33,21.33,0,0,0,10,1.14V0.5A0.5,0.5,0,0,0,9.5,0h-3A0.5,0.5,0,0,0,6,.5V1.14a21.33,21.33,0,0,0-3.29.69,1,1,0,0,0-.71,1V7H3v7a1,1,0,0,0,1,1h8a1,1,0,0,0,1-1V7h1V2.79A1,1,0,0,0,13.29,1.83ZM11,13H5V7h6v6Zm1-8H4V3.42a16.75,16.75,0,0,1,4-.55,16.75,16.75,0,0,1,4,.55V5Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
  Delete this alert
</button>

            </li>
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-135="135">
  <li-icon aria-hidden="true" type="block-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M8,1a7,7,0,1,0,7,7A7,7,0,0,0,8,1ZM8,2.87a5.09,5.09,0,0,1,2.9.9L3.78,10.9A5.12,5.12,0,0,1,8,2.87ZM8,13.12a5.09,5.09,0,0,1-2.9-.9L12.22,5.1A5.12,5.12,0,0,1,8,13.12Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
  Unsave Lead
</button>

            </li>
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-138="138">
  <li-icon aria-hidden="true" type="error-pebble-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><g class="small-icon" style="fill-opacity: 1">
        <circle class="circle" r="6.1" stroke="currentColor" stroke-width="1.8" cx="8" cy="8" fill="none" transform="rotate(-90 8 8)"></circle>
        <path fill="currentColor" d="M10.916,6.216L9.132,8l1.784,1.784l-1.132,1.132L8,9.132l-1.784,1.784L5.084,9.784L6.918,8L5.084,6.216l1.132-1.132L8,6.868l1.784-1.784L10.916,6.216z"></path>
      </g></svg></li-icon>
  Turn off this kind of alert
</button>

            </li>
      </ul>

        </div>
          <button class="artdeco-hoverable-content__close-btn" type="button">
            <li-icon type="cancel-icon" size="small" role="img" aria-label="Dismiss"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M13,4.32L9.31,8,13,11.69,11.69,13,8,9.31,4.31,13,3,11.69,6.69,8,3,4.31,4.31,3,8,6.69,11.68,3Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
          </button>
      </div>
      <div class="artdeco-hoverable-content__arrow" aria-hidden="true"></div>
    </artdeco-hoverable-content>
      <artdeco-hoverable-content id="artdeco-hoverable-artdeco-gen-43" class="artdeco-hoverable-content alert-card__actions-list artdeco-hoverable-content--inverse-theme artdeco-hoverable-content--default-spacing artdeco-hoverable-content--undefined-placement" tabindex="-1" role="tooltip" aria-hidden="true">
      <div class="artdeco-hoverable-content__shell">
        <div class="artdeco-hoverable-content__content">
                <ul class="artdeco-list">
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-154="154">
  <li-icon aria-hidden="true" type="trash-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M13.29,1.83A21.33,21.33,0,0,0,10,1.14V0.5A0.5,0.5,0,0,0,9.5,0h-3A0.5,0.5,0,0,0,6,.5V1.14a21.33,21.33,0,0,0-3.29.69,1,1,0,0,0-.71,1V7H3v7a1,1,0,0,0,1,1h8a1,1,0,0,0,1-1V7h1V2.79A1,1,0,0,0,13.29,1.83ZM11,13H5V7h6v6Zm1-8H4V3.42a16.75,16.75,0,0,1,4-.55,16.75,16.75,0,0,1,4,.55V5Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
  Delete this alert
</button>

            </li>
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-157="157">
  <li-icon aria-hidden="true" type="block-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M8,1a7,7,0,1,0,7,7A7,7,0,0,0,8,1ZM8,2.87a5.09,5.09,0,0,1,2.9.9L3.78,10.9A5.12,5.12,0,0,1,8,2.87ZM8,13.12a5.09,5.09,0,0,1-2.9-.9L12.22,5.1A5.12,5.12,0,0,1,8,13.12Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
  Unsave Lead
</button>

            </li>
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-160="160">
  <li-icon aria-hidden="true" type="error-pebble-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><g class="small-icon" style="fill-opacity: 1">
        <circle class="circle" r="6.1" stroke="currentColor" stroke-width="1.8" cx="8" cy="8" fill="none" transform="rotate(-90 8 8)"></circle>
        <path fill="currentColor" d="M10.916,6.216L9.132,8l1.784,1.784l-1.132,1.132L8,9.132l-1.784,1.784L5.084,9.784L6.918,8L5.084,6.216l1.132-1.132L8,6.868l1.784-1.784L10.916,6.216z"></path>
      </g></svg></li-icon>
  Turn off this kind of alert
</button>

            </li>
      </ul>

        </div>
          <button class="artdeco-hoverable-content__close-btn" type="button">
            <li-icon type="cancel-icon" size="small" role="img" aria-label="Dismiss"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M13,4.32L9.31,8,13,11.69,11.69,13,8,9.31,4.31,13,3,11.69,6.69,8,3,4.31,4.31,3,8,6.69,11.68,3Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
          </button>
      </div>
      <div class="artdeco-hoverable-content__arrow" aria-hidden="true"></div>
    </artdeco-hoverable-content>
      <artdeco-hoverable-content id="artdeco-hoverable-artdeco-gen-44" class="artdeco-hoverable-content alert-card__actions-list artdeco-hoverable-content--inverse-theme artdeco-hoverable-content--default-spacing artdeco-hoverable-content--undefined-placement" tabindex="-1" role="tooltip" aria-hidden="true">
      <div class="artdeco-hoverable-content__shell">
        <div class="artdeco-hoverable-content__content">
                <ul class="artdeco-list">
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-176="176">
  <li-icon aria-hidden="true" type="trash-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M13.29,1.83A21.33,21.33,0,0,0,10,1.14V0.5A0.5,0.5,0,0,0,9.5,0h-3A0.5,0.5,0,0,0,6,.5V1.14a21.33,21.33,0,0,0-3.29.69,1,1,0,0,0-.71,1V7H3v7a1,1,0,0,0,1,1h8a1,1,0,0,0,1-1V7h1V2.79A1,1,0,0,0,13.29,1.83ZM11,13H5V7h6v6Zm1-8H4V3.42a16.75,16.75,0,0,1,4-.55,16.75,16.75,0,0,1,4,.55V5Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
  Delete this alert
</button>

            </li>
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-179="179">
  <li-icon aria-hidden="true" type="block-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M8,1a7,7,0,1,0,7,7A7,7,0,0,0,8,1ZM8,2.87a5.09,5.09,0,0,1,2.9.9L3.78,10.9A5.12,5.12,0,0,1,8,2.87ZM8,13.12a5.09,5.09,0,0,1-2.9-.9L12.22,5.1A5.12,5.12,0,0,1,8,13.12Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
  Unsave Lead
</button>

            </li>
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-182="182">
  <li-icon aria-hidden="true" type="error-pebble-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><g class="small-icon" style="fill-opacity: 1">
        <circle class="circle" r="6.1" stroke="currentColor" stroke-width="1.8" cx="8" cy="8" fill="none" transform="rotate(-90 8 8)"></circle>
        <path fill="currentColor" d="M10.916,6.216L9.132,8l1.784,1.784l-1.132,1.132L8,9.132l-1.784,1.784L5.084,9.784L6.918,8L5.084,6.216l1.132-1.132L8,6.868l1.784-1.784L10.916,6.216z"></path>
      </g></svg></li-icon>
  Turn off this kind of alert
</button>

            </li>
      </ul>

        </div>
          <button class="artdeco-hoverable-content__close-btn" type="button">
            <li-icon type="cancel-icon" size="small" role="img" aria-label="Dismiss"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M13,4.32L9.31,8,13,11.69,11.69,13,8,9.31,4.31,13,3,11.69,6.69,8,3,4.31,4.31,3,8,6.69,11.68,3Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
          </button>
      </div>
      <div class="artdeco-hoverable-content__arrow" aria-hidden="true"></div>
    </artdeco-hoverable-content>
      <artdeco-hoverable-content id="artdeco-hoverable-artdeco-gen-45" class="artdeco-hoverable-content alert-card__actions-list artdeco-hoverable-content--inverse-theme artdeco-hoverable-content--default-spacing artdeco-hoverable-content--undefined-placement" tabindex="-1" role="tooltip" aria-hidden="true">
      <div class="artdeco-hoverable-content__shell">
        <div class="artdeco-hoverable-content__content">
                <ul class="artdeco-list">
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-198="198">
  <li-icon aria-hidden="true" type="trash-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M13.29,1.83A21.33,21.33,0,0,0,10,1.14V0.5A0.5,0.5,0,0,0,9.5,0h-3A0.5,0.5,0,0,0,6,.5V1.14a21.33,21.33,0,0,0-3.29.69,1,1,0,0,0-.71,1V7H3v7a1,1,0,0,0,1,1h8a1,1,0,0,0,1-1V7h1V2.79A1,1,0,0,0,13.29,1.83ZM11,13H5V7h6v6Zm1-8H4V3.42a16.75,16.75,0,0,1,4-.55,16.75,16.75,0,0,1,4,.55V5Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
  Delete this alert
</button>

            </li>
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-201="201">
  <li-icon aria-hidden="true" type="block-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M8,1a7,7,0,1,0,7,7A7,7,0,0,0,8,1ZM8,2.87a5.09,5.09,0,0,1,2.9.9L3.78,10.9A5.12,5.12,0,0,1,8,2.87ZM8,13.12a5.09,5.09,0,0,1-2.9-.9L12.22,5.1A5.12,5.12,0,0,1,8,13.12Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
  Unsave Lead
</button>

            </li>
            <li class="artdeco-list__item p0">
              
<button class="alert-card__actions-list-button button--unstyled t-14 t-black--light t-bold full-width text-align-left p2" type="button" data-ember-action="" data-ember-action-204="204">
  <li-icon aria-hidden="true" type="error-pebble-icon" class="alert-card__actions-item-icon mh1" size="small"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><g class="small-icon" style="fill-opacity: 1">
        <circle class="circle" r="6.1" stroke="currentColor" stroke-width="1.8" cx="8" cy="8" fill="none" transform="rotate(-90 8 8)"></circle>
        <path fill="currentColor" d="M10.916,6.216L9.132,8l1.784,1.784l-1.132,1.132L8,9.132l-1.784,1.784L5.084,9.784L6.918,8L5.084,6.216l1.132-1.132L8,6.868l1.784-1.784L10.916,6.216z"></path>
      </g></svg></li-icon>
  Turn off this kind of alert
</button>

            </li>
      </ul>

        </div>
          <button class="artdeco-hoverable-content__close-btn" type="button">
            <li-icon type="cancel-icon" size="small" role="img" aria-label="Dismiss"><svg viewBox="0 0 24 24" width="24px" height="24px" x="0" y="0" preserveAspectRatio="xMinYMin meet" class="artdeco-icon" focusable="false"><path d="M13,4.32L9.31,8,13,11.69,11.69,13,8,9.31,4.31,13,3,11.69,6.69,8,3,4.31,4.31,3,8,6.69,11.68,3Z" class="small-icon" style="fill-opacity: 1"></path></svg></li-icon>
          </button>
      </div>
      <div class="artdeco-hoverable-content__arrow" aria-hidden="true"></div>
    </artdeco-hoverable-content>
  </div>

  <div id="ember42" class="entity-hovercard-container hidden ember-view"><div id="ember43" class="focus-trap ember-view">
  <div class="entity-hovercard  " role="tooltip" tabindex="-1">

      <section class="entity-hovercard__loading-state p4">
        Loading…
      </section>

      </div>

</div></div>
  <div id="ember44" class="ember-view"><!----></div>
</div><div id="axiom-bot-draw-1976253492" class="axiom-draw-12721932183 axiom-draw selectorgadget_ignore axiom-expansion-2">
                <div id="axiom-builder-mask" class="axiom-builder-mask selectorgadget_ignore"><iframe height="100%" width="100%" src="chrome-extension://cpgamigjcbffkaiciiepndmonbfdimbb/axiombuilder.html" id="axiom-builder-frame" name="axiom-builder-frame" class="selectorgadget_ignore"></iframe></div>
                <div class="axiom-builder-background selectorgadget_ignore"></div>
            </div><div id="selectorgadget_main" class="selectorgadget_bottom selectorgadget_ignore" style="right: -9999px !important;"><input id="selectorgadget_path_field" class="selectorgadget_ignore selectorgadget_input_field"><input type="button" value="Clear" class="selectorgadget_ignore selectorgadget_input_field"><input type="button" value="Toggle Position" class="selectorgadget_ignore selectorgadget_input_field"><input type="button" value="XPath" class="selectorgadget_ignore selectorgadget_input_field"><input type="button" value="?" class="selectorgadget_ignore selectorgadget_input_field"><input type="button" value="X" class="selectorgadget_ignore selectorgadget_input_field"></div><div class="selectorgadget_border" style="height: 5px; width: 1919px; top: -7px; left: -7px; display: none;"></div><div class="selectorgadget_border selectorgadget_bottom_border" style="height: 11px; width: 1914px; top: 3075px; left: -7px; display: none;">div main</div><div class="selectorgadget_border" style="width: 5px; height: 3077px; top: -2px; left: -7px; display: none;"></div><div class="selectorgadget_border" style="width: 5px; height: 3077px; top: -2px; left: 1907px; display: none;"></div></body>
            """

  dom = null

  beforeEach ->
    dom = new DomPredictionHelper()

  xdescribe "escapeCssNames", ->
    it "escapes illegal characters in css", ->
      expect(dom.escapeCssNames("this.is.a.test")).toEqual("this\\.is\\.a\\.test")
      expect(dom.escapeCssNames("profile.24px-90%-bold")).toEqual("profile\\.24px-90\\\\%-bold")
      expect(dom.escapeCssNames("this#is#a#test")).toEqual("this\\#is\\#a\\#test")
      expect(dom.escapeCssNames("this>is>a>test")).toEqual("this\\>is\\>a\\>test")
      expect(dom.escapeCssNames("this,is,a,test")).toEqual("this\\,is\\,a\\,test")
      expect(dom.escapeCssNames("this,is,a|test")).toEqual("this\\,is\\,a\\|test")
      expect(dom.escapeCssNames("selectorgadget_blahblah")).toEqual("")
      expect(dom.escapeCssNames("selectorgadget_suggested")).toEqual("")
      expect(dom.escapeCssNames("suggested ")).toEqual("suggested") # Paranoid - remove spaces.
      expect(dom.escapeCssNames("hello\\")).toEqual("hello\\\\")
      expect(dom.escapeCssNames("iCIMS_InfoMsg_Job")).toEqual("iCIMS_InfoMsg_Job")

  xdescribe "tokenizeCss", ->
    it "breaks css selectors into tokens", ->
      expect(dom.tokenizeCss("div#id")).toEqual(["div", "#id"])
      expect(dom.tokenizeCss("div#id").toString()).not.toEqual(["div#", "id"])
      expect(dom.tokenizeCss("div#id").toString()).not.toEqual(["div", "id"])
      expect(dom.tokenizeCss("div,html").toString()).not.toEqual(["div", " ", ",", " ", "id"])
      expect(dom.tokenizeCss("div #id")).toEqual(["div", " ", "#id"])
      expect(dom.tokenizeCss("div      \t#id")).toEqual(["div", " ", "#id"])
      expect(dom.tokenizeCss("div div#id.class1.class2:nth-child(2) span")).toEqual(["div", " ", "div", "#id", ".class1", ".class2", ":nth-child(2)", " ", "span"])
      expect(dom.tokenizeCss("div > id")).toEqual(["div", " ", ">", " ", "id"])
      expect(dom.tokenizeCss("div>id")).toEqual(["div", " ", ">", " ", "id"])
      expect(dom.tokenizeCss("div.class div a#blah\\.hi")).toEqual(["div", ".class", " ", "div", " ", "a", "#blah\\.hi"])
      expect(dom.tokenizeCss("strong~ h1:nth-child(2)+ b")).toEqual(["strong", "~", " ", "h1", ":nth-child(2)", "+", " ", "b"])

  xdescribe "tokenizeCssForDiff", ->
    it "should tokenize css for diffing", ->
      expect(dom.tokenizeCssForDiff("div > id")).toEqual(["div", " ", ">", " ", "id"])
      expect(dom.tokenizeCssForDiff("div.class>id")).toEqual(["div", ".class", " ", ">", " ", "id"])
      expect(dom.tokenizeCssForDiff("strong#hi~ h1:nth-child(2)+ b")).toEqual(["strong#hi~", " ", "h1:nth-child(2)+", " ", "b"])

  xdescribe "encodeCssForDiff", ->
    it "should encode the css in preparation for diffing", ->
      existing_tokens = {}
      strings = ["body div#main #something", "body div#main #something_else"]
      new_strings = dom.encodeCssForDiff(strings, existing_tokens)
      expect(new_strings[1].substring(0, 1)).toEqual(new_strings[0].substring(0, 1))
      expect(dom.invertObject(existing_tokens)[new_strings[0].substring(0, 1)]).toEqual('body')
      expect(new_strings[0].substring(1, 2)).toEqual(new_strings[1].substring(1, 2))
      expect(dom.invertObject(existing_tokens)[new_strings[0].substring(1, 2)]).toEqual(' ')
      expect(new_strings[0].substring(2, 3)).toEqual(new_strings[1].substring(2, 3))
      expect(new_strings[0].substring(3, 4)).toEqual(new_strings[1].substring(3, 4))
      expect(dom.invertObject(existing_tokens)[new_strings[0].substring(3, 4)]).toEqual('#main')
      expect(new_strings[0].substring(5, 6)).not.toEqual(new_strings[1].substring(5, 6))

    it "should encode and decode to the same values", ->
      existing_tokens = {}
      strings = ["body div#main #something", "body div#main #something_else"]
      new_strings = dom.encodeCssForDiff(strings, existing_tokens)
      expect(dom.decodeCss(new_strings[0], existing_tokens)).toEqual("body div#main #something")

  xdescribe "cleanCss", ->
    it "should clean unneeded white space and child and sibling selectors", ->
      expect(dom.cleanCss("tr>td#hi")).toEqual("tr > td#hi")
      expect(dom.cleanCss("tr > td#hi")).toEqual("tr > td#hi")
      expect(dom.cleanCss(", , > tr >  >     > td#hi >")).toEqual("tr > td#hi")
      expect(dom.cleanCss("h1~ hello+ br")).toEqual("h1~ hello+ br")
      expect(dom.cleanCss(" ~ hello+ br")).toEqual("hello+ br")
      expect(dom.cleanCss(" + ~ ")).toEqual("")
      expect(dom.cleanCss("br+")).toEqual("br")

  xdescribe "cssDiff", ->
    beforeEach ->
      jQuerySG("#jasmine-content").html fixtures.leaves

    it "can diff two css selectors", ->
      expect(dom.cssDiff([])).toEqual('')
      expect(dom.cssDiff([''])).toEqual('')
      expect(dom.cssDiff(["body div#main #something", "body div#main #something_else"])).toEqual('body div#main')
      expect(dom.cssDiff(["body blah div#main", "body div#main"])).toEqual('body div#main')
      expect(dom.cssDiff(["body blah a div#main", "body div#main"])).toEqual('body div#main')

      p1 = dom.pathOf(jQuerySG('#parent1 span.sibling:nth-child(1)').get(0))
      p2 = dom.pathOf(jQuerySG('#parent1 span.sibling:nth-child(2)').get(0))
      expect(dom.cssDiff([ p1, p2 ])).toEqual('body > div#jasmine-content:nth-child(2) > div#parent1:nth-child(1) > span.sibling')

      expect(dom.cssDiff(["ul li#foo", "li div#foo"])).toEqual('li#foo')
      expect(dom.cssDiff(["ul > li#foo", "ul > li > ol > li#foo"])).toEqual('ul > li#foo')

  xdescribe "childElemNumber", ->
    it "returns the element number of the child", ->
      parent = jQuerySG('<div>').append(jQuerySG('<b>hello</b>')).append(jQuerySG('<b>hi</b>')).append(document.createTextNode('hi')).ap^pend(jQuerySG('<b>there</b>')).get(0)
      expect(dom.childElemNumber(parent.childNodes[0])).toEqual(0)
      expect(dom.childElemNumber(parent.childNodes[1])).toEqual(1)
      expect(dom.childElemNumber(parent.childNodes[2])).toEqual(2)

      expect(dom.childElemNumber(jQuerySG(':nth-child(1)', parent).get(0))).toEqual(0)
      expect(dom.childElemNumber(jQuerySG(':nth-child(2)', parent).get(0))).toEqual(1)
      expect(dom.childElemNumber(jQuerySG(':nth-child(3)', parent).get(0))).toEqual(2)

  xdescribe "pathOf", ->
    beforeEach ->
      jQuerySG("#jasmine-content").append(fixtures.class_name_tests).append(fixtures.leaves)

    it "returns the full dom path of an element", ->
      expect(dom.pathOf(jQuerySG('#leaf1').get(0)).indexOf("#leaf1")).toBeGreaterThan(-1)
      expect(dom.pathOf(jQuerySG('#leaf1').get(0)).indexOf("span.sibling.something.else:nth-child(2) > i#leaf1")).toBeGreaterThan(-1)
      expect(dom.pathOf(jQuerySG('#class_name_tests #moo').get(0)).indexOf(".iCIMS_InfoMsg.iCIMS_InfoMsg_Job")).toBeGreaterThan(-1)
      expect(dom.pathOf(jQuerySG('#class_name_tests #moo').get(0)).indexOf("body:nth-child")).toEqual(-1)

    it "should add siblings with pluses and tildes", ->
      expect(dom.pathOf(jQuerySG('#parent1 .sibling.something.else').get(0)).indexOf("span#some_id.sibling:nth-child(1)+ span.sibling.something.else:nth-child(2)")).toBeGreaterThan(-1)

  describe "simplifyCss", ->
    beforeEach ->
      # jQuerySG("#jasmine-content").append(fixtures.big_structure)
      jQuerySG("#jasmine-content").append(fixtures.linkedIn)

    it "should simplify css based on selected and rejected sets", ->
      expect(dom.simplifyCss("body", jQuerySG("body"), jQuerySG([]))).toEqual("body")
      expect(dom.simplifyCss("body", jQuerySG("a"), jQuerySG([]))).toEqual("")
      expect(dom.simplifyCss("body", jQuerySG([]), jQuerySG([]))).toEqual("")
      expect(dom.simplifyCss("tr td", jQuerySG("tr td div, tr td"), jQuerySG([]))).toEqual("")
      # expect(dom.simplifyCss("tr td", jQuerySG("table tr td, tr td"), jQuerySG([]))).toEqual("td")
      # expect(dom.simplifyCss("strong > div", jQuerySG("div b strong div"), jQuerySG("div strong div#a b div"))).toEqual("strong > div")
      # expect(dom.simplifyCss("tr td", jQuerySG("table tr td, tr td"), jQuerySG("tr"))).toEqual("td")
      # expect(dom.simplifyCss("#jobs > li:nth-child(3)",
      #                        jQuerySG('#jobs>li:nth-child(3)'),
      #                        jQuerySG('#jobs ul li:nth-child(3)'))).toEqual("#jobs > li")
      # expect(dom.simplifyCss("div+ ul#jobs > li:nth-child(3)",
      #                        jQuerySG('#jobs>li:nth-child(3)'),
      #                        jQuerySG('#jobs ul li:nth-child(3)'))).toEqual("#jobs > li")
      expect(dom.simplifyCss("img.terminatorlet+ div#ember3.ember-view:nth-child(30) > header#ember4.global-nav.global-nav-v2.ember-view:nth-child(1)~ div.navbar-help:nth-child(2)+ main#content-main.content-main.people.desktop:nth-child(3) > div.profile-topcard.full-width.pb5:nth-child(1) > div.container:nth-child(1) > div.flex:nth-child(1) > div.flex-1.mr2:nth-child(1) > div.pt6.ph0.pb0.mt2.flex.Sans-14px-black-75\\%:nth-child(1) > div.presence-entity--size-6.relative:nth-child(1)+ div.profile-topcard-person-entity__content.min-width.inline-block:nth-child(2) > dl.vertical-align-top.pl4:nth-child(1) > dt.flex.align-items-center:nth-child(1) > span.profile-topcard-person-entity__name.Sans-24px-black-90\\%-bold:nth-child(1)", jQuerySG("span.profile-topcard-person-entity__name.Sans-24px-black-90\\%-bold"), jQuerySG('html, body, head'))).toEqual('')

    # it "should work with numerical ids", ->
    #   expect(dom.simplifyCss("table.reasonable>tr>td#omg-im-ugly-7777777",
    #                          jQuerySG('#omg-im-ugly-7777777'),
    #                          jQuerySG('#something_else td'))).toEqual(".reasonable td")

  xdescribe "positionOfSpaceBeforeIndexOrLineStart", ->
    it "should return the position of the space before index or line start", ->
      expect(dom.positionOfSpaceBeforeIndexOrLineStart(3, ["a", "b", "c", "d"])).toEqual(0)
      expect(dom.positionOfSpaceBeforeIndexOrLineStart(3, ["a", " ", "c", "d"])).toEqual(1)
      expect(dom.positionOfSpaceBeforeIndexOrLineStart(3, ["a", " ", " ", "d", "e"])).toEqual(2)

  xdescribe "predictCss", ->
    beforeEach ->
      jQuerySG("#jasmine-content").append(fixtures.leaves).append(fixtures.big_structure)

    it "predicts css", ->
      expect(dom.predictCss(jQuerySG('#parent1 span.sibling:nth-child(1), #parent1 span.sibling:nth-child(2)'),
                                              jQuerySG("dfdfdf"))).toEqual('.sibling')

      expect(jQuerySG('#jobs>li:nth-child(3)').length).toEqual(1)
      expect(jQuerySG('#jobs ul li:nth-child(3)').length).toEqual(1)
      expect(dom.predictCss(jQuerySG('#jobs>li:nth-child(3)'), jQuerySG('#jobs ul li:nth-child(3)'))).toEqual('#jobs > li')

      expect('#leaf1', dom.predictCss(jQuerySG('#parent1 i'), jQuerySG('#parent1 b'))).toEqual('#leaf1')

      expect(dom.predictCss(jQuerySG('#sibling_test h3 + span'), jQuerySG('#sibling_test h4 + span'))).toEqual('.a+ span')
      expect(dom.predictCss(jQuerySG('#sibling_test h3.a + span'), jQuerySG('#sibling_test h4 + span'))).toEqual('.a+ span')

  xdescribe "selectorGets", ->
    beforeEach ->
      jQuerySG("#jasmine-content").append(fixtures.leaves).append(fixtures.big_structure)

    it "determines how the selector matches the set", ->
      expect(jQuerySG('table td div#a, #something_else td div.hi').length).toEqual(2)
      expect(dom.selectorGets('all', jQuerySG('table td div#a, #something_else td div#a'), 'div#a')).toEqual(true)
      expect(jQuerySG('table td div:nth-child(2), #something_else td div.hi').length).toEqual(2)
      expect(dom.selectorGets('all', jQuerySG('table td div#a.hi:nth-child(2), #something_else td div#a.hi'), 'div#a')).toEqual(true)
      expect(dom.selectorGets('all', jQuerySG("generates-empty-dflkjsdf"), '#b')).toEqual(false)
      expect(dom.selectorGets('none', jQuerySG("generates-empty-dflkjsdf"), '#b')).toEqual(true)
      expect(dom.selectorGets('none', jQuerySG('table td div#a, #something_else td div#a'), '#b')).toEqual(true)
      expect(dom.selectorGets('none', jQuerySG('table td div#a, #something_else td div#a'), 'table')).toEqual(true)
      expect(dom.selectorGets('none', jQuerySG('table, #something_else td div#a'), 'table')).toEqual(false)

  xdescribe "wouldLeaveFreeFloatingNthChild", ->
    it "determines if a floating nthchild would be left by the removal of the specified element", ->
      expect(dom.wouldLeaveFreeFloatingNthChild(["a", ":nth-child(0)", " ", "div"], 0)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["a", ":nth-child(0)", " ", "div"], 1)).toBeFalsy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["a", ":nth-child(0)", " ", "div"], 2)).toBeFalsy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["a", ":nth-child(0)", " ", "div"], 3)).toBeFalsy()

      expect(dom.wouldLeaveFreeFloatingNthChild(["div", ".hi", " ", "a", ":nth-child(0)", " ", "div"], 0)).toBeFalsy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["div", ".hi", " ", "a", ":nth-child(0)", " ", "div"], 1)).toBeFalsy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["div", ".hi", " ", "a", ":nth-child(0)", " ", "div"], 2)).toBeFalsy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["div", ".hi", " ", "a", ":nth-child(0)", " ", "div"], 3)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["div", ".hi", " ", "a", ":nth-child(0)", " ", "div"], 4)).toBeFalsy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["div", ".hi", " ", "a", ":nth-child(0)", " ", "div"], 5)).toBeFalsy()

      expect(dom.wouldLeaveFreeFloatingNthChild(["div", ".hi", " ", "a", ":nth-child(0)"], 3)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["div", ".hi", " ", "a", ":nth-child(0)"], 4)).toBeFalsy()

      expect(dom.wouldLeaveFreeFloatingNthChild(["div", ":nth-child(0)"], 0)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild([" ", "div", ":nth-child(0)"], 1)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild([".a", ":nth-child(0)"], 0)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild([" ", "#a", ":nth-child(0)"], 1)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["div", " ", "#a", ":nth-child(0)"], 2)).toBeTruthy()

      expect(dom.wouldLeaveFreeFloatingNthChild([":nth-child(2)", " ", ":nth-child(2)", " ", ":nth-child(2)", " ",
                                                     ":nth-child(1)", " ", ":nth-child(1)", " ", "#today", ":nth-child(1)",
                                                     " ", "#todaybd", ":nth-child(3)"], 10)).toBeTruthy()

      expect(dom.wouldLeaveFreeFloatingNthChild(["a", ":nth-child(0)"], 0)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["a", "", "", ":nth-child(0)"], 0)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["", "", "a", "", "", ":nth-child(0)"], 2)).toBeTruthy()
      expect(dom.wouldLeaveFreeFloatingNthChild(["a", ":nth-child(0)"], 1)).toBeFalsy()

      expect(dom.wouldLeaveFreeFloatingNthChild(["a"], 0)).toBeFalsy()
      expect(dom.wouldLeaveFreeFloatingNthChild([":nth-child(0)"], 0)).toBeFalsy()

  xdescribe "_removeElements", ->
    it "removes matching elements", ->
      expect(dom._removeElements(0, ["a", "b", "c"], "a", -> true)).toEqual(["", "b", "c"])
      expect(dom._removeElements(0, ["a", "b", "c"], "a", -> false)).toEqual(["a", "b", "c"])
      expect(dom._removeElements(4, ["a", " ", "c", "d", "+", " ", "e"], "+", -> true)).toEqual(["a", "", "", "", "", " ", "e"])
      expect(dom._removeElements(4, ["a", " ", "c", "d", "+", " ", "e"], "+", -> false)).toEqual(["a", " ", "c", "d", "+", " ", "e"])
      expect(dom._removeElements(4, ["a", "e", "c", "d", "+", " ", "e"], "+", -> true)).toEqual(["", "", "", "", "", " ", "e"])
      expect(dom._removeElements(4, ["a", "e", "c", "d", "+", " ", "e"], "+", -> false)).toEqual(["a", "e", "c", "d", "+", " ", "e"])

  xdescribe "cssToXPath", ->
    beforeEach ->
      for fixture_name, fixture_contents of fixtures
        jQuerySG("#jasmine-content").append fixture_contents

    it "converts css to xpath", ->
      cssAndXPathMatch = (css, xpath) ->
        css_matches = jQuerySG(css)
        elems = document.evaluate(xpath, document, null, XPathResult.ANY_TYPE, null)
        while elem = elems.iterateNext()
          unless elem in css_matches
            return false
        true

      expressions = ['a', '#leaf1', 'body #leaf1', 'span.sibling.something.else', 'a , b , #leaf1',
                     'span.sibling', '.else.something', ':nth-child(2) i#leaf1', 'span.something.else:nth-child(2) i#leaf1']

      for css in expressions
        expect(cssAndXPathMatch(css, dom.cssToXPath(css))).toBeTruthy()
