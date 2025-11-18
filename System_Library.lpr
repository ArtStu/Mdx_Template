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
                         version                  CDATA          "4.1">
<!ELEMENT memmod ((memitm)*, (folder)*, (comment)*)>
<!ELEMENT memitm ((occitm)*)>
<!ATTLIST memitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         fmt                      CDATA          ""
                         init                     CDATA          "&lt;Null&gt;"
                         mul                      CDATA          "1"
                         always                   (true|false)   "false">
<!ELEMENT occitm EMPTY>
<!ATTLIST occitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         silent                   (true|false)   "false"
                         direct                   (true|false)   "false"
                         created                  CDATA          ""
                         origin                   CDATA          ""
                         changed                  CDATA          ""
                         author                   CDATA          ""
                         version                  CDATA          "">
<!ELEMENT folder EMPTY>
<!ATTLIST folder         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          "">
<!ELEMENT comment EMPTY>
<!ATTLIST comment        name                     CDATA          #REQUIRED>
<!ELEMENT evtmod ((memitm)*, (evtitm)*, (folder)*, (comment)*)>
<!ELEMENT evtitm ((occitm)*)>
<!ATTLIST evtitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
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
                         template                 CDATA          ""
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
                         template                 CDATA          ""
                         updtime                  CDATA          "0">
<!ELEMENT opcitm ((memitm)*, (folder)*, (occitm)*)>
<!ATTLIST opcitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
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
                         template                 CDATA          ""
                         silent                   (true|false)   "false"
                         fmt                      CDATA          "&lt;Null&gt;"
                         params                   CDATA          ""
                         created                  CDATA          ""
                         origin                   CDATA          ""
                         changed                  CDATA          ""
                         lastedit                 CDATA          ""
                         author                   CDATA          ""
                         version                  CDATA          "">
<!ELEMENT sqlmod ((sqlcon)*, (memitm)*, (folder)*, (comment)*)>
<!ELEMENT sqlcon ((sqltbl)*, (memitm)*, (folder)*, (sqlproc)*, (occitm)*, (comment)*)>
<!ATTLIST sqlcon         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         connect                  CDATA          ""
                         user                     CDATA          ""
                         password                 CDATA          ""
                         passcrypt                CDATA          ""
                         errfile                  CDATA          ""
                         dbtype                   CDATA          "">
<!ELEMENT sqltbl ((sqlitm)*, (memitm)*, (folder)*, (comment)*)>
<!ATTLIST sqltbl         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         tblname                  CDATA          ""
                         sql                      CDATA          "">
<!ELEMENT sqlitm ((occitm)*)>
<!ATTLIST sqlitm         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         fldname                  CDATA          ""
                         fmt                      CDATA          "">
<!ELEMENT sqlproc EMPTY>
<!ATTLIST sqlproc        name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         fmt                      CDATA          ""
                         procname                 CDATA          ""
                         params                   CDATA          "">
<!ELEMENT commod ((memitm)*, (folder)*, (comdrv)*, (comment)*)>
<!ELEMENT comdrv ((memitm)*, (folder)*, (comcon)*, (comment)*)>
<!ATTLIST comdrv         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         module                   CDATA          "">
<!ELEMENT comcon ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST comcon         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         contime                  CDATA          "30000"
                         sndtime                  CDATA          "50">
<!ELEMENT opcuamod ((memitm)*, (folder)*, (opcuasrv)*, (comment)*)>
<!ATTLIST opcuamod       tracelevel               CDATA          "0"
                         tracesize                CDATA          "10000"
                         tracefiles               CDATA          "5">
<!ELEMENT opcuasrv ((memitm)*, (folder)*, (opcuaitm)*, (opcuagrp)*, (uafolder)*, (uanode)*, (occitm)*, (comment)*, (opcuaaeitm)*, (opcuameth)*)>
<!ATTLIST opcuasrv       name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
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
                         template                 CDATA          ""
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
                         disable                  (true|false)   "false"
                         template                 CDATA          "">
<!ELEMENT uanode ((memitm)*)>
<!ATTLIST uanode         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
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
                         template                 CDATA          ""
                         timeout                  CDATA          "10000"
                         autosubsc                (true|false)   "false">
<!ELEMENT opcuaaeitm ((occitm)*)>
<!ATTLIST opcuaaeitm     name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         type                     CDATA          "0"
                         idname                   CDATA          "2782"
                         idtype                   CDATA          "0"
                         nsname                   CDATA          "http://opcfoundation.org/UA/"
                         filter                   CDATA          ""
                         autosubsc                (true|false)   "false">
