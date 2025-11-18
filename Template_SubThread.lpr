<?xml version="1.0" encoding='ISO-8859-1' ?>
<!DOCTYPE gateway [
<!ENTITY auml  "&#228;">
<!ENTITY ouml  "&#246;">
<!ENTITY uuml  "&#252;">
<!ENTITY Auml  "&#196;">
<!ENTITY Ouml  "&#214;">
<!ENTITY Uuml  "&#220;">
<!ENTITY szlig "&#223;">
<!ELEMENT gateway ((memmod)?, (evtmod)?, (opcmod)?, (scrmod)?, (sqlmod)?, (commod)?, (opcuamod)?, (sccmod)?, (basmod)?, (comment)?, (pubmod)?, (conmod)?, (awsmod)?)>
<!ATTLIST gateway        halterr                  (true|false)   "true"
                         delqueue                 (true|false)   "false"
                         nilevent                 (true|false)   "false"
                         oldlogstyle              (true|false)   "false"
                         logic                    CDATA          "0"
                         scriptinfo               CDATA          "0"
                         loopmessage              CDATA          "10000"
                         loopexception            CDATA          "-1"
                         delaystart               CDATA          "100"
                         delaystop                CDATA          "100"
                         certpath                 CDATA          "$user"
                         certificates             CDATA          ""
                         version                  CDATA          "4.0">
<!ELEMENT memmod ((memitm)*, (folder)*, (comment)*)>
<!ELEMENT memitm ((occitm)*)>
<!ATTLIST memitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          ""
                         init                     CDATA          "&lt;Null&gt;"
                         mul                      CDATA          "1"
                         always                   (true|false)   "false">
<!ELEMENT occitm EMPTY>
<!ATTLIST occitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         silent                   (true|false)   "false"
                         direct                   (true|false)   "false"
                         created                  CDATA          ""
                         origin                   CDATA          ""
                         changed                  CDATA          ""
                         author                   CDATA          ""
                         version                  CDATA          "">
<!ELEMENT folder EMPTY>
<!ATTLIST folder         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false">
<!ELEMENT comment EMPTY>
<!ATTLIST comment        name                     CDATA          #REQUIRED>
<!ELEMENT evtmod ((memitm)*, (evtitm)*, (folder)*, (comment)*)>
<!ELEMENT evtitm ((occitm)*)>
<!ATTLIST evtitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         typ                      CDATA          ""
                         value                    CDATA          "0"
                         dismult                  (true|false)   "false"
                         time                     CDATA          "0"
                         timestamp                CDATA          ""
                         lmask                    CDATA          "0"
                         limit_h                  CDATA          "0"
                         limit_l                  CDATA          "0">
<!ELEMENT opcmod ((opcsrv)*, (memitm)*, (folder)*, (comment)*)>
<!ELEMENT opcsrv ((opcgrp)*, (memitm)*, (folder)*, (comment)*)>
<!ATTLIST opcsrv         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         server                   CDATA          ""
                         host                     CDATA          ""
                         cls                      CDATA          ""
                         file                     CDATA          ""
                         load                     CDATA          "0"
                         ctrl                     (true|false)   "false"
                         opc2                     (true|false)   "true">
<!ELEMENT opcgrp ((opcitm)*, (memitm)*, (folder)*, (comment)*)>
<!ATTLIST opcgrp         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         updtime                  CDATA          "0">
<!ELEMENT opcitm ((memitm)*, (folder)*, (occitm)*)>
<!ATTLIST opcitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         itemid                   CDATA          ""
                         path                     CDATA          "&lt;Null&gt;"
                         fmt                      CDATA          ""
                         forcefmt                 (true|false)   "false"
                         reqfmt                   CDATA          "VT_EMPTY"
                         read                     (true|false)   "true"
                         write                    (true|false)   "true">
<!ELEMENT scrmod ((scritm)*, (memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST scrmod         timelimit                CDATA          "0">
<!ELEMENT scritm EMPTY>
<!ATTLIST scritm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         silent                   (true|false)   "false"
                         fmt                      CDATA          "&lt;Null&gt;"
                         params                   CDATA          ""
                         created                  CDATA          ""
                         origin                   CDATA          ""
                         changed                  CDATA          ""
                         author                   CDATA          ""
                         version                  CDATA          "">
<!ELEMENT sqlmod ((sqlcon)*, (memitm)*, (folder)*, (comment)*)>
<!ELEMENT sqlcon ((sqltbl)*, (memitm)*, (folder)*, (sqlproc)*, (occitm)*, (comment)*)>
<!ATTLIST sqlcon         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         connect                  CDATA          ""
                         user                     CDATA          ""
                         password                 CDATA          ""
                         passcrypt                CDATA          ""
                         errfile                  CDATA          ""
                         dbtype                   CDATA          "">
<!ELEMENT sqltbl ((sqlitm)*, (memitm)*, (folder)*, (comment)*)>
<!ATTLIST sqltbl         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         tblname                  CDATA          ""
                         sql                      CDATA          "">
<!ELEMENT sqlitm ((occitm)*)>
<!ATTLIST sqlitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fldname                  CDATA          ""
                         fmt                      CDATA          "">
<!ELEMENT sqlproc EMPTY>
<!ATTLIST sqlproc        name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          ""
                         procname                 CDATA          ""
                         params                   CDATA          "">
<!ELEMENT commod ((memitm)*, (folder)*, (comdrv)*, (comment)*)>
<!ELEMENT comdrv ((memitm)*, (folder)*, (comcon)*, (comment)*)>
<!ATTLIST comdrv         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         module                   CDATA          "">
<!ELEMENT comcon ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST comcon         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         contime                  CDATA          "30000"
                         sndtime                  CDATA          "50">
<!ELEMENT opcuamod ((memitm)*, (folder)*, (opcuasrv)*, (comment)*)>
<!ATTLIST opcuamod       tracelevel               CDATA          "0"
                         tracesize                CDATA          "10000"
                         tracefiles               CDATA          "5">
<!ELEMENT opcuasrv ((memitm)*, (folder)*, (opcuaitm)*, (opcuagrp)*, (uafolder)*, (uanode)*, (occitm)*, (comment)*, (opcuaaeitm)*, (opcuameth)*)>
<!ATTLIST opcuasrv       name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         url                      CDATA          ""
                         secpolice                CDATA          ""
                         secmode                  CDATA          "1"
                         certname                 CDATA          "ItcRuntime"
                         user                     CDATA          ""
                         password                 CDATA          ""
                         passcrypt                CDATA          ""
                         autorecon                (true|false)   "false"
                         retryinit                (true|false)   "false"
                         connectasync             (true|false)   "false"
                         discovery                CDATA          "opc.tcp://localhost:48010"
                         tmrsession               CDATA          "1200000"
                         tmrconnect               CDATA          "5000"
                         tmrpublish               CDATA          "60000"
                         tmrintcall               CDATA          "5000"
                         tmrsubscr                CDATA          "10000"
                         tmrreadwrt               CDATA          "10000"
                         secoptions               CDATA          "0"
                         localeid                 CDATA          "en">
<!ELEMENT opcuaitm ((uafolder)*, (uanode)*, (occitm)*)>
<!ATTLIST opcuaitm       name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          ""
                         idname                   CDATA          ""
                         idtype                   CDATA          "0"
                         nsname                   CDATA          ""
                         datatype                 CDATA          ""
                         arraytype                CDATA          "0"
                         interval                 CDATA          "1000"
                         queuesize                CDATA          "1"
                         discold                  (true|false)   "true"
                         autosubsc                (true|false)   "false"
                         extensiontype            CDATA          "0"
                         autocommit               (true|false)   "true">
<!ELEMENT uafolder ((memitm)*, (uafolder)*, (uanode)*)>
<!ATTLIST uafolder       name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false">
<!ELEMENT uanode ((memitm)*)>
<!ATTLIST uanode         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          ""
                         idname                   CDATA          ""
                         idtype                   CDATA          "0"
                         nsname                   CDATA          ""
                         datatype                 CDATA          ""
                         arraytype                CDATA          "0"
                         extensiontype            CDATA          "0">
<!ELEMENT opcuagrp ((memitm)*, (folder)*, (opcuaitm)*, (uafolder)*, (uanode)*, (comment)*)>
<!ATTLIST opcuagrp       name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         timeout                  CDATA          "10000"
                         autosubsc                (true|false)   "false">
<!ELEMENT opcuaaeitm ((occitm)*)>
<!ATTLIST opcuaaeitm     name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         type                     CDATA          "0"
                         idname                   CDATA          "2782"
                         idtype                   CDATA          "0"
                         nsname                   CDATA          "http://opcfoundation.org/UA/"
                         filter                   CDATA          ""
                         autosubsc                (true|false)   "false">
<!ELEMENT opcuameth EMPTY>
<!ATTLIST opcuameth      name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         mthidname                CDATA          ""
                         mthidtype                CDATA          "0"
                         mthnsname                CDATA          ""
                         objidname                CDATA          ""
                         objidtype                CDATA          "0"
                         objnsname                CDATA          "">
<!ELEMENT sccmod ((memitm)*, (folder)*, (scccon)*, (comment)*)>
<!ELEMENT scccon ((memitm)*, (folder)*, (occitm)*, (comment)*, (sccsub)*)>
<!ATTLIST scccon         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          "String"
                         auth                     CDATA          "0"
                         uri                      CDATA          ""
                         security                 CDATA          "0"
                         certname                 CDATA          "ItcRuntime"
                         useproxy                 (true|false)   "false"
                         uriproxy                 CDATA          ""
                         user                     CDATA          ""
                         password                 CDATA          ""
                         passcrypt                CDATA          ""
                         info                     CDATA          ""
                         watchdog                 CDATA          "30000"
                         timeout                  CDATA          "5000"
                         reconnect                CDATA          "30000"
                         voucher                  CDATA          ""
                         exptime                  CDATA          "600000"
                         recovery                 CDATA          "500">
<!ELEMENT sccsub ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST sccsub         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          "String"
                         path                     CDATA          "/call"
                         type                     CDATA          "0"
                         reconnect                CDATA          "30000"
                         timeout                  CDATA          "5000"
                         repeat                   CDATA          "2000"
                         numcancel                CDATA          "3"
                         numretry                 CDATA          "-1"
                         ctrlactiv                (true|false)   "false"
                         inactive                 CDATA          "10000"
                         sendping                 (true|false)   "false"
                         watchdog                 CDATA          "2000"
                         resolvearray             (true|false)   "false"
                         rpcfolder                CDATA          "">
<!ELEMENT basmod ((memitm)*, (folder)*, (comment)*)>
<!ELEMENT pubmod ((memitm)*, (folder)*, (comment)*, (mqttcon)*, (kafkaconsumer)*, (kafkaproducer)*)>
<!ELEMENT mqttcon ((memitm)*, (folder)*, (occitm)*, (comment)*, (mqttpub)*, (mqttdrv)*)>
<!ATTLIST mqttcon        name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          ""
                         protocol                 CDATA          "0"
                         user                     CDATA          ""
                         author                   (true|false)   "false"
                         password                 CDATA          ""
                         passcrypt                CDATA          ""
                         uri                      CDATA          ""
                         security                 CDATA          "0"
                         certname                 CDATA          "ItcRuntime"
                         lastwill                 (true|false)   "false"
                         topic                    CDATA          ""
                         message                  CDATA          ""
                         qos                      CDATA          "0"
                         clean                    (true|false)   "false"
                         timeout                  CDATA          "120000"
                         reconnect                CDATA          "30000"
                         properties               CDATA          "">
<!ELEMENT mqttpub ((occitm)*)>
<!ATTLIST mqttpub        name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          "String"
                         topic                    CDATA          "">
<!ELEMENT mqttdrv ((memitm)*, (folder)*, (occitm)*, (comment)*, (mqttitm)*)>
<!ATTLIST mqttdrv        name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         autosubsc                (true|false)   "true">
<!ELEMENT mqttitm ((occitm)*)>
<!ATTLIST mqttitm        name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          ""
                         topic                    CDATA          "">
<!ELEMENT kafkaconsumer ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST kafkaconsumer  name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         brokers                  CDATA          "">
<!ELEMENT kafkaproducer ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST kafkaproducer  name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         brokers                  CDATA          "">
<!ELEMENT conmod ((memitm)*, (folder)*, (comment)*, (otcsrv)*)>
<!ELEMENT otcsrv ((memitm)*, (folder)*, (occitm)*, (comment)*, (mqttpub)*, (mqttdrv)*)>
<!ATTLIST otcsrv         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         fmt                      CDATA          "Block"
                         port                     CDATA          "1884"
                         whitelist                CDATA          "">
<!ELEMENT awsmod ((memitm)*, (folder)*, (comment)*, (awssqs)*)>
<!ELEMENT awssqs ((memitm)*, (folder)*, (comment)*, (awssqsrcv)*, (awssqssnd)*)>
<!ATTLIST awssqs         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false">
<!ELEMENT awssqsrcv ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST awssqsrcv      name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         queue                    CDATA          ""
                         queuetype                CDATA          "0"
                         maxrcvmsg                CDATA          "1"
                         rcvtime                  CDATA          "20000"
                         delmsg                   (true|false)   "true">
<!ELEMENT awssqssnd ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST awssqssnd      name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         queue                    CDATA          ""
                         queuetype                CDATA          "0">
]>
<gateway version="4.1">
<![CDATA[["Machine Data eXchange.Services.Sapient.Runtime","Machine Data eXchange.Services.Sapient.Runtime.SubThread","Machine Data eXchange.Services.Sapient.Runtime.SubThread.Script","Machine Data eXchange.Services.Sapient.Runtime.SubThread.Script.SubThread"]]]>
<comment name="@LiesMich">
<![CDATA[[Header]Beispiel für Subthreads


Hier sieht man ein Beispiel für die Verwendung von Subthreads.
]]>
</comment>
<comment name="@Readme">
<![CDATA[[Header]Example for Subthreads


This is an example how to use subthreads.
]]>
</comment>
<basmod/>
<conmod/>
<sqlmod/>
<evtmod/>
<opcmod/>
<opcuamod/>
<pubmod/>
<sccmod/>
<scrmod>
<folder name="SubThread">
<scritm name="AddJobThread" created="06.11.2024 13:19:06" changed="06.11.2024 13:19:35" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for AddJobThread

AddJobThread(1, 'hallo')

]]>
</scritm>
<scritm name="CreateSubThread" created="13.12.2023 10:15:03" changed="06.11.2024 13:18:38" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for CreateSubThread


string command
string dir


dir := StrToJson('C:\\temp\\csv_test\\*S7300.csv')


//command := '{ "action" : "ScanDir" , "timeval" : 3000, "dir" : "' + dir +'"}'


command := '{ "action": "Echo", "jobstack": true}'



CreateThread(1, command, Script.SubThread.ScanDirEvent)
]]>
</scritm>
<scritm name="RemoveSubThread" created="13.12.2023 10:18:09" changed="13.12.2023 10:18:33" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for RemoveSubThread

RemoveThread(1)

]]>
</scritm>
<scritm name="ScanDirEvent" params="_id,Int;_result,String;" created="13.03.2024 21:26:00" changed="18.03.2024 16:21:32" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for ScanDirEvent


debug(_result)

]]>
</scritm>
</folder>
</scrmod>
<commod/>
<memmod/>
</gateway>
