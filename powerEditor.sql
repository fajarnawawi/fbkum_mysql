CREATE TABLE fbkum.upload(`Campaign ID` text,`Campaign Name` text,`Campaign Status` text,`Campaign Objective` text,`Campaign KPI` text,`Campaign KPI Custom Conversion ID` text,`Buying Type` text,`Campaign Spend Limit` int,`Tags` text,`Ad Set ID` text,`Ad Set Run Status` text,`Ad Set Name` text,`Ad Set Time Start` date,`Ad Set Time Stop` date,`Ad Set Daily Budget` int,`Ad Set Lifetime Budget` int,`Link Object ID` text,`Optimized Conversion Tracking Pixels` text,`Optimized Event` text,`Link` text,`Application ID` text,`Countries` text,`Global Regions` text,`Excluded Global Regions` text,`Cities` text,`Regions` text,`Zip` int,`Gender` text,`Age Min` int,`Age Max` int,`Education Status` text,`College Start Year` text,`College End Year` text,`Interested In` text,`Relationship` text,`Connections` text,`Excluded Connections` text,`Friends of Connections` text,`Video Engagement` text,`Excluded Video Engagement` text,`Locales` text,`Broad Category Clusters` text,`Custom Audiences` text,`Excluded Custom Audiences` text,`Flexible Inclusions` text,`Flexible Exclusions` text,`Targeting Optimization` text,`Publisher Platforms` text,`Device Platforms` text,`Facebook Positions` text,`Instagram Positions` text,`Messenger Positions` text,`Audience Network Positions` text,`Automatically Set Bid` text,`Use Average Bid` int,`Optimization Goal` text,`Attribution Spec` text,`Billing Event` text,`Bid Amount` int,`Ad ID` text,`Ad Status` text,`Ad Name` text,`Title` text,`Body` text,`Link Description` text,`Display Link` text,`Image Hash` text,`Creative Type` text,`URL Tags` text,`Instagram Account ID` text,`Image` text,`Creative Optimization` text,`Product 1 - Link` text,`Product 1 - Name` text,`Product 1 - Description` text,`Product 1 - Image Hash` text,`Product 2 - Link` text,`Product 2 - Name` text,`Product 2 - Description` text,`Product 2 - Image Hash` text,`Product 3 - Link` text,`Product 3 - Name` text,`Product 3 - Description` text,`Product 3 - Image Hash` text,`Call to Action` text,`Story ID` text);

INSERT INTO fbkum.upload (`Ad Name`, `Story ID`)
SELECT title, story_id FROM fbkum.final;

UPDATE fbkum.upload 
SET `Campaign ID` = "cg:23842609189250599", 
	`Campaign Name`="Funnel 2 - Engagement Boost Posts (Traffic)",
    `Campaign Status` = "ACTIVE",
    `Campaign Objective` = "Traffic",
    `Buying Type` = "AUCTION",
    `Ad Set Run Status` = "ACTIVE",
    `Ad Set Lifetime Budget` = 20000,
    `Link Object ID` = "o:1924315711129121",
    `Countries` = "ID",
    `Age Min` = 18,
    `Age Max` = 65,
    `Publisher Platforms` = "facebook, audience_network, messenger, instagram",
    `Facebook Positions` = "feed, right_hand_column, instant_article",
    `Instagram Positions` = "stream",
    `Messenger Positions` = "messenger_home",
    `Audience Network Positions` = "classic, instream_video, rewarded_video",
    `Automatically Set Bid` = "YES",
    `Optimization Goal` = "LINK_CLICKS",
    `Billing Event` = "IMPRESSIONS",
    `Creative Type` = "Link Page Post Ad",
    `URL Tags` = "utm_campaign=boost",
    `Instagram Account ID` = "x:1004691526234500"
WHERE TRUE;