<!ELEMENT opcuameth EMPTY>
<!ATTLIST opcuameth      name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
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
                         template                 CDATA          ""
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
                         template                 CDATA          ""
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
                         template                 CDATA          ""
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
                         template                 CDATA          ""
                         fmt                      CDATA          "String"
                         topic                    CDATA          "">
<!ELEMENT mqttdrv ((memitm)*, (folder)*, (occitm)*, (comment)*, (mqttitm)*)>
<!ATTLIST mqttdrv        name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         autosubsc                (true|false)   "true">
<!ELEMENT mqttitm ((occitm)*)>
<!ATTLIST mqttitm        name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         fmt                      CDATA          ""
                         topic                    CDATA          "">
<!ELEMENT kafkaconsumer ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST kafkaconsumer  name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         brokers                  CDATA          "">
<!ELEMENT kafkaproducer ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST kafkaproducer  name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         brokers                  CDATA          "">
<!ELEMENT conmod ((memitm)*, (folder)*, (comment)*, (otcsrv)*)>
<!ELEMENT otcsrv ((memitm)*, (folder)*, (occitm)*, (comment)*, (mqttpub)*, (mqttdrv)*)>
<!ATTLIST otcsrv         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         fmt                      CDATA          "Block"
                         port                     CDATA          "1884"
                         whitelist                CDATA          "">
<!ELEMENT awsmod ((memitm)*, (folder)*, (comment)*, (awssqs)*)>
<!ELEMENT awssqs ((memitm)*, (folder)*, (comment)*, (awssqsrcv)*, (awssqssnd)*)>
<!ATTLIST awssqs         name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          "">
<!ELEMENT awssqsrcv ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST awssqsrcv      name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         queue                    CDATA          ""
                         queuetype                CDATA          "0"
                         maxrcvmsg                CDATA          "1"
                         rcvtime                  CDATA          "20000"
                         delmsg                   (true|false)   "true">
<!ELEMENT awssqssnd ((memitm)*, (folder)*, (occitm)*, (comment)*)>
<!ATTLIST awssqssnd      name                     CDATA          #REQUIRED
                         disable                  (true|false)   "false"
                         template                 CDATA          ""
                         queue                    CDATA          ""
                         queuetype                CDATA          "0">
]>
<gateway>
<![CDATA[["Machine Data eXchange.Services.Sapient.Runtime","Machine Data eXchange.Services.Sapient.Runtime.System_Library","Machine Data eXchange.Services.Sapient.Runtime.System_Library.Connector","Machine Data eXchange.Services.Sapient.Runtime.System_Library.PubSub","Machine Data eXchange.Services.Sapient.Runtime.System_Library.Sapient","Machine Data eXchange.Services.Sapient.Runtime.System_Library.Sapient.Engine_1","Machine Data eXchange.Services.Sapient.Runtime.System_Library.Sapient.Engine_1.Post","Machine Data eXchange.Services.Sapient.Runtime.System_Library.Sapient.Engine_1.Select","Machine Data eXchange.Services.Sapient.Runtime.System_Library.Script","Machine Data eXchange.Services.Sapient.Runtime.System_Library.Script.@Templates","Machine Data eXchange.Services.Sapient.Runtime.System_Library.Script.SapientEngine","Machine Data eXchange.Services.Sapient.Runtime.System_Library.Value"]]]>
<comment name="@Templates">
<![CDATA[{
  "project": [
    {
      "common": [
        "Value.System.SccOnStart",
        "Value.System.SccProjectNo"
      ]
    },
    {
      "select": [
        {
          "name": "init",
          "de": {
            "name": "Initialisierung",
            "desc": "Ereignisse und Skripte zur Initialisierung"
          },
          "en": {
            "name": "Initialisation",
            "desc": "Events and scripts for initialisation"
          },
          "nodes": [
            "Event.PrjInit.OnTrigger",
            "Script.EventHandling.OnPrjInit",
          ]
        },
        {
          "name": "start",
          "de": {
            "name": "Ablaufstart",
            "desc": "Ereignisse und Skripte zum Projektstart"
          },
          "en": {
            "name": "Start of process",
            "desc": "Events and scripts at process start"
          },
          "nodes": [
            "Event.PrjStart.OnTrigger",
            "Script.EventHandling.OnPrjStart",
          ]
        },
        {
          "name": "stop",
          "de": {
            "name": "Ablaufende",
            "desc": "Ereignisse und Skripte zum Projektende"
          },
          "en": {
            "name": "End of process",
            "desc": "Events and scripts at process end"
          },
          "nodes": [
            "Event.PrjStop.OnTrigger",
            "Script.EventHandling.OnPrjStop",
          ]
        }
      ]
    }
  ],
  "connections": [
    {
      "otc_connector": [
        "Connector.Otc_Connector"
      ]
    },
    {
      "sapient_post": [
        "Sapient.Engine_1",
        "Sapient.Engine_1.Post",
        "Sapient.Engine_1.Post.OnWatchDog",
      ]
    },
    {
      "sapient_select": [
        "Sapient.Engine_1",
        "Sapient.Engine_1.Select",
        "Sapient.Engine_1.Select.OnWatchDog",
      ]
    },
    {
      "sapient_websocket": [
        "Sapient.Engine_1",
        "Sapient.Engine_1.WebSocket",
        "Sapient.Engine_1.WebSocket.OnWatchDog",
      ]
    },
    {
      "mqtt_mosquitto": [
        "PubSub.Mosquitto"
      ]
    }
  ],
  "sapient": [
    {
      "common": [
        "Event.TimerSyncScc.OnTrigger",
        "Script.EventHandling.OnTimerSyncScc",
        "Script.SapientEngine.WaitUntilRunning",
        "Script.SapientEngine.Modules.syncSysModule",
        "Script.SapientEngine.EngineStatus.getEngineInstance",
        "Script.SapientEngine.Common.GetHttpJsonPostUniqueId",
        "Script.SapientEngine.Common.GetHttpJsonSelectUniqueId",
        "Script.SapientEngine.Data.Get_SYS_VALUE_FORMATS",
        "Script.Utils.TxtOps.GetColNo",
        "Value.SapientEngine.AlarmConnection",
        "Value.SapientEngine.SelectConnection",
        "Value.SapientEngine.SyncConnection"
      ]
    },
    {
      "select": [
        {
          "name": "alarm",
          "de": {
            "name": "Alarme",
            "desc": "Skripte zum Setzen oder R�cksetzen von Alarmen"
          },
          "en": {
            "name": "Alarms",
            "desc": "Scripts to set or reset alarms"
          },
          "nodes": [
            "Script.SapientEngine.Alarms.Alarm_Coming",
            "Script.SapientEngine.Alarms.Alarm_Leaving",
            "Script.SapientEngine.Alarms.Alarm_Leaving_All",
            "Script.Utils.TxtOps.Utf8ToAscii"
          ]
        },
        {
          "name": "value",
          "de": {
            "name": "Werte",
            "desc": "Skripte zur Verarbeitung von Werten"
          },
          "en": {
            "name": "Values",
            "desc": "Scripts to handle values"
          },
          "nodes": [
            "Script.SapientEngine.Values.Commands.List",
            "Script.SapientEngine.Values.Config.Create",
            "Script.SapientEngine.Values.Current.Bool_in",
            "Script.SapientEngine.Values.Current.Bulk_Val_In",
            "Script.SapientEngine.Values.Current.Num_In",
            "Script.SapientEngine.Values.Current.Str_In",
            "Script.SapientEngine.Values.Out_Value.setValueTransmitted"
          ]
        }
      ]
    }
  ]
}
]]>
</comment>
<basmod/>
<conmod>
<otcsrv name="Otc_Connector"/>
</conmod>
<sqlmod/>
<evtmod>
<evtitm name="PrjInit" typ="8" timestamp="30.08.2024 21:13:37">
<occitm name="OnTrigger" created="30.08.2024 21:13:54" changed="19.08.2025 11:04:39" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.EventHandling.OnPrjInit]]>
</occitm>
</evtitm>
<evtitm name="PrjStart" typ="2" timestamp="02.08.2024 12:06:28">
<occitm name="OnTrigger" created="02.08.2024 12:06:48" changed="19.08.2025 11:04:56" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.EventHandling.OnPrjStart]]>
</occitm>
</evtitm>
<evtitm name="PrjStop" typ="3" timestamp="02.08.2024 12:06:53">
<occitm name="OnTrigger" created="02.08.2024 12:07:01" changed="19.08.2025 11:05:13" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.EventHandling.OnPrjStop]]>
</occitm>
</evtitm>
<evtitm name="TimerSyncScc" typ="1" value="10000" dismult="true" timestamp="0">
<occitm name="OnTrigger" changed="20.03.2021 09:51:22" author="PN-MARIO2/mario.j.rutar">
<![CDATA[Script.EventHandling.OnTimerSyncScc
]]>
</occitm>
</evtitm>
</evtmod>
<opcmod/>
<opcuamod/>
<pubmod>
<mqttcon name="Mosquitto" fmt="String" passcrypt=" " uri="localhost:1883"/>
</pubmod>
<sccmod>
<scccon name="Engine_1" uri="http://localhost:8081" user="sapient_sys" passcrypt="0000025300002360776FA232C613D8C7CD5740630C071597">
<sccsub name="Post">
<occitm name="OnWatchDog" created="30.07.2025 16:09:59" changed="30.07.2025 16:30:57" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.SapientEngine.EngineStatus.getEngineInstance(@Fullname, Script.SapientEngine.Common.GetHttpJsonPostUniqueId)
]]>
</occitm>
</sccsub>
<sccsub name="Select" path="/syscall">
<occitm name="OnWatchDog" created="30.07.2025 16:09:59" changed="30.07.2025 16:30:57" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.SapientEngine.EngineStatus.getEngineInstance(@Fullname, Script.SapientEngine.Common.GetHttpJsonSelectUniqueId)
]]>
</occitm>
</sccsub>
<sccsub name="WebSocket" path="/wsscc" type="1"/>
</scccon>
</sccmod>
<scrmod>
<folder name="@Templates">
<scritm name="OnWatchDog" params="@Name,String;@Fullname,String;" created="30.07.2025 16:09:59" changed="30.07.2025 16:30:57" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.SapientEngine.EngineStatus.getEngineInstance(@Fullname, Script.SapientEngine.Common.GetHttpJsonPostUniqueId)
]]>
</scritm>
</folder>
<folder name="EventHandling">
<scritm name="OnPrjInit" created="30.08.2024 21:15:03" changed="19.08.2025 11:06:45" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//
//  called from event PrjInit (start application)
//
//  revision 1.0.0     2024-08-02
//  author: Adrian Prell  GEFASOFT GmbH
//
//  revision history:
//
////////////////////////////////////////////////////////////////////////////////


Debug('********************************************************************************')
Debug('*                         Application init                                     *')
Debug('********************************************************************************')

Value.System.SccOnStart := true
Value.System.SccProjectNo := '100'

Value.SapientEngine.SyncConnection := '%1'
Value.SapientEngine.AlarmConnection := '%2'
Value.SapientEngine.SelectConnection := '%3'
Value.SapientEngine.WebSocketConnection := '%4'

//@Templates
]]>
</scritm>
<scritm name="OnPrjStart" changed="19.08.2025 11:06:59" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script OnPrjStart
//
//  called from event PrjStart (start application)
//
//  revision 3.26.1     2024-08-02
//  author: Adrian Prell  GEFASOFT GmbH
//
//  revision history:
//    revision 3.11.0   2021-03-17
//      first release
//
//    revision 3.24.2   2022-11-16
//      script StoreSwitchCmds call script GetLocalTimeFromUtcTime
//
//    revision 3.26.1   2023-06-20
//      create items CVI_SZ01 ...  CVI_SZ99 and
//             items TVI_SZ01 ...  TVI_SZ99 with autcomommit = false
//      write CVI and TVI variables via group with function ExtNodeFunc(..., commitwrite)
//
////////////////////////////////////////////////////////////////////////////////


Debug('********************************************************************************')
Debug('*                         Application start                                    *')
Debug('********************************************************************************')


// only for Linux-systems: wait until Sapient Engine is running
if (not @Windows) then
	if (not Script.SapientEngine.WaitUntilRunning) then
		return
	endif
endif

Value.System.SccOnStart := false

//@Templates
]]>
</scritm>
<scritm name="OnPrjStop" changed="19.08.2025 11:07:08" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script OnPrjStop
//
//  called from event PrjStop (stop application)
//
//  revision 3.11.0     2021-03-17
//  author: Adrian Prell  GEFASOFT GmbH
//
//  revision history:
//    revision 3.11.0   2021-03-17
//      first release
//
////////////////////////////////////////////////////////////////////////////////


//@Templates


Debug('********************************************************************************')
Debug('*  Application terminated                                                      *')
Debug('********************************************************************************')

]]>
</scritm>
<scritm name="OnTimerSyncScc" silent="true" changed="09.04.2024 08:15:44" author="PN-MARIO2/mario.j.rutar">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script OnTimerSyncScc
//
//  called from event TimerSyncScc
//
//  revision 3.27.0      2024-04-08
//  author: rmj          GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
////////////////////////////////////////////////////////////////////////////////

// no activities during SCC-start
if (Value.System.SccOnStart) then
  return
else
  Script.SapientEngine.Modules.syncSysModule
endif
]]>
</scritm>
</folder>
<folder name="SapientEngine">
<folder name="Alarms">
<scritm name="Alarm_Coming" silent="true" params="_szConSym,String;_szExtCode,String;_szOperand,String;_szAlClass,String;_szAlType,String;_szText,String;_szTimeStamp,String;" changed="06.08.2025 09:53:43" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script Alarm_Coming
//
//  revision 3.27.0      2024-04-08
//  author: rmj          GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
////////////////////////////////////////////////////////////////////////////////
bool   fOk
string szId, szLogMsg, szMethod, szParams, szText
long   nMethod

nMethod  := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId     := printf('alarm_coming_%lu', nMethod)
szMethod := 'de/gefasoft/sapient/db/alarms/Alarms/alarm_coming'
szParams := '{'                       +
              '"CONNECTION_SYMBOL":"' + _szConSym     + '", ' +
              '"EXT_CODE":'           + _szExtCode    + ', '  +
              '"TIME_STAMP":"'        + _szTimeStamp  + '"'

            // option: add operand to message
            if ((_szOperand <> '') and
                (_szOperand <> 'NULL'))
            then
              szParams := szParams + ', ' +
                          '"OPERAND": "'  + _szOperand + '"'
            endif

            // option: set message-class
            if ((_szAlClass <> '') and
                (_szAlClass <> 'NULL'))
            then
              szParams := szParams + ', ' +
                          '"AL_CLASS":' + _szAlClass
            endif

            // option: set message-type
            if ((_szAlType <> '') and
                (_szAlType <> 'NULL'))
            then
              szParams := szParams + ', ' +
                          '"AL_TYPE":' + _szAlType
            endif

            // option: send a message with message-text
            if ((_szText <> '') and
                (_szText <> 'NULL'))
            then
              szText   := Script.Utils.TxtOps.Utf8ToAscii(_szText)
              szText   := StrReplace(szText, '"', '\\"')
              szParams := szParams   + ', '    +
                          '"TEXT":"' + szText  + '"'
            endif

szParams := szParams + '}'

szLogMsg := 'id:' + szId + ' method:' + szMethod + ' params:' + szParams
Debug('Script Alarm_Coming: ' + szLogMsg)

fOk := scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)
]]>
</scritm>
<scritm name="Alarm_Leaving" silent="true" params="_szConSym,String;_szExtCode,String;_szOperand,String;_szTimeStamp,String;" changed="06.08.2025 09:53:03" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script Alarm_Leaving
//
//  revision 3.27.0        2024-04-08
//  author: rmj            GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0      2024-04-08
//      first release
//
///////////////////////////////////////////////////////////////////////////////
bool   fOk
string szId, szLogMsg, szMethod, szParams
long   nMethod

nMethod  := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId     := printf('alarm_leaving_%lu', nMethod)
szMethod := 'de/gefasoft/sapient/db/alarms/Alarms/alarm_leaving'
szParams := '{'                       +
              '"CONNECTION_SYMBOL":"' + _szConSym     + '", ' +
              '"EXT_CODE":'           + _szExtCode    + ', '  +
              '"TIME_STAMP":"'        + _szTimeStamp  + '"'

            // option: add operand to message
            if ((_szOperand <> '') and
                (_szOperand <> 'NULL'))
            then
              szParams := szParams + ', ' +
                          '"OPERAND": "'  + _szOperand + '"'
            endif

szParams := szParams + '}'

szLogMsg := 'id:' + szId + ' method:' + szMethod + ' params:' + szParams
Debug('Script Alarm_Leaving: ' + szLogMsg)

fOk := scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)
]]>
</scritm>
<scritm name="Alarm_Leaving_All" silent="true" params="_szConSym,String;_nWithChildren,Int;_szTimeStamp,String;" changed="06.08.2025 09:54:25" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script Alarm_Leaving_All
//
//  revision 3.27.0         2024-04-08
//  author: Joerg Kral      GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0       2024-04-08
//      first release
//
////////////////////////////////////////////////////////////////////////////////
bool   fOk
string szId, szLogMsg, szMethod, szParams
long   nMethod

nMethod  := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId     := printf('alarm_leaving_all_%lu', nMethod)
szMethod := 'de/gefasoft/sapient/db/alarms/Alarms/alarm_leaving_all'
szParams := '{'                                                              +
               '"CONNECTION_SYMBOL":"' + _szConSym                   + '", ' +
               '"WITH_CHILDREN":'      + LToStr(_nWithChildren, 10)  + ', '  + 
               '"TIME_STAMP":"'        + _szTimeStamp  + '"'                 +
            '}'
szLogMsg :=  'id:' + szId + ' method:' + szMethod + ' params:' + szParams

Debug('script Alarm_Leaving_All ' + szLogMsg)

fOk := scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)
]]>
</scritm>
</folder>
<folder name="Common">
<scritm name="GetHttpJsonPostUniqueId" silent="true" fmt="Int">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script GetHttpJsonPostUniqueId
//
//  revision 3.11.0     2021-03-17
//  author: Joerg Kral  GEFASOFT GmbH
//
//  revision history:
//    revision 3.11.0   2021-03-17
//      first release
//
////////////////////////////////////////////////////////////////////////////////

static long nId

nId := nId + 1

// return result
return nId
]]>
</scritm>
<scritm name="GetHttpJsonSelectUniqueId" silent="true" fmt="Int">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script GetHttpJsonSelectUniqueId
//
//  revision 3.11.0     2021-03-17
//  author: Joerg Kral  GEFASOFT GmbH
//
//  revision history:
//    revision 3.11.0   2021-03-17
//      first release
//
////////////////////////////////////////////////////////////////////////////////

static long nId

nId := nId + 1

// return result
return nId
]]>
</scritm>
</folder>
<folder name="Data">
<scritm name="Get_SYS_VALUE_FORMATS" silent="true" fmt="Int" params="_nTimeout,Int;" changed="06.08.2025 10:21:45" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script Get_SYS_VALUE_FORMATS
//
//  revision 3.27.0      2024-04-08
//  author: Joerg Kral   GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
////////////////////////////////////////////////////////////////////////////////
double dftExecutionTime
long   nCols, nRecs, nRow, nRows, nColNoId, nColNoName, nMethod
string szMethod, szParams, szSelId, szField, szCsv, szCsvRow, szId, szName
bool   fOk

// init
nRecs    := -1
nMethod  := Script.SapientEngine.Common.GetHttpJsonSelectUniqueId
szSelId  := printf('select_sys_value_formats_%lu', nMethod)
szMethod := 'de/gefasoft/sapient/data/Query/select'
szParams := '{'                                                +
                '"schema": "legato",'                          +
                '"query": {'                                   +
                    '"resources": ['                           +
                        '{'                                    +
                            '"resource": "sys_value_formats",' +
                            '"as": "svf"'                      +
                        '}'                                    +
                    '],'                                       +
                    '"fields": ['                              +
                        '"svf.id",'                            +
                        '"svf.name"'                           +
                    '],'                                       +
                    '"sort": ['                                +
                        '{'                                    +
                            '"field": "svf.id"'                +
                        '}'                                    +
                    ']'                                        +
                '}'                                            +
            '}'


dftExecutionTime := TimeDouble
fOk := scc_sub(Value.SapientEngine.SelectConnection).post(
                                                       szSelId,
                                                       szMethod,
                                                       szParams,
                                                       _nTimeOut
                                                      )
if (fOk) then
  dftExecutionTime := (TimeDouble - dftExecutionTime) * 1000

  nRecs := 0
  szCsv := scc_sub(Value.SapientEngine.SelectConnection).Result
  nRows := GetRowCnt(szCsv)
  nCols := GetColCnt(szCsv)

  Debug('script Get_SYS_VALUE_FORMATS rows:' + LToStr(nRows, 10) +
        ' cols:' + LToStr(nCols, 10))

  if (nRows >= 1) then
    szCsvRow := GetRow(szCsv, 1)

    Debug('script Get_SYS_VALUE_FORMATS cols:' + szCsvRow)

    if ((nCols > 3) and (nRows >= 2)) then
      szField    := 'result.data.id'
      nColNoId   := Script.Utils.TxtOps.GetColNo(szCsvRow, szField, nCols)
      szField    := 'result.data.name'
      nColNoName := Script.Utils.TxtOps.GetColNo(szCsvRow, szField, nCols)

      if ((nColNoId > 0) and (nColNoName > 0)) then
        nRow := 2
        while (nRow <= nRows) do
          nRecs    := nRecs + 1
          szCsvRow := GetRow(szCsv, nRow)

          Debug('script Get_SYS_VALUE_FORMATS row[' + LToStr(nRow - 1, 10) +
                '] data:' + szCsvRow)

		      szId   := GetCol(szCsvRow, 1,  nColNoId)
          szName := GetCol(szCsvRow, 1,  nColNoName)
 
          Debug('script Get_SYS_VALUE_FORMATS' +
                ' ID:'   + szId   +
                ' NAME:' + szName)

          nRow := nRow + 1
        enddo
      endif
    endif
  endif
else
  debug('script Get_SYS_VALUE_FORMATS select failed')
endif

Debug('script Get_SYS_VALUE_FORMATS returns ' + LToStr(nRecs, 10))

// return result
return nRecs
]]>
</scritm>
</folder>
<folder name="EngineStatus">
<scritm name="getEngineInstance" silent="true" params="_szHttpJsonCon,String;_nId,Int;" changed="30.07.2025 15:53:58" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script getEngineInstance
//
//  revision 3.11.0     2021-03-17
//  author: Joerg Kral  GEFASOFT GmbH
//
//  revision history:
//    revision 3.11.0   2021-03-17
//      first release
//
////////////////////////////////////////////////////////////////////////////////

bool fRetVal
string szId, szLogMsg, szMethod, szParams

szId := printf('getEngineInstance_%lu', _nId)

szMethod := '/de/gefasoft/sapient/sapieng/main/EngineStatus/getEngineInstance'
szParams := '{}'                                                   

szLogMsg :=  'id:' + szId + ' method:' + szMethod + ' params:' + szParams

Debug('script ' + @ScriptName + szLogMsg)


fRetVal := scc_sub(_szHttpJsonCon).post(szId, szMethod, szParams, 0)
]]>
</scritm>
</folder>
<folder name="Modules">
<scritm name="syncSysModule" changed="06.08.2025 10:08:51" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script syncSysModule
//
//  revision 3.27.0      2024-04-08
//  author: Joerg Kral   GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
////////////////////////////////////////////////////////////////////////////////
bool   fOk
string szId, szLogMsg, szMethod, szParams
long   nMethod

nMethod  := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId     := printf('syncSysModule_%lu', nMethod)
szMethod := '/de/gefasoft/sapient/db/modules/Modules/syncSysModule'
szParams := '{'                                            +
               '"PROJECT_NO":' + Value.System.SccProjectNo +
            '}'
szLogMsg :=  'id:' + szId + ' method:' + szMethod + ' params:' + szParams
Debug('script syncSysModule ' + szLogMsg)

fOk := scc_sub(Value.SapientEngine.SyncConnection).post(szId, szMethod, szParams, 0)


]]>
</scritm>
</folder>
<scritm name="WaitUntilRunning" silent="true" fmt="Bool" changed="07.05.2024 07:53:00" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script WaitUntilRunning
//
//  revision 3.27.0      2024-04-08
//  author: Joerg Kral   GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
////////////////////////////////////////////////////////////////////////////////
bool fRetVal
long nRetVal, nRecs

// init
fRetVal := true
nRecs   := 0

while (nRecs <= 0) do
  nRecs := Script.SapientEngine.Data.Get_SYS_VALUE_FORMATS(5000)

  if (SigTermReceived) then
    Debug('script WaitUntilRunning signal terminate received')
    fRetVal := false
    break
  endif

  if (nRecs <= 0) then
    Debug('script WaitUntilRunning sleep for 5 seconds')
    nRetVal := System('sleep 5')
    Debug('script WaitUntilRunning sleep for 5 seconds done')
  endif

  if (SigTermReceived) then
    Debug('script WaitUntilRunning signal terminate received')
    fRetVal := false
    break
  endif
enddo

if (fRetVal) then
  Debug('script WaitUntilRunning returns true')
else
  Debug('script WaitUntilRunning returns false')
endif

return fRetVal
]]>
</scritm>
</folder>
<folder name="Utils">
<folder name="TxtOps">
<scritm name="GetColNo" silent="true" fmt="Int" params="_szCols,String;_szColName,String;_nMaxCol,Int;" changed="09.04.2024 08:16:15" author="PN-MARIO2/mario.j.rutar">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script GetColNo
//
//  revision 3.27.0      2024-04-08
//  author: Joerg Kral   GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
////////////////////////////////////////////////////////////////////////////////
long   nCol, nRetVal
string szCol, szLog

// init 
nRetVal := -1
nCol    := 1
while (nCol <= _nMaxCol) do
  szCol := GetCol(_szCols, 1, nCol)
  szCol := StrLower(szCol)

  if (szCol = _szColName) then
    nRetVal := nCol
    break
  endif

  nCol := nCol + 1
enddo

return nRetVal
]]>
</scritm>
<scritm name="Utf8ToAscii" fmt="String" params="_szUtf8,String;" changed="09.04.2024 08:16:43" author="PN-MARIO2/mario.j.rutar">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script Utf8ToAscii
//
//  revision 3.27.0      2024-04-08
//  author: Joerg Kral   GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
////////////////////////////////////////////////////////////////////////////////
block  blkAscii, blkUtf8
long   i, nAsciiIndex, nUtf8Byte, nUtf8Len
string szAscii

nUtf8Len := StrLen(_szUtf8)

if (nUtf8Len > 0) then
  blkAscii := NewBlock(nUtf8Len)
  blkUtf8  := NewBlock(nUtf8Len)

  SetBlockStr(blkUtf8, 0, nUtf8Len, _szUtf8)

  i := 0
  nAsciiIndex := 0

  while (i < nUtf8Len) do
    nUtf8Byte := GetBlockNum(blkUtf8, i, 1, false) and 0xFF

    if ((nUtf8Byte = 0xC3) and (i < (nUtf8Len - 1))) then
      nUtf8Byte := GetBlockNum(blkUtf8, i + 1, 1, false) and 0xFF

      switch (nUtf8Byte) 
        case 0x84:  // Ä
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xC4)
          i := i + 1
          break
        case 0x96:  // Ö
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xD6)
          i := i + 1
          break
        case 0x9C:  // Ü
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xDC)
          i := i + 1
          break
        case 0x9F:  // ß
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xDF)
          i := i + 1
          break
        case 0xA4:  // ä
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xE4)
          i := i + 1
          break
        case 0xB6:  // ö
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xF6)
          i := i + 1
          break
        case 0xBC:  // ü
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xFC)
          i := i + 1
          break
      end
    else
      SetBlockNum(blkAscii, nAsciiIndex, 1, false, nUtf8Byte)
    endif

    nAsciiIndex := nAsciiIndex + 1
    i := i + 1
  enddo

  // get ASCII String
  szAscii := GetBlockStr(blkAscii, 0, nAsciiIndex)
else
  szAscii := ''
endif

// Debug('script Utf8ToAscii(' + _szUtf8 + ') returns ' + szAscii)

// return result
return szAscii
]]>
</scritm>
</folder>
<folder name="UtcTime">
<scritm name="GetCurTimeAsUtcTimeStamp" silent="true" fmt="String" changed="06.05.2024 12:16:52" author="DN-ARTHUR/arthur.stunf">
<![CDATA[///////////////////////////////////////////////////////////////////////////////////
//
//  script GetCurTimeAsUtcTimeStamp
//
//  revision 3.27.0     2024-04-08
//  author: Joerg Kral, rmj  GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0   2024-04-08
//      first release
//
///////////////////////////////////////////////////////////////////////////////////
string szEvtTime, szTimeNow, szFormat
double dTime, dUtcTime

if (@Windows) then
  szEvtTime := UtcTimeStr('YYYY-MM-DDTHH:mm:ss.tttZ')
else
  szFormat  := 'YYYY-MM-DD HH:mm:ss.ttt'
  szTimeNow := TimeStr(szFormat)
  dTime     := TimeToD(szFormat, szTimeNow)
  dUtcTime  := dTime - TimeDiffLocalTimeUtcTime
  szEvtTime := DToTime(szFormat, dUtcTime)
  szEvtTime := ConvTimeStr(szEvtTime, szFormat, 'YYYY-MM-DDTHH:mm:ss.tttZ')
endif

return szEvtTime
]]>
</scritm>
</folder>
</folder>
</scrmod>
<commod/>
<memmod>
<folder name="SapientEngine">
<memitm name="AlarmConnection" fmt="String"/>
<memitm name="SelectConnection" fmt="String"/>
<memitm name="SyncConnection" fmt="String"/>
<memitm name="WebSocketConnection" fmt="String"/>
</folder>
<folder name="System">
<memitm name="SccOnStart" fmt="Bool" init="0"/>
<memitm name="SccProjectNo" fmt="String" init="100" always="true"/>
</folder>
</memmod>
</gateway>
