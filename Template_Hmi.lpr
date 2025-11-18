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
<![CDATA[["Machine Data eXchange.Services.Sapient.Runtime","Machine Data eXchange.Services.Sapient.Runtime.hmi","Machine Data eXchange.Services.Sapient.Runtime.hmi.Connector","Machine Data eXchange.Services.Sapient.Runtime.hmi.Connector.Otc_Connector","Machine Data eXchange.Services.Sapient.Runtime.hmi.Event","Machine Data eXchange.Services.Sapient.Runtime.hmi.Event.PrjInit","Machine Data eXchange.Services.Sapient.Runtime.hmi.Event.PrjStart","Machine Data eXchange.Services.Sapient.Runtime.hmi.Event.PrjStop","Machine Data eXchange.Services.Sapient.Runtime.hmi.Script","Machine Data eXchange.Services.Sapient.Runtime.hmi.Script.@Templates","Machine Data eXchange.Services.Sapient.Runtime.hmi.Script.@Templates.EventHandling","Machine Data eXchange.Services.Sapient.Runtime.hmi.Script.EventHandling"]]]>
<comment name="@Config">
<![CDATA[[OTC]
ImportDir=$project\csv\
BackupDir=$project\backup\
[CON]
PlcS7_1=5
PlcS7_2=6
PlcS7_3=7  	
PlcS7_4=4  	
TIA_1=100	
TIA_2=100 
OpcUaPlc=41 
OpcDaPlc=40  
TcpMc=-8  
Inactive=-99 
[MODULES]
AgLinkS7=MdxAgLinkS7_1
AgLinkTia=MdxAgLinkTia_1
OpcDa=MdxOpcDa_1
OpcUa=MdxOpcUa_1
[MSG]
ClassConError=61
ClassAlert=11
ClassWarning=2
ClassInfo=3
TypeAlert=1
TypeWarning=1
TypeInfo=1
]]>
</comment>
<comment name="@LiesMich">
<![CDATA[[Header]HMI Handhabung


Beispiel für die Handhabung der HMI Funktionalität]]>
</comment>
<comment name="@ReadMe">
<![CDATA[[Header]HMI Handling

Example how to handle HMI functionality
]]>
</comment>
<basmod/>
<conmod>
<otcsrv name="Otc_Connector">
<mqttpub name="ConnectStatus" topic="+/Value/+/@ConnectStatus">
<occitm name="OnPublish" created="29.04.2024 08:11:31" changed="29.04.2024 10:42:16" author="DN-ARTHUR/arthur.stunf">
<![CDATA[

debug('Publish Connectstatus: '+@Topic)
debug('                       '+@Value)


Script.Hmi_20.Publish.ConnectStatus(@Topic, @Value)
]]>
</occitm>
</mqttpub>
<mqttpub name="ConsistentValues" topic="+/Value/Consistent/#">
<occitm name="OnPublish" silent="true" created="29.04.2024 08:11:31" changed="29.04.2024 10:41:47" author="DN-ARTHUR/arthur.stunf">
<![CDATA[

debug('Publish Consistent Values: '+@Topic)
debug('                           '+@Value)


Script.Hmi_20.Publish.ConsistentValues(@Topic, @Value)
]]>
</occitm>
</mqttpub>
<mqttpub name="DirectValues" topic="+/Value/Direct/#">
<occitm name="OnPublish" created="29.04.2024 08:11:31" changed="30.04.2025 09:35:03" author="DN-ARTHUR/arthur.stunf">
<![CDATA[

debug('Publish Direct Values: '+@Topic)
debug('                       '+@Value)



print(string line)
begin
	Debug(line)
end

//JsonPrint(@Value, print)


Script.Hmi_20.Publish.DirectValues(@Topic, @Value)
]]>
</occitm>
</mqttpub>
<mqttpub name="Import" topic="+/Config/Import">
<occitm name="OnPublish" created="25.04.2024 20:35:50" changed="29.04.2024 10:42:47" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
debug('Publish Import Result: '+@Topic)
debug('                       '+@Value)

Script.Hmi_20.Publish.Import(@Topic, @Value)

]]>
</occitm>
</mqttpub>
<mqttpub name="ModuleState" topic="+/Module">
<occitm name="OnPublish" created="25.04.2024 20:34:48" changed="29.04.2024 10:43:17" author="DN-ARTHUR/arthur.stunf">
<![CDATA[

debug('Publish Module State: '+@Topic)
debug('                      '+@Value)


Script.Hmi_20.Publish.ModuleState(@Topic, @Value)


]]>
</occitm>
</mqttpub>
<occitm name="OnConnect" created="2021-03-20 10:06:43" changed="06.05.2024 11:19:50" author="DN-ARTHUR/arthur.stunf">
<![CDATA[// log connect-state on internal MQTT-Broker
long nState

if (@VALUE) then
  nState := 0   // connection = OK
else
  nState := -1  // connection = NOK
endif

debug('++++++++++++++++++++++++++++++++++++++++++')
debug('node: '       + @SCRIPTFULLNAME +
      ' client-id: ' + @CLIENTID       +
      ' fullname: '  + @FULLNAME       +
      ' name: '      + @NAME           +
      ' state: '     + LToStr(nState, 10)
     )
debug('++++++++++++++++++++++++++++++++++++++++++')

]]>
</occitm>
<occitm name="OnPublish" created="26.04.2024 06:28:15" changed="11.08.2025 14:40:52" author="DN-ARTHUR/arthur.stunf">
<![CDATA[// log all messages on internal MQTT-Broker for connectors


//debug('Publish unfiltered Values: '+@Topic)
//debug('                           '+@Value)


String szValue

szValue := GetBlockStr(@Value, 0, BlockSize(@Value))

if (StrPos(szValue, '-/grp/var') >= 0) then
  return
endif


Script.Hmi_20.Publish.OnPublish(@TOPIC, @FULLNAME, @NAME, szValue)

return

]]>
</occitm>
</otcsrv>
</conmod>
<sqlmod/>
<evtmod>
<evtitm name="PrjInit" typ="8" timestamp="30.08.2024 21:13:37">
<occitm name="OnTrigger" created="30.08.2024 21:13:54" changed="19.08.2025 11:11:54" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.EventHandling.OnPrjInit
]]>
</occitm>
</evtitm>
<evtitm name="PrjStart" typ="2" timestamp="02.08.2024 12:06:28">
<occitm name="OnTrigger" created="02.08.2024 12:06:48" changed="19.08.2025 11:12:05" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.EventHandling.OnPrjStart]]>
</occitm>
</evtitm>
<evtitm name="PrjStop" typ="3" timestamp="02.08.2024 12:06:53">
<occitm name="OnTrigger" created="02.08.2024 12:07:01" changed="19.08.2025 11:12:20" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.EventHandling.OnPrjStop]]>
</occitm>
</evtitm>
<evtitm name="TimerCheckRecvTime" typ="1" value="1000" dismult="true" timestamp="0">
<occitm name="OnTrigger">
<![CDATA[Script.EventHandling.OnTimerCheckRecvTime
]]>
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
<pubmod/>
<sccmod>
<scccon name="Engine_1" uri="#use $project\config.ini?Engine_1.uri" user="#use $project\config.ini?Engine_1.user" passcrypt="#use $project\config.ini?Engine_1.passcrypt">
<sccsub name="Post" type="1">
<scritm name="OnWatchDog" params="@Name,String;@Fullname,String;" created="30.07.2025 16:09:59" changed="30.07.2025 16:30:57" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.SapientEngine.EngineStatus.getEngineInstance(@Fullname, Script.SapientEngine.Common.GetHttpJsonPostUniqueId)
]]>
</scritm>
</sccsub>
<sccsub name="Select" path="/syscall" type="1">
<scritm name="OnWatchDog" params="@Name,String;@Fullname,String;" created="30.07.2025 16:09:59" changed="30.07.2025 16:30:57" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.SapientEngine.EngineStatus.getEngineInstance(@Fullname, Script.SapientEngine.Common.GetHttpJsonSelectUniqueId)
]]>
</scritm>
</sccsub>
<sccsub name="WebSocket" path="/wsscc" type="1" resolvearray="true" rpcfolder="Script.RpcCall">
<occitm name="OnStatus" created="27.05.2021 11:41:14" changed="06.05.2024 11:12:23" author="DN-ARTHUR/arthur.stunf">
<![CDATA[Script.Hmi_20.Result.OnStatusSeWS(@FULLNAME, @NAME, @VALUE)
]]>
</occitm>
</sccsub>
</scccon>
</sccmod>
<scrmod>
<folder name="@Templates">
<folder name="EventHandling">
<scritm name="OnPrjInit" created="19.08.2025 09:43:34" changed="19.08.2025 10:56:17" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Value.System.TimeoutPlcCon := 600

////////////////////////////////////////////////////////////////////////////////
// init default-settings AGLink-library for Siemens PLC
//
Value.System.AsyncJobs   := 0        	// 0=synchronous read method
																			// 1=asynchronous read method

Value.System.TimeoutRead := 12000    	// default-timeout execution-time
                                      // of read- and write-method of
                                      // Delatlogic AGLink-library

////////////////////////////////////////////////////////////////////////////////
// init default-settings of config for Siemens PLC
//

Value.System.TimeInactivity            := -1    // -1 no disconnect
																								// >0 time in milliseconds
																								// to disconnect connection

Value.System.S7StringFromConfig        := true   	// true:  use string-declaration
																									//        from CSV-/config-file
																									// false: add 2 bytes string-
																									//        information (max/real
																									//        size) in config 


Script.Hmi_20.Create.CreateHmiNodes

bool ok

ok := CreateDir(ResolveDir(Value.System.ImportDir))
ok := CreateDir(ResolveDir(Value.System.BackupDir))

]]>
</scritm>
</folder>
</folder>
<folder name="EventHandling">
<scritm name="OnPrjInit" created="19.08.2025 11:08:51" changed="19.08.2025 11:28:17" author="DN-ARTHUR/arthur.stunf">
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

Value.SapientEngine.SyncConnection := 'Sapient.Engine_1.Post'
Value.SapientEngine.AlarmConnection := 'Sapient.Engine_1.Post'
Value.SapientEngine.SelectConnection := 'Sapient.Engine_1.Select'
Value.SapientEngine.WebSocketConnection := 'Sapient.Engine_1.WebSocket'


Script.@Templates.EventHandling.OnPrjInit

]]>
</scritm>
<scritm name="OnPrjStart" created="19.08.2025 11:10:14" changed="19.08.2025 11:10:49" author="DN-ARTHUR/arthur.stunf">
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

]]>
</scritm>
<scritm name="OnPrjStop" created="19.08.2025 11:11:22" changed="19.08.2025 11:11:42" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script OnPrjStart
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


Debug('********************************************************************************')
Debug('*  Application terminated                                                      *')
Debug('********************************************************************************')

]]>
</scritm>
<scritm name="OnTimerCheckRecvTime" changed="29.05.2024 15:55:05" author="DN-ARTHUR/arthur.stunf">
<![CDATA[///////////////////////////////////////////////////////////////////////////////////
//
//  script OnTimerCheckRecvTime
//
//  revision 3.27.0      2024-04-08
//  author:  rmj         GEFASOFT GMBH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
///////////////////////////////////////////////////////////////////////////////////

string szEvtTime 
long nSysTime

// get current eventtime
szEvtTime := EventTimeStr('YYYY-MM-DD HH:mm:ss')
nSysTime  := TimeToL('YYYY-MM-DD HH:mm:ss', szEvtTime)


ConnectionCheckRecvTime(string _szName, string _szfullname, int _nLevel)
begin

	string szCon, szLastRead_Node, szConStatus_Node, szErrorTxt
	long nLastRead, nConStatus, nDelay


	if (_nLevel = 1) and (_szName = 'LastRead') then

		szCon := strtoken(_szFullname, '.', 3)

		szLastRead_Node := 'Value.Hmi_20.'+szCon +'.LastRead'

		if not IsVar(szLastRead_Node) then
			return
		endif

		nLastRead := IntVar(szLastRead_Node)
		if nLastRead = 0 then
			return
		endif

		szConStatus_Node := 'Value.Hmi_20.'+szCon +'.ConStatus'

		if not IsVar(szConStatus_Node) then
			return
		endif

		nConStatus := IntVar(szConStatus_Node)

		// get default-delay of connection in case of no new data send from PLC
		nDelay := Value.System.TimeoutPlcCon + 1

		// connection-error:
		// no change of lifebit and no new data since > i seconds
		if (nLastRead < (nSysTime - nDelay)) then

			if nConStatus = 0 then
				IntVar(szConStatus_Node) := -3

				szErrorTxt := 'connection error: no data from plc'
				debug(szCon + ' ' + szErrorTxt)
				Script.SapientEngine.Connections.Connect_State('#' + szCon, -3, szErrorTxt, 0)
			endif
		else

			if nConStatus <> 0 then
				IntVar(szConStatus_Node) := 0

				szErrorTxt := 'connection ok'
				debug(szCon + ' ' + szErrorTxt)
				Script.SapientEngine.Connections.Connect_State('#' + szCon, 0, szErrorTxt, 0)
			endif

		endif

	endif

end


ScanNodeRec('Value.Hmi_20', ConnectionCheckRecvTime, 1)

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
<folder name="Hmi_20">
<folder name="Config">
<scritm name="AgLinkS7Delete" fmt="String" params="_szCon,String;" created="17.04.2024 16:21:39" changed="06.05.2024 16:50:59" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for AgLinkS7Delete
string szConfig_Node, szConfig

xml xmlconfig

xmlconfig.WriteBegin('')

xmlconfig.WriteStartTag('leondas')
xmlconfig.WriteStartTag('driver')
xmlconfig.WriteString('name', 'AGLINK')

xmlconfig.WriteStartTag('connection')
xmlconfig.WriteString('name', _szCon)
xmlconfig.WriteString('addrtype', 'S7')

xmlconfig.WriteEndTag			//('connection')
xmlconfig.WriteEndTag			//('driver')
xmlconfig.WriteEndTag			//('leondas')

szConfig := xmlconfig.WriteGetStr

bool ok
ok := xmlconfig.xmlcheck(szConfig)

if not ok then
	return ''
endif

return szConfig



]]>
</scritm>
<scritm name="AgLinkTiaDelete" fmt="String" params="_szCon,String;" created="17.04.2024 16:21:39" changed="07.05.2024 10:36:50" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for AgLinkTiaDelete
string szConfig_Node, szConfig

xml xmlconfig

xmlconfig.WriteBegin('')

xmlconfig.WriteStartTag('gtops')

xmlconfig.WriteStartTag('connection')
xmlconfig.WriteString('name', _szCon)

xmlconfig.WriteEndTag			//('connection')
xmlconfig.WriteEndTag			//('gtops')

szConfig := xmlconfig.WriteGetStr

bool ok
ok := xmlconfig.xmlcheck(szConfig)

if not ok then
	return ''
endif

return szConfig



]]>
</scritm>
<scritm name="DelConnection" params="_szCon,String;" created="29.04.2024 15:44:38" changed="17.07.2024 11:31:42" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for DelConnection

string szModule, szModule_Node, szConfig, szModuleType_Node
int nModuleType, nRes

szModule_Node := 'Value.Hmi_20.'+_szCon+'.Module'

if not IsVar(szModule_Node) then
	debug(_szCon+' without module config -> try to delete later')
  return 
endif

szModule := StrVar(szModule_Node)

if StrLen(szModule) = 0 then
	debug(_szCon+' with empty module valid config -> try to delete later')
	return
endif


szModuleType_Node := 'Value.Hmi_20.'+_szCon+'.ModuleType'

if not IsVar(szModuleType_Node) then
	debug(_szCon+' without module type -> try to delete later')
  return 
endif

nModuleType := IntVar(szModuleType_Node)

switch nModuleType 
	case 1:
		szConfig := Script.Hmi_20.Config.AgLinkS7Delete(_szCon)
		break
	case 2:
		szConfig := Script.Hmi_20.Config.AgLinkTiaDelete(_szCon)
		break
	case 3:
		szConfig := Script.Hmi_20.Config.OpcDaDelete(_szCon)
		break
	case 4:
		szConfig := Script.Hmi_20.Config.OpcUaDelete(_szCon)
		break
	default:
	return
end

if strlen(szConfig) <> 0 then
	Connector.Otc_Connector.Publish(szModule+'/Command/SetCfg', '{"action" : "delete", "format" : "xml", "data" : "'+strtojson(szConfig)+'"}', 2)
endif

nRes := DeleteNode('Value.Hmi_20.'+_szCon)




]]>
</scritm>
<scritm name="GetModuleType" fmt="Int" params="_nConType,Int;" created="29.04.2024 14:01:40" changed="17.07.2024 11:01:14" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for GetModuleType


if _nConType = Value.ConnectionTypes.PlcS7_1 then
	return 1
endif
if _nConType = Value.ConnectionTypes.PlcS7_2 then
	return 1
endif
if _nConType = Value.ConnectionTypes.PlcS7_3 then
	return 1
endif
if _nConType = Value.ConnectionTypes.PlcS7_4 then
	return 1
endif

if _nConType = Value.ConnectionTypes.TIA_1 then
	return 2
endif
if _nConType = Value.ConnectionTypes.TIA_2 then
	return 2
endif

if _nConType = Value.ConnectionTypes.OpcUaPlc then
	return 4
endif

if _nConType = Value.ConnectionTypes.OpcDaPlc then
	return 3
endif

if _nConType = Value.ConnectionTypes.TcpMc then
	return 0
endif


return 0
]]>
</scritm>
<scritm name="OpcDaDelete" fmt="String" params="_szCon,String;" created="17.04.2024 16:21:39" changed="14.05.2024 09:55:14" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for OpcDaDelete
string szConfig_Node, szConfig

xml xmlconfig

xmlconfig.WriteBegin('')

xmlconfig.WriteStartTag('smcopcda')
xmlconfig.WriteStartTag('opcsrv')

xmlconfig.WriteStartTag('opcgrp')
xmlconfig.WriteString('name', _szCon)

xmlconfig.WriteEndTag			//opcgrp
xmlconfig.WriteEndTag			//opcsrv
xmlconfig.WriteEndTag			//smcopcda

szConfig := xmlconfig.WriteGetStr

bool ok
ok := xmlconfig.xmlcheck(szConfig)

if not ok then
	return ''
endif

return szConfig



]]>
</scritm>
<scritm name="OpcUaDelete" fmt="String" params="_szCon,String;" created="17.04.2024 16:21:39" changed="17.07.2024 11:32:59" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for OpcUaDelete
string szConfig_Node, szConfig

xml xmlconfig

xmlconfig.WriteBegin('')

xmlconfig.WriteStartTag('otcopcua')
xmlconfig.WriteStartTag('opccon')

xmlconfig.WriteString('name', _szCon)

xmlconfig.WriteEndTag			//opccon
xmlconfig.WriteEndTag			//otcopcua

szConfig := xmlconfig.WriteGetStr

bool ok
ok := xmlconfig.xmlcheck(szConfig)

if not ok then
	return ''
endif

return szConfig



]]>
</scritm>
<scritm name="SetCfg" params="_connection,String;" created="17.04.2024 15:39:52" origin="Library.User.Hmi.ReadCfg_AgLinkS7.#2_Publish_XmlConfig" changed="05.11.2024 05:53:07" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for SetCfg
string szConfig, szModule, szVarList, szConfig_Node, szModule_Node, szVarList_Node

szConfig_Node := 'Value.Hmi_20.'+_connection+'.Config'

if not IsVar(szConfig_Node) then
	debug(_connection+' without valid config -> try to connect later')
  return 
endif

szConfig := StrVar(szConfig_Node)

if StrLen(szConfig) = 0 then
	debug(_connection+' without valid config -> try to connect later')
	return
endif


szModule_Node := 'Value.Hmi_20.'+_connection+'.Module'

if not IsVar(szModule_Node) then
	debug(_connection+' without module config -> try to connect later')
  return 
endif

szModule := StrVar(szModule_Node)

if StrLen(szModule) = 0 then
	debug(_connection+' with empty module valid config -> try to connect later')
	return
endif


Connector.Otc_Connector.Publish(szModule+'/Command/SetCfg', '{"action" : "renew", "format" : "xml", "connect": 2, "selective" : true, "data" : "'+strtojson(szConfig)+'"}', 2)

debug(_connection+' - config set')


Script.Hmi_20.Config.SetMapConfig(_connection)





]]>
</scritm>
<scritm name="SetMapConfig" params="_szCon,String;" created="17.04.2024 15:39:52" origin="Library.User.Hmi.ReadCfg_AgLinkS7.#3_Publish_SetMapConfig" changed="06.11.2024 15:10:50" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for SetMapConfig

string szCommand, szVarList, szModule, szVarList_Node, szImportSet_Node, szModule_Node, szModuleType_Node, szConName
int nModuleType

debug('################################# SetMapConfig ########################')

szImportSet_Node := 'Value.Hmi_20.'+_szCon+'.ImportSet'

if not IsVar(szImportSet_Node) or not BitVar(szImportSet_Node) then
	debug('error 1')
	return
endif


szVarList_Node := 'Value.Hmi_20.'+_szCon+'.VarList'

if not IsVar(szVarList_Node) then
	debug('error 2')
	return
endif

szVarList := StrVar(szVarList_Node)	
if StrLen(szVarList) = 0 then
	debug('error 3')
	return
endif

szModule_Node := 'Value.Hmi_20.'+_szCon+'.Module'

if not IsVar(szModule_Node) then
	debug('error 4')
  return 
endif

szModule := StrVar(szModule_Node)

if StrLen(szModule) = 0 then
	debug('error 5')
	return
endif


szModuleType_Node := 'Value.Hmi_20.'+_szCon+'.ModuleType'
if IsVar(szModuleType_Node) then
	nModuleType := IntVar(szModuleType_Node)
endif


if nModuleType = 3 then
	szConName := 'grp'
else
	szConName := 'con'
endif


szCommand := '{"action" : "replace", "format" : "map", "connect": 2, "selective" : true, "activate": true, "exclusive": true, "data" : {"'+szConName+'" : "'+_szCon+'", "var" : '+szVarList+'}}'

debug(szCommand)


Connector.Otc_Connector.Publish(szModule+'/Command/SetCfg', szCommand, 2)


//Connector.SMC_LOCAL.Publish(szModule+'/Command/Activate', '{"'+szConName+'": "'+_szCon+'", "var": "#"}', 2)

]]>
</scritm>
<scritm name="StartConnection" params="_szCon,String;" created="13.08.2025 14:36:22" changed="13.08.2025 14:37:50" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for StartConnection


debug('Start connection ' + _szCon)

Script.Hmi_20.Config.StopScanThread(_szCon)
Script.Hmi_20.Config.StartScanThread(_szCon)
Script.Hmi_20.Config.SetCfg(_szCon)

]]>
</scritm>
<scritm name="StartScanThread" params="_szCon,String;" created="17.04.2024 15:39:52" origin="Library.User.Hmi.ReadCfg_AgLinkS7.#1_Publish_StartScanThread" changed="12.08.2025 21:54:48" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for StartScanThread

string szCommand, szParameter, szDir, szBackup, szColumns, szTypedefs, szModule, szThread_Node, szConfig_Node, szModule_Node

szThread_Node := 'Value.Hmi_20.'+_szCon+'.Thread'

if not IsVar(szThread_Node) then
	debug(szThread_Node+'  does not exist')
	return 
endif

szDir := ResolveDir(Value.System.ImportDir)
if substr(szDir, strlen(szDir) - 1 , 1) <> '\\' then
	szDir := szDir + '\\'
endif

szDir := strtojson(szDir + _szCon + '.csv')

szBackup := strtojson(ResolveDir(Value.System.BackupDir))


szColumns := '['
              '{"column": "symbol", "name": "LegatoSym"}, '
              '{"column": "address", "name": "PlcSym"}, '
              '{"column": "plctype", "name": "PlcType"}, '
              '{"column": "mdxtype", "name": "LegatoType"}, '
              '{"column": "writeable", "name": "WriteToPLC"}, '
              '{"column": "scrtomdx", "name": "ScrToHMI"}, '
              '{"column": "subcon", "name": "PlcGroup"}'
             ']'


szTypedefs := '['
               '{"type_extern": "SYNC_INT", "type_intern": "INT", "permanent" : true }, '
               '{"type_extern": "GROUP", "type_intern": "subcon"}, '
               '{"type_extern": "JSON", "type_intern": null }'
              ']'



szParameter := '"dir" : "'+szDir+'", "backup" : "'+szBackup+'", "columns" : '+szColumns+', "typedefs" : '+szTypedefs

szCommand := '{"id" : '+ltostr(IntVar(szThread_Node), 10)+', "format" : "csv", '+szParameter+'}'


szModule_Node := 'Value.Hmi_20.'+_szCon+'.Module'

if not IsVar(szModule_Node) then
	debug(_szCon+' without module config -> try to connect later')
  return 
endif

szModule := StrVar(szModule_Node)

if StrLen(szModule) = 0 then
	debug(_szCon+' with empty module valid config -> try to connect later')
	return
endif


debug('ScanCfg:'+szCommand)


Connector.Otc_Connector.Publish(szModule+'/Command/ScanCfg', szCommand, 2)


]]>
</scritm>
<scritm name="StopScanThread" params="_szCon,String;" created="17.04.2024 15:39:52" origin="Library.User.Hmi.ReadCfg_AgLinkS7.#1_Publish_StartScanThread" changed="22.05.2024 12:38:27" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for StopScanThread

string szCommand, szModule, szThread_Node, szModule_Node, szImportSet_Node

szThread_Node := 'Value.Hmi_20.'+_szCon+'.Thread'

if not IsVar(szThread_Node) then
	debug(szThread_Node+'  does not exist')
	return 
endif

szImportSet_Node := 'Value.Hmi_20.'+_szCon+'.ImportSet'
if IsVar(szImportSet_Node) then
	BitVar(szImportSet_Node) := false
endif

szCommand := '{"id" : '+ltostr(IntVar(szThread_Node), 10)+', "format" : "del"}'


szModule_Node := 'Value.Hmi_20.'+_szCon+'.Module'

if not IsVar(szModule_Node) then
	debug(_szCon+' without module config -> try to connect later')
  return 
endif

szModule := StrVar(szModule_Node)

if StrLen(szModule) = 0 then
	debug(_szCon+' with empty module valid config -> try to connect later')
	return
endif


Connector.Otc_Connector.Publish(szModule+'/Command/ScanCfg', szCommand, 2)


]]>
</scritm>
</folder>
<folder name="Create">
<scritm name="CreateBoolVal" params="Path,String;Name,String;Val,Bool;" created="24.04.2024 16:21:31" origin="Library.User.Smc_SetCfg.Create.CreateBoolVal" changed="24.04.2024 16:27:44" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Scriptdatei für CreateBoolVal

bool b
string valstr

if Val then
	valstr := '1'
else
	valstr := '0'
endif

if not IsVar(Path+'.'+Name) then
	b := CreateNodeTemp(Path, '<memitm name="'+Name+'" flags="275" fmt="Bool" init="'+valstr+'">\r\n</memitm>\r\n')
endif


]]>
</scritm>
<scritm name="CreateConNodes" params="_szCon,String;_szModule,String;_nModuleType,Int;_nId,Int;" created="24.04.2024 16:20:22" changed="08.05.2024 13:56:28" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for CreateConNodes

string szFolder, szThread_Node, szModule_Node, szId_Node, szVarList_Node
int nThreadId


nThreadId := IntVar('Value.Hmi_20.NextThreadId') + 1
IntVar('Value.Hmi_20.NextThreadId') := nThreadId


Script.Hmi_20.Create.CreateFolder('Value.Hmi_20', _szCon)

szFolder := 'Value.Hmi_20.'+ _szCon

Script.Hmi_20.Create.CreateStrVal(szFolder, 'Config', '')
Script.Hmi_20.Create.CreateBoolVal(szFolder, 'ConfigSet', false)
Script.Hmi_20.Create.CreateBoolVal(szFolder, 'ImportSet', false)
Script.Hmi_20.Create.CreateStrVal(szFolder, 'Module', _szModule)
Script.Hmi_20.Create.CreateIntVal(szFolder, 'ModuleType', _nModuleType)
Script.Hmi_20.Create.CreateIntVal(szFolder, 'Id', _nId)
Script.Hmi_20.Create.CreateIntVal(szFolder, 'Thread', nThreadId)
Script.Hmi_20.Create.CreateStrVal(szFolder, 'VarList', '[]')
Script.Hmi_20.Create.CreateIntVal(szFolder, 'LastRead', 0)
Script.Hmi_20.Create.CreateIntVal(szFolder, 'ConStatus', -1)



]]>
</scritm>
<scritm name="CreateFolder" params="Path,String;Name,String;" created="24.04.2024 16:21:31" origin="Library.User.Smc_SetCfg.Create.CreateFolder" changed="24.04.2024 16:28:12" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Scriptdatei für CreateFolder

bool b

if not IsVar(Path+'.'+Name) then
	b := CreateNodeTemp(Path, '<folder name="'+Name+'" >\r\n</folder>\r\n')
endif


]]>
</scritm>
<scritm name="CreateHmiNodes" created="24.04.2024 16:20:22" changed="06.05.2024 14:31:15" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for CreateHmiNodes

Script.Hmi_20.Create.CreateFolder('Value', 'Hmi_20')
Script.Hmi_20.Create.CreateIntVal('Value.Hmi_20', 'NextThreadId', 0)

]]>
</scritm>
<scritm name="CreateIntVal" params="Path,String;Name,String;Val,Int;" created="24.04.2024 16:21:31" origin="Library.User.Smc_SetCfg.Create.CreateIntVal" changed="24.04.2024 16:29:03" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Scriptdatei für CreateIntVal

bool b

if not IsVar(Path+'.'+Name) then
	b := CreateNodeTemp(Path, '<memitm name="'+Name+'" flags="275" fmt="Int" init="'+ltostr(Val,10)+'">\r\n</memitm>\r\n')
endif


]]>
</scritm>
<scritm name="CreateStrVal" params="Path,String;Name,String;Val,String;" created="24.04.2024 16:21:31" origin="Library.User.Smc_SetCfg.Create.CreateIntVal" changed="24.04.2024 16:27:04" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Scriptdatei für CreateStrVal

bool b

if not IsVar(Path+'.'+Name) then
	b := CreateNodeTemp(Path, '<memitm name="'+Name+'" flags="275" fmt="String" init="'+Val+'">\r\n</memitm>\r\n')
endif


]]>
</scritm>
</folder>
<folder name="GenericScripts">
<scritm name="CycleRead" params="_szTopic,String;_szMessage,String;" created="22.04.2024 15:34:53" changed="06.05.2024 15:39:25" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for CycleRead

debug(@ScriptFullname)

string szCon, szLastRead_Node

szCon := strtoken(_szTopic, '/', 3)

szLastRead_Node := 'Value.Hmi_20.' + szCon + '.LastRead'
if IsVar(szLastRead_Node) then
	IntVar(szLastRead_Node) := TimeInt
endif
]]>
</scritm>
<scritm name="DropDown2FieldAutoIndex" params="_szTopic,String;_szMessage,String;_szName,String;_szName2,String;_szSymbol,String;" created="22.04.2024 15:34:53" changed="11.08.2025 16:15:59" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for DropDown2FieldAutoIndex

debug(@ScriptFullname)

string szValue, szId, szMethod, szParams, szCon, szEvtTime, szKeylist, szValue2
bool init
long nMethod
int nSize, i, pos, nValue, nValue2, nId
json js, js1, js2, js3

js.init(_szMessage)

if not js.Valid then
  Debug('_szMessage is invalid JSON!')
	return 
endif


if not js.FindEx('vars', array, js1) then
  debug('"vars" missing or wrong type!')
	return 
endif


FindItem()
begin
	if not js2.findex('id', string, js3) then
		return
  endif

	szId := js3.string

	pos := strpos(szId,'[')
  if pos < 0 then
		return
	endif
	szId := strdel(szId, 0, pos+1)
	pos := strpos(szId,']')
  if pos < 0 then
		return
	endif

	nId := StrToL(SubStr(szId, 0, pos))


	szId := js3.string

	if strpos(szId, _szName) >= 0 then

		if js2.findex('val', string, js3) then
			szValue := js3.string
			nValue := nId
			return
		endif

	endif

	if strpos(szId, _szName2) >= 0 then

		if js2.findex('val', string, js3) then
			szValue2 := js3.string
			nValue2 := nId
			return
		endif

	endif
end


nSize := js1.Size

init := false
i := 0

nValue2 := -1
nValue := -1
szValue := ''
szValue2 := ''

js1.ptr(js2)
while i < nSize do

	FindItem

	if (nValue <> -1) and (nValue2 = nValue) then

		if ((szValue <> '') and (StrPos(StrUpper(szValue), 'NULL') < 0)) then
	
			if init then
				szKeylist := szKeylist + ','
			else
				init := true
			endif

			if szValue2 <> '' then
				szValue := szValue + '|' + szValue2
			endif

			szKeylist := szKeylist + '{"key":'+LToStr(nValue, 10)+',"displayValue":"'+szValue+'"}'

		endif
	
		nValue2 := -1
		nValue := -1
		szValue := ''
		szValue2 := ''

	endif

	js2.next(js2)
	i := i + 1
enddo

if StrLen(szKeylist) > 0 then
	szKeylist := '[' + szKeylist + ']'
else
  szKeylist := '[{"key":1 ,"displayValue":"Kein Array-Wert vorhanden!"}]'
endif


szCon := strtoken(_szTopic, '/', 4)

szValue := AnsiToUtf8(szKeylist)
szValue := StrToJson(szValue)

szEvtTime := Script.Utils.UtcTime.GetCurTimeAsUtcTimeStamp


// get current systemtime
nMethod   := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId      := printf('hmi_in_%lu', nMethod)
szMethod  := '/de/gefasoft/sapient/db/values/Current/hmi_in'
szParams := '{'                            
              '"VALUES": ['
                '{'
                  '"val": "'               + szValue      + '", ' 
                  '"connection_symbol": "' + '#' +  szCon + '", ' 
                  '"value_address": "'     + _szSymbol    + '"'   
                '}'                        
              '],'                         
              '"TIME_STAMP":"'             + szEvtTime    + '"'
            '}'

// send data to SE
scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)


debug(szParams)




]]>
</scritm>
<scritm name="DropDownAutoIndex" params="_szTopic,String;_szMessage,String;_szName,String;_szSymbol,String;" created="22.04.2024 15:34:53" changed="11.08.2025 16:15:46" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for DropDownAutoIndex

debug(@ScriptFullname)

string szValue, szId, szMethod, szParams, szCon, szEvtTime, szKeylist, szKey
bool init
long nMethod
int nSize, i, pos
json js, js1, js2, js3

js.init(_szMessage)

if not js.Valid then
  Debug('_szMessage is invalid JSON!')
	return 
endif


if not js.FindEx('vars', array, js1) then
  debug('"vars" missing or wrong type!')
	return 
endif


bool FindKey()
begin
	if not js2.findex('id', string, js3) then
		return false
  endif

	szId := js3.string

	if strpos(szId, _szName) < 0 then
		return false
	endif

	pos := strpos(szId,'[')
  if pos < 0 then
		return false
	endif
	szId := strdel(szId, 0, pos+1)
	pos := strpos(szId,']')
  if pos < 0 then
		return false
	endif

	szKey := substr(szId, 0, pos)
	return true
end


nSize := js1.Size

init := false
i := 0

js1.ptr(js2)
while i < nSize do

	szValue := ''

	if FindKey then
		if js2.findex('val', string, js3) then
			szValue := js3.string
		endif
	endif

	if ((szValue <> '') and (StrPos(StrUpper(szValue), 'NULL') < 0)) then
	
		if init then
			szKeylist := szKeylist + ','
		else
			init := true
		endif

		szKeylist := szKeylist + '{"key":'+szKey+',"displayValue":"'+szValue+'"}'

	endif

	js2.next(js2)
	i := i + 1
enddo

if StrLen(szKeylist) > 0 then
	szKeylist := '[' + szKeylist + ']'
else
  szKeylist := '[{"key":1 ,"displayValue":"Kein Array-Wert vorhanden!"}]'
endif


szCon := strtoken(_szTopic, '/', 4)

szValue := AnsiToUtf8(szKeylist)
szValue := StrToJson(szValue)

szEvtTime := Script.Utils.UtcTime.GetCurTimeAsUtcTimeStamp


// get current systemtime
nMethod   := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId      := printf('hmi_in_%lu', nMethod)
szMethod  := '/de/gefasoft/sapient/db/values/Current/hmi_in'
szParams := '{'                            
              '"VALUES": ['
                '{'
                  '"val": "'               + szValue      + '", ' 
                  '"connection_symbol": "' + '#' +  szCon + '", ' 
                  '"value_address": "'     + _szSymbol    + '"'   
                '}'                        
              '],'                         
              '"TIME_STAMP":"'             + szEvtTime    + '"'
            '}'

// send data to SE
scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)


debug(szParams)





 

]]>
</scritm>
<scritm name="DropDownUniversal" params="_szTopic,String;_szMessage,String;_szName,String;_szIndex,String;_szSymbol,String;" created="22.04.2024 15:34:53" changed="11.08.2025 16:15:35" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for DropDownUniversal

debug(@ScriptFullname)

string szValue, szId, szMethod, szParams, szCon, szEvtTime, szKeylist, szKey
bool init
long nMethod
int nSize, i, pos, nValue, nKey, nId
json js, js1, js2, js3

js.init(_szMessage)

if not js.Valid then
  Debug('_szMessage is invalid JSON!')
	return 
endif


if not js.FindEx('vars', array, js1) then
  debug('"vars" missing or wrong type!')
	return 
endif


FindItem()
begin
	if not js2.findex('id', string, js3) then
		return
  endif

	szId := js3.string

	pos := strpos(szId,'[')
  if pos < 0 then
		return
	endif
	szId := strdel(szId, 0, pos+1)
	pos := strpos(szId,']')
  if pos < 0 then
		return
	endif

	nId := StrToL(SubStr(szId, 0, pos))


	szId := js3.string

	if strpos(szId, _szName) >= 0 then

		if js2.findex('val', string, js3) then
			szValue := js3.string
			nValue := nId
			return
		endif

	endif

	if strpos(szId, _szIndex) >= 0 then

		if js2.findex('val', int, js3) then
			szKey := LToStr(js3.int, 10)
			nKey := nId
			return
		endif

	endif
end


nSize := js1.Size

init := false
i := 0

nKey := -1
nValue := -1
szValue := ''

js1.ptr(js2)
while i < nSize do

	FindItem

	if (nKey <> -1) and (nKey = nValue) then

		if ((szValue <> '') and (StrPos(StrUpper(szValue), 'NULL') < 0)) then
	
			if init then
				szKeylist := szKeylist + ','
			else
				init := true
			endif

			szKeylist := szKeylist + '{"key":'+szKey+',"displayValue":"'+szValue+'"}'

		endif
	
		nKey := -1
		nValue := -1
		szValue := ''

	endif

	js2.next(js2)
	i := i + 1
enddo

if StrLen(szKeylist) > 0 then
	szKeylist := '[' + szKeylist + ']'
else
  szKeylist := '[{"key":1 ,"displayValue":"Kein Array-Wert vorhanden!"}]'
endif


szCon := strtoken(_szTopic, '/', 4)

szValue := AnsiToUtf8(szKeylist)
szValue := StrToJson(szValue)

szEvtTime := Script.Utils.UtcTime.GetCurTimeAsUtcTimeStamp


// get current systemtime
nMethod   := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId      := printf('hmi_in_%lu', nMethod)
szMethod  := '/de/gefasoft/sapient/db/values/Current/hmi_in'
szParams := '{'                            
              '"VALUES": ['
                '{'
                  '"val": "'               + szValue      + '", ' 
                  '"connection_symbol": "' + '#' +  szCon + '", ' 
                  '"value_address": "'     + _szSymbol    + '"'   
                '}'                        
              '],'                         
              '"TIME_STAMP":"'             + szEvtTime    + '"'
            '}'

// send data to SE
scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)


debug(szParams)




]]>
</scritm>
<scritm name="Sachnummer" params="_szTopic,String;_szMessage,String;_szName,String;" created="22.04.2024 15:34:53" changed="11.08.2025 16:15:25" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for Sachnummer

debug(@ScriptFullname)

string szValue, szId, szMethod, szParams, szVar, szCon, szEvtTime, szKeylist, szKey
bool init
long nMethod
int nSize, i, pos
json js, js1, js2, js3

js.init(_szMessage)

if not js.Valid then
  Debug('_szMessage is invalid JSON!')
	return 
endif


if not js.FindEx('vars', array, js1) then
  debug('"vars" missing or wrong type!')
	return 
endif

nSize := js1.Size

init := false
i := 0

js1.ptr(js2)
szKeylist := '['
while i < nSize do
	if init then
		szKeylist := szKeylist + ','
  else
		init := true
	endif

	if js2.findex('id', string, js3) then
		szId := js3.string
		pos := strpos(szId,'[')
    if pos < 0 then
			return
		endif
		szId := strdel(szId, 0, pos+1)
		pos := strpos(szId,']')
    if pos < 0 then
			return
		endif
		szKey := substr(szId, 0, pos)
	else
		return
  endif

	if js2.findex('val', string, js3) then
		szValue := js3.string
	else
		return
  endif

  szKeylist := szKeylist + '{"key":'+szKey+',"displayValue":"'+szValue+'"}'
	js2.next(js2)
	i := i + 1
enddo
szKeylist := szKeylist + ']'


szCon := strtoken(_szTopic, '/', 4)

szValue := AnsiToUtf8(szKeylist)
szValue := StrToJson(szValue)

szVar := _szName
szEvtTime := Script.Utils.UtcTime.GetCurTimeAsUtcTimeStamp


// get current systemtime
nMethod   := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId      := printf('hmi_in_%lu', nMethod)
szMethod  := '/de/gefasoft/sapient/db/values/Current/hmi_in'
szParams := '{'                            +
              '"VALUES": ['                +
                '{'                        +
                  '"val": "'               + szValue       + '", ' +
                  '"connection_symbol": "' + '#' +  szCon + '", ' +
                  '"value_address": "'     + szVar         + '"'   +
                '}'                        +
              '],'                         +
              '"TIME_STAMP":"'             + szEvtTime    + '"'   +
            '}'

// send data to SE
scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)


debug(szParams)





 

]]>
</scritm>
<scritm name="StringMessage" silent="true" params="_szTopic,String;_szMessage,String;" created="22.05.2024 23:11:51" origin="Library.User.Smc_SetCfg.OnRecvMessage" changed="22.05.2024 23:40:09" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script OnRecvMessage
//
//  revision 3.27.0        2024-04-08
//  author: rmj            GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0      2024-04-08
//      first release
//
//////////////////////////////////////////////////////////////////////////////////
string szEvtTime, szCon, szVarName, szValue
long nMsgClass, nMsgType, nExtCode
json js, js1

szCon := strtoken(_szTopic, '/', 3)
szVarname := strtoken(_szTopic, '/', 4)


js.init(_szMessage)		
if not js.findex('value', string, js1) then
	return
endif

szValue := js1.string


// get current system-time
szEvtTime := Script.Utils.UtcTime.GetCurTimeAsUtcTimeStamp

// get default message-classes and -types from OPC-DA-item
// use "DefaultClassWarning" as default-class in Legato DB
nMsgClass := Value.Messages.DefaultClassWarning
nMsgType  := 1

if (StrPos(szVarname, 'tErrors') >= 0) then
  nMsgClass := Value.Messages.DefaultClassAlert
  nMsgType  := Value.Messages.DefaultTypeAlert
endif

if (StrPos(szVarname, 'tWarnings') >= 0) then
  nMsgClass := Value.Messages.DefaultClassWarning
  nMsgType  := Value.Messages.DefaultTypeWarning
endif

if (StrPos(szVarname, 'tInfos') >= 0) then
  nMsgClass := Value.Messages.DefaultClassInfo
  nMsgType  := Value.Messages.DefaultTypeInfo
endif

// get ext-code (message-number) from message-text
nExtCode := Script.Hmi_20.Messages.GetMsgNumFromText(szValue)


// buffer message in InMemory-table, check if message = coming or leaving
Script.Hmi_20.Messages.AddMessageByIndex(
                                         szCon,
                                         szVarname,
                                         nExtCode,
                                         '',
                                         nMsgClass,
                                         nMsgType,
                                         szValue
                                         )
]]>
</scritm>
</folder>
<folder name="Messages">
<scritm name="AddMessageByIndex" silent="true" params="_szCon,String;_szIndex,String;_nExtCode,Int;_szOperand,String;_nClass,Int;_nType,Int;_szMsgText,String;" created="22.05.2024 23:06:16" origin="Library.User.Smc_SetCfg.AddMessageByIndex" changed="22.05.2024 23:08:37" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script AddMessageByIndex
//
//  revision 3.27.0      2024-04-08
//  author: rmj          GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
//////////////////////////////////////////////////////////////////////////////////
string szTablename, szFormattedName, szOperand, szMsgText, szEvtTime
long   nExtCode, nClass
dbrec  hRec
dbtbl  hTbl

szTablename := '$MEM/MESSAGES_'  + _szCon + '.DBF'

if (hTbl.open(szTablename)) then
  hTbl.bufopen(hRec)

  // get current system-time
  szEvtTime := Script.Utils.UtcTime.GetCurTimeAsUtcTimeStamp

  // table contains variable = index -> update value
  // if index not exists -> insert new row
  szFormattedName := printf('%-255s', _szIndex)
  if (hTbl.GetStrKey(hRec, 1, szFormattedName)) then
    // get old message-data
    nExtCode  := hRec.long(2)

    // empty message or message with message-text
    if (nExtCode = -1) then
      // set new message = comming
      if (_szMsgText <> '') then
        Script.SapientEngine.Alarms.Alarm_Coming(
                                                 '#' + _szCon,
                                                 LToStr(_nExtCode,10),
                                                 _szOperand,
                                                 LToStr(_nClass,10),
                                                 LToStr(_nType,10),
                                                 _szMsgText,
                                                 szEvtTime
                                                )
      endif
    else
      szOperand := StrTrim(hrec.ascii(4))

      // set old message = leaving
      Script.SapientEngine.Alarms.Alarm_Leaving(
                                                '#' + _szCon,
                                                LToStr(nExtCode,10),
                                                szOperand,
                                                szEvtTime
                                               )

      // compare old with new message-text: old and new text are different
      // -> set new message = comming
      if (_szMsgText <> '') then
        szMsgText := SubStr(hrec.ascii(6), 0, hRec.long(5))

        if (_szMsgText <> szMsgText) then
          Script.SapientEngine.Alarms.Alarm_Coming(
                                                   '#' + _szCon,
                                                   LToStr(_nExtCode,10),
                                                   _szOperand,
                                                   LToStr(_nClass,10),
                                                   LToStr(_nType,10),
                                                   _szMsgText,
                                                   szEvtTime
                                                  )
        endif
      endif
    endif

    // save new message-data
    hrec.ascii(1) := _szIndex            // index e.g. variable-symbol
    hRec.long(2)  := _nExtCode           // message-number
    hRec.long(3)  := _nClass             // message-class
    hrec.ascii(4) := _szOperand          // operand
    hRec.long(5)  := StrLen(_szMsgText)  // length of message-text
    hrec.ascii(6) := _szMsgText          // message-text
    hRec.long(7)  := _nType              // message-type
    hTbl.update(hRec)                    // update record
  else
    // set new message = comming if message contains message-text
    if (_szMsgText <> '') then
      Script.SapientEngine.Alarms.Alarm_Coming(
                                               '#' + _szCon,
                                               LToStr(_nExtCode,10),
                                               _szOperand,
                                               LToStr(_nClass,10),
                                               LToStr(_nType,10),
                                               _szMsgText,
                                               szEvtTime
                                              )
    endif

    hrec.ascii(1) := _szIndex            // index e.g. variable-symbol
    hRec.long(2)  := _nExtCode           // message-number
    hRec.long(3)  := _nClass             // message-class
    hrec.ascii(4) := _szOperand          // operand
    hRec.long(5)  := StrLen(_szMsgText)  // length of message-text
    hrec.ascii(6) := _szMsgText          // message-text
    hRec.long(7)  := _nType              // message-type
    hTbl.append(hRec)                    // insert new record
  endif

  hRec.close
  hTbl.close
else
  debug('script ' + @SCRIPTFULLNAME + ' error open table:' + szTablename)
endif
]]>
</scritm>
<scritm name="CreateMessageTbl" params="_szCon,String;" created="22.05.2024 16:17:22" changed="22.05.2024 23:03:39" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for CreateMessageTbl

string szStructure, szTablename
dbtbl hTbl
bool fOk

szStructure := 'MsgIndex,C,255;'    // 1: varsymbol of messagetext
               'MsgExtCode,N,11;'   // 2: message-number of message
               'MsgClass,N,11;'     // 3: message-class (alert, message etc.)
               'MsgOperand,C,40;'   // 4: operand of message
               'MsgLen,N,11;'       // 5: length of message-text
               'MsgText,C,255;'     // 6: message-text
               'MsgType,N,11;'      // 7: message-type

szTablename := '$MEM/MESSAGES_' + _szCon + '.DBF'
 

debug('Create in memory table ' + szTablename)

if (hTbl.open(szTablename)) then
  debug(szTablename + ' already exists')
  hTbl.close  // close table
	return
endif

// create table
fOk := hTbl.create(szTablename, szStructure)
if (fOk) then
  debug(szTablename + ' sucessfully created')
	hTbl.resident  // make table resident in memory
else
  // table creation failed
  debug('create ' + szTablename+ ' failed')
endif
]]>
</scritm>
<scritm name="GetMsgNumFromText" silent="true" fmt="Int" params="_szMsgText,String;" created="22.05.2024 16:07:28" origin="Library.User.Smc_SetCfg.GetMsgNumFromText" changed="09.04.2024 09:11:12" author="PN-MARIO2/mario.j.rutar">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script GetMsgNumFromText
//
//  revision 3.27.0        2024-04-08
//  author: rmj            GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0      2024-04-08
//      first release
//
//////////////////////////////////////////////////////////////////////////////////
block  blkBuffer
string szData
long   nSize, nMsgNum, nLen, nPos

nMsgNum := -1  // default: empty text

// message-text contains data
if (_szMsgText <> '') then
  nSize     := StrLen(_szMsgText)
  blkBuffer := NewBlock(nSize)
  SetBlockStr(blkBuffer, 0, nSize, _szMsgText)

  szData  := StrTrim(BlockToStrHex(blkBuffer, 0, nSize))
  nLen    := StrLen(szData)
  nPos    := 0
  nMsgNum := 0

  while (nPos < nLen) do
    nMsgNum := nMsgNum + nPos + StrToLex(SubStr(szData, nPos, 2), 16)
    nPos    := nPos + 2
  enddo
endif

return nMsgNum
]]>
</scritm>
</folder>
<folder name="Publish">
<scritm name="ConnectStatus" params="_szTopic,String;_szMessage,String;" created="29.04.2024 08:07:29" changed="29.04.2024 13:50:23" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for ConnectStatus

string szCon, szErrorTxt
int pos, nState
json js, js1

//+/Values/<connection>/@ConnectStatus

szCon := strtoken(_szTopic, '/', 3)

if strpos(szCon, ':') >= 0 then
	return
endif

js.init(_szMessage)		
if js.findex('value', string, js1) then
	if js1.string = '0' then
		szErrorTxt := 'connection ok'
		nState := 0
	else if js1.string = '-1' then
			szErrorTxt := 'try to connect'
			nState := 1
		else
			szErrorTxt := 'connection error'
			nState := -2
		endif
	endif
  Script.SapientEngine.Connections.Connect_State('#' + szCon, nState, szErrorTxt, 0)


	if nState = 0 then
		Script.Hmi_20.Config.SetMapConfig(szCon)	
	endif

endif

]]>
</scritm>
<scritm name="ConsistentValues" params="_szTopic,String;_szMessage,String;" created="29.04.2024 08:07:29" changed="22.05.2024 09:09:25" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for ConsistentValues

json js, js_addon, js_script
string szScript, szApostrophe

js.init(_szMessage)

if js.findex('add_on', object, js_addon) then 
	if js_addon.findex('ScrToHMI', string, js_script) then

		szScript := js_script.string

		szApostrophe := '\\'+'\''

		szScript := StrReplace(szScript, '@Topic', '\''+StrReplace(_szTopic, '\'', szApostrophe)+'\'')
		szScript := StrReplace(szScript, '@Message', '\''+StrReplace(_szMessage, '\'', szApostrophe)+'\'')

		eval(szScript)

	endif
endif
]]>
</scritm>
<scritm name="DirectValues" params="_szTopic,String;_szMessage,String;" created="29.04.2024 08:07:29" changed="11.08.2025 14:36:41" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for DirectValues

string szId, szMethod, szParams
int nMethod

nMethod   := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId      := printf('hmi_in_%lu', nMethod)
szMethod  := '/de/gefasoft/sapient/db/values/Current/hmi_in'
szParams  := AnsiToUtf8(_szMessage)

// send data to SE
scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)

 ]]>
</scritm>
<scritm name="Import" params="_szTopic,String;_szMessage,String;" created="26.04.2024 15:21:14" changed="29.04.2024 13:50:11" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for Import

json js, js1
string szCon, szImportSet_Node

js.init(_szMessage)		
if js.findex('connection', string, js1) then
	szCon := js1.string
	debug(szCon+' imported -> try to connect')

	szImportSet_Node := 'Value.Hmi_20.'+szCon+'.ImportSet'
	if IsVar(szImportSet_Node) then
		BitVar(szImportSet_Node) := true
	endif

	Script.Hmi_20.Config.SetCfg(szCon)

endif

]]>
</scritm>
<scritm name="ModuleState" params="_szTopic,String;_szMessage,String;" created="26.04.2024 15:21:14" changed="13.08.2025 14:38:31" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for ModuleState

string szModule, szModulePath


ConnectionByModule(string _szname, string _szfullname, int _nlevel)
begin
	string szCon

	if (_nLevel = 1) and (_szName = 'Module') then

		if StrVar(_szFullname) = szModule then

			szCon := strtoken(_szFullname, '.', 3)
	
			debug('Connection ' +szCon+' belongs to Module '+szModule)

			Script.Hmi_20.Config.StartConnection(szCon)

		endif

	endif
end


szModule := strtoken(_szTopic, '/', 1)

szModulePath := 'Value.Hmi_20.ModuleState.' + szModule

if not IsVar(szModulePath) then
	Script.Hmi_20.Create.CreateFolder('Value', 'Hmi_20')
	Script.Hmi_20.Create.CreateFolder('Value.Hmi_20', 'ModuleState')
	Script.Hmi_20.Create.CreateStrVal('Value.Hmi_20.ModuleState', szModule, _szMessage)
else
	StrVar(szModulePath) := _szMessage
endif


if _szMessage = 'Running' then

	ScanNodeRec('Value.Hmi_20', ConnectionByModule, 1)

endif
]]>
</scritm>
<scritm name="OnPublish" params="_szTopic,String;_szFullname,String;_szName,String;_szMessage,String;" created="17.04.2024 17:27:30" changed="27.08.2024 10:30:57" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for OnPublish

string szCon, szValueName, szScript, szApostrophe
json js, js1, js2, js3
int nErr

//+/Values/<connection>/<var>

szCon := strtoken(_szTopic, '/', 3)
szValueName := strtoken(_szTopic, '/', 4)


js.init(_szMessage)		

if js.findex('write', int, js1) then

	nErr := js1.int

	if not js.findex('id', string, js1) then
		return
	endif

	if js1.string = 'dummy' then
    return
	endif


	szCon := strtoken(_szTopic, '/', 3)
	szValueName := strtoken(_szTopic, '/', 4)

	Script.Hmi_20.Result.Hmi_Write_Done(js1.string, szCon, szValueName, nErr)


endif

if js.findex('value', string, js1) then

	debug('connection: ' + szCon + ' symbol: ' + szValueName + ' value: ' + js1.string)

	if js.findex('add_on', object, js2) then 


		if js2.findex('ScrToHMI', string, js3) then

			szScript := js3.string

			szApostrophe := '\\'+'\''

			szScript := StrReplace(szScript, '@Topic', '\'' + StrReplace(_szTopic, '\'', szApostrophe) + '\'')
			szScript := StrReplace(szScript, '@Message', '\'' + StrToJson(_szMessage) + '\'')
 
			eval(szScript)

		endif
	endif

endif
]]>
</scritm>
</folder>
<folder name="Result">
<scritm name="Hmi_Write_Done" silent="true" params="_szWriteId,String;_szCon,String;_szVarname,String;_nErrorNum,Int;" created="06.05.2024 11:31:59" origin="Library.User.Smc_SetCfg.Hmi_Write_Done" changed="11.08.2025 14:36:27" author="DN-ARTHUR/arthur.stunf">
<![CDATA[///////////////////////////////////////////////////////////////////////////////////
//
//  script Hmi_Write_Done
//
//  revision 3.27.0      2024-04-08
//  author: rmj          GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0    2024-04-08
//      first release
//
///////////////////////////////////////////////////////////////////////////////////
string szLogMsg, szVar, szMethod, szParams, szErrorTxt, szId, szUser, szWriteId
long   nMethod
bool   fOkProd

// example-structure of hmi_write_done:
/*
  /de/gefasoft/sapient/db/values/Current/hmi_write_done
	{
    "write_id": "hmi_write_done_1234",
	  "connection_symbol": "#NumberOf",
	  "value_address": "TheBeast",
	  "error_code": 0,
	  "error_message": "write variable NumberOf.TheBeast with value 666 = OK"
	}
*/

// no valid write-id found -> break script
if (_szWriteId = '') then
  return
endif

// check if write-id has a valid value
nMethod := Script.SapientEngine.Common.GetHttpJsonPostUniqueId

// get fullname of variable
if (StrPos(_szVarname, _szCon) >= 0) then
  szVar := _szVarname
else
  szVar := _szCon + '.' + _szVarname
endif

switch (_nErrorNum)
  case 0:
    szErrorTxt := 'write var ' + szVar + ' = OK'
    break

  // ***
  // *   error-codes from SCC
  // ***
  case -100:
    szErrorTxt := 'error var ' + szVar + ' timestamp-difference +/- 5 seconds'
    break
  case -101:
    szErrorTxt := 'error var ' + szVar + ' = readonly'
    break
  case -102:
    szErrorTxt := 'error con ' + _szCon + ' of var ' + _szVarname + ' not found'
    break
  case -103:
    szErrorTxt := 'var ' + szVar + ' error -> var not found'
    break
  case -104:
    szErrorTxt := 'error var ' + szVar + ' datatype invalid'
    break
  case -105:
    szErrorTxt := 'error var ' + szVar + ' device-type unknown'
    break
  case -106:
    szErrorTxt := 'error var ' + szVar + ' too fast value-change for same variable'
    break
  case -107:
    szErrorTxt := 'error var ' + szVar + ' numeric value out of range'
    break
  case -108:
    szErrorTxt := 'error con ' + _szCon + ' SMC-service disconnected'
    break

  // ***
  // *   error-codes from SMC
  // ***
  case -200:
    szErrorTxt := 'error write var ' + szVar + ' to PLC'
    break
  case -201:
    szErrorTxt := 'connection ' + _szCon + ' communication-error'
    break
  case -202:
    szErrorTxt := 'error connection ' + _szCon + ' unknown'
    break
  case -203:
    szErrorTxt := 'error var ' + szVar + ' unknown'
    break
  case -204:
    szErrorTxt := 'error var ' + szVar + ' readonly'
    break
  case -205:
    szErrorTxt := 'error var ' + szVar + ' wrong datatype'
    break
  case -206:
    szErrorTxt := 'error var ' + szVar + ' wrong configuration'
    break
  case -207:
    szErrorTxt := 'error connection ' + _szCon + ' locked ->' +
                  ' PLC-reconnect or CSV-import'
    break
  default:
    szErrorTxt := 'write var ' + szVar + ' undefined error'
end

szErrorTxt := AnsiToUtf8(szErrorTxt)
szId       := printf('num_in_%lu', nMethod)
szMethod   := '/de/gefasoft/sapient/db/values/Current/hmi_write_done'
szParams   := '{'                        +
                '"write_id": "'          + _szWriteId            + '", ' +
                '"connection_symbol": "' + '#' +  _szCon         + '", ' +
                '"value_address": "'     + _szVarname            + '", ' +
                '"error_code": '         + LToStr(_nErrorNum,10) + ', '  +
                '"error_message": "'     + szErrorTxt            + '"'   +
              '}'

fOkProd := scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)

]]>
</scritm>
<scritm name="OnStatusSeWS" silent="true" params="_szFullname,String;_szName,String;_nState,Int;" created="27.05.2021 14:18:47" changed="06.05.2024 10:19:27" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for OnStatusSeWS

static long nOldState
static bool fInit

if (not fInit) then
  nOldState := 0
  fInit     := true
endif


// check, if a change in connection-state
if (_nState <> nOldState) then
  // change from SE=NOK to SE=OK -> send initSCC
  if ((_nState = 0) and (nOldState <> 0)) then

		Script.Hmi_20.Sapient.InitSCC

  endif

  nOldState := _nState
endif

]]>
</scritm>
</folder>
<folder name="Sapient">
<scritm name="GetAgLinkS7Connection" params="_szCon,String;_jObject,Json object;" created="05.05.2024 21:05:25" changed="05.08.2024 17:50:25" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for GetAgLinkS7Connection

json js
string szIpAddr, szConfig_Node, szConfig
int nPlcType, nRackNr, nSlotNr

debug(@ScriptFullName+' -> '+_szCon)

if not _jObject.FindEx('ipadresse', string, js) then
	Debug('"ipadresse" missing or wrong type!')
	return 
endif
szIpAddr := js.string

if _jObject.FindEx('plctype', string, js) then
	nPlcType := StrToL(js.string)
else
	nPlcType := 0
endif

if _jObject.FindEx('rack_nr', string, js) then
	nRackNr := StrToL(js.string)
else
	nRackNr := 0
endif

if _jObject.FindEx('slot_nr', string, js) then
	nSlotNr := StrToL(js.string)
else
	nSlotNr := 0
endif

szConfig_Node := 'Value.Hmi_20.'+_szCon+'.Config'


if not IsVar(szConfig_Node) then
	debug(szConfig_Node+'  does not exist')
	return 
endif


xml xmlconfig
inifile iniconfig

xmlconfig.WriteBegin('')

xmlconfig.WriteStartTag('leondas')
xmlconfig.WriteStartTag('driver')
xmlconfig.WriteString('name', 'AGLINK')

xmlconfig.WriteStartTag('drivercfg')

iniconfig.open('')
iniconfig.write('Config', 'noAglConfig', '1')

xmlconfig.WriteCData(iniconfig.read('',''))
iniconfig.close

xmlconfig.WriteEndTag			//drivercfg


xmlconfig.WriteStartTag('connection')
xmlconfig.WriteString('name', _szCon)
xmlconfig.WriteString('addrtype', 'S7')

xmlconfig.WriteStartTag('concfg')

iniconfig.open('')
iniconfig.write('Config', 'Ip_Addr', szIpAddr)
iniconfig.write('Config', 'Rack', LtoStr(nRackNr, 10))
iniconfig.write('Config', 'Slot', LtoStr(nSlotNr, 10))
iniconfig.write('Config', 'PlcClass', LtoStr(nPlcType, 10))
iniconfig.write('Config', 'Readbuffer', '512')
iniconfig.write('Config', 'Writebuffer', '512')
iniconfig.write('Config', 'AsyncJobs', LtoStr(Value.System.AsyncJobs, 10))
iniconfig.write('Config', 'TimeToReconnect', '30000')
iniconfig.write('Config', 'TimeoutRead', LtoStr(Value.System.TimeoutRead, 10))
iniconfig.write('Config', 'TimeInactivity', LtoStr(Value.System.TimeInactivity, 10))
iniconfig.write('Config', 'Prefix', '#')

xmlconfig.WriteCData(iniconfig.read('',''))
iniconfig.close

xmlconfig.WriteEndTag			//concfg


xmlconfig.WriteEndTag			//connection
xmlconfig.WriteEndTag			//driver
xmlconfig.WriteEndTag			//leondas

szConfig := xmlconfig.WriteGetStr

bool ok
ok := xmlconfig.xmlcheck(szConfig)

if ok then
	strvar(szConfig_Node) := szConfig
else
	debug('InitConfig for '+_szCon+' failed!')
	strvar(szConfig_Node) := ''
endif



]]>
</scritm>
<scritm name="GetAgLinkTiaConnection" params="_szCon,String;_jObject,Json object;" created="05.05.2024 21:05:25" changed="14.05.2024 09:43:57" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for GetAgLinkTiaConnection

json js
string szIpAddr, szConfig_Node, szConfig
int nPlcType

debug(@ScriptFullName+' -> '+_szCon)

if not _jObject.FindEx('ipadresse', string, js) then
	Debug('"ipadresse" missing or wrong type!')
	return 
endif
szIpAddr := js.string

if _jObject.FindEx('plctype', string, js) then
	nPlcType := StrToL(js.string)
else
	nPlcType := 0
endif


szConfig_Node := 'Value.Hmi_20.'+_szCon+'.Config'


if not IsVar(szConfig_Node) then
	debug(szConfig_Node+'  does not exist')
	return 
endif


xml xmlconfig
inifile iniconfig

xmlconfig.WriteBegin('')

xmlconfig.WriteStartTag('gtops')
xmlconfig.WriteStartTag('drivercfg')

iniconfig.open('')
iniconfig.write('Config', 'noAglConfig', '1')

xmlconfig.WriteCData(iniconfig.read('',''))
iniconfig.close

xmlconfig.WriteEndTag			//drivercfg


xmlconfig.WriteStartTag('connection')
xmlconfig.WriteString('name', _szCon)
xmlconfig.WriteString('source', 'Online')

xmlconfig.WriteStartTag('concfg')

iniconfig.open('')
iniconfig.write('Config', 'Ip_Addr', szIpAddr)
iniconfig.write('Config', 'PlcClass', LtoStr(nPlcType, 10))
iniconfig.write('Config', 'ReadNum', '1024')
iniconfig.write('Config', 'WriteNum', '1')
iniconfig.write('Config', 'TimeToReconnect', '20000')
iniconfig.write('Config', 'TimeInactivity', LToStr(Value.System.TimeInactivity, 10))


xmlconfig.WriteCData(iniconfig.read('',''))
iniconfig.close

xmlconfig.WriteEndTag			//concfg


xmlconfig.WriteEndTag			//connection
xmlconfig.WriteEndTag			//gtops

szConfig := xmlconfig.WriteGetStr


bool ok
ok := xmlconfig.xmlcheck(szConfig)

if ok then
	strvar(szConfig_Node) := szConfig
else
	debug('InitConfig for '+_szCon+' failed!')
	strvar(szConfig_Node) := ''
endif



]]>
</scritm>
<scritm name="GetConnections" params="_szJson,String;" created="05.05.2024 20:45:48" changed="13.08.2025 14:50:07" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for GetConnections

json js, js1, js2, js3
int nSize, i, nId, nConType, nModuleType
string szCon, szModule, szModulePath



print(string line)
begin
	Debug(line)
end

JsonPrint(_szJson, print)



js.init(_szJson)

if not js.Valid then
  Debug('_szJson is invalid JSON!')
	return 
endif


if not js.Find('result.data', js1) then
  Debug('"data" missing!')
	return 
endif


fDetermineConnectionType()
begin
	if not js2.FindEx('id', int, js3) then
		Debug('"id" missing!')
		return 
	endif
	nId := js3.int

	if not js2.FindEx('connection_type', int, js3) then
		Debug('"connection_type" missing!')
		return 
	endif
	nConType := js3.int
	nModuleType := Script.Hmi_20.Config.GetModuleType(nConType)

	debug('ConType=' + LToStr(nConType, 10) + ', ModuleType=' + LToStr(nModuleType, 10))


	if not js2.FindEx('connection_symbol', string, js3) then
		Debug('"connection_symbol" missing!')
		return 
	endif
	szCon := js3.string
	if substr(szCon, 0, 1) = '#' then
		szCon := strdel(szCon, 0, 1)
	endif

//	if js2.FindEx('smc', string, js3) then
//		szModule := js3.string
//	else
		switch nModuleType
			case 1:
				szModule := Value.Modules.AgLinkS7
				break
			case 2:
				szModule := Value.Modules.AgLinkTia
				break
			case 3:
				szModule := Value.Modules.OpcDa
				break
			case 4:
				szModule := Value.Modules.OpcUa
				break
		end
//	endif

	Script.Hmi_20.Create.CreateConNodes(szCon, szModule, nModuleType, nId)

	StoreString('ConIds', LToStr(nId, 10), szCon)

	switch nModuleType
		case 1:
			Script.Hmi_20.Sapient.GetAgLinkS7Connection(szCon, js2)
			break
		case 2:
			Script.Hmi_20.Sapient.GetAgLinkTiaConnection(szCon, js2)
			break
		case 3:
			Script.Hmi_20.Sapient.GetOpcDaConnection(szCon, js2)
			Script.Hmi_20.Messages.CreateMessageTbl(szCon)
			break
		case 4:
			Script.Hmi_20.Sapient.GetOpcUaConnection(szCon, js2)
			break
	end

	szModulePath := 'Value.Hmi_20.ModuleState.' + szModule

	if IsVar(szModulePath) then
		if StrVar(szModulePath) = 'Running' then
			Script.Hmi_20.Config.StartConnection(szCon)
		endif
	endif

end


if js1.type = 9 then
	js1.ptr(js2)
	fDetermineConnectionType
	return
endif

if js1.type = 10 then
	nSize := js1.Size
	i := 0

	js1.ptr(js2)
	while i < nSize do
		fDetermineConnectionType
		js2.next(js2)
		i := i + 1
	enddo
	return
endif

Debug('"data" expected as object or array!')







]]>
</scritm>
<scritm name="GetOpcDaConnection" params="_szCon,String;_jObject,Json object;" created="05.05.2024 21:05:25" changed="05.08.2024 17:49:30" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for GetOpcDaConnection

json js
string szServer, szCls, szFile, szConfig_Node, szConfig

debug(@ScriptFullName+' -> '+_szCon)

if not _jObject.FindEx('opc_uri', string, js) then
	Debug('"opc_uri" missing or wrong type!')
	return 
endif
szServer := js.string

if not _jObject.FindEx('opc_name_space', string, js) then
	Debug('"opc_name_space" missing or wrong type!')
	return 
endif
szCls := js.string

szConfig_Node := 'Value.Hmi_20.'+_szCon+'.Config'

if not IsVar(szConfig_Node) then
	debug(szConfig_Node+'  does not exist')
	return 
endif


szFile := 'C:\\DevTools\\hmi-scc\\opc\\S71500_Hmi.los'


xml xmlconfig
inifile iniconfig

xmlconfig.WriteBegin('')

xmlconfig.WriteStartTag('smcopcda')

xmlconfig.WriteStartTag('opcsrv')
xmlconfig.WriteString('name', 'gops')
xmlconfig.WriteString('server', szServer)
xmlconfig.WriteString('cls', szCls)
xmlconfig.WriteString('file', szFile)
xmlconfig.WriteString('load', '23')

xmlconfig.WriteStartTag('opcgrp')
xmlconfig.WriteString('name', _szCon)
xmlconfig.WriteString('prefix', '#')

xmlconfig.WriteEndTag			//opcgrp
xmlconfig.WriteEndTag			//opcsrv
xmlconfig.WriteEndTag			//smcopcda


szConfig := xmlconfig.WriteGetStr


bool ok
ok := xmlconfig.xmlcheck(szConfig)

if ok then
	strvar(szConfig_Node) := szConfig
else
	debug('InitConfig for '+_szCon+' failed!')
	strvar(szConfig_Node) := ''
endif



]]>
</scritm>
<scritm name="GetOpcUaConnection" params="_szCon,String;_jObject,Json object;" created="05.05.2024 21:05:25" changed="05.08.2024 17:49:51" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for GetOpcUaConnection

json js
string szUri, szPolice, szUser, szPassword, szFile, szConfig_Node, szConfig
int nSecMode

debug(@ScriptFullName+' -> '+_szCon)


if not _jObject.FindEx('opc_uri', string, js) then
	Debug('"opc_uri" missing or wrong type!')
	return 
endif
szUri := js.string

if not _jObject.FindEx('sec_police', string, js) then
	Debug('"sec_police" missing or wrong type!')
	return 
endif
szPolice := js.string

if not _jObject.FindEx('sec_mode', string, js) then
	Debug('"sec_mode" missing or wrong type!')
	return 
endif
nSecMode := StrToL(js.string)

if not _jObject.FindEx('opc_user', string, js) then
	Debug('"opc_user" missing or wrong type!')
	return 
endif
szUser := js.string

if not _jObject.FindEx('opc_password', string, js) then
	Debug('"opc_password" missing or wrong type!')
	return 
endif
szPassword := js.string


szConfig_Node := 'Value.Hmi_20.'+_szCon+'.Config'

if not IsVar(szConfig_Node) then
	debug(szConfig_Node+'  does not exist')
	return 
endif



xml xmlconfig

xmlconfig.WriteBegin('')

xmlconfig.WriteStartTag('otcopcua')
xmlconfig.WriteString('certpath', 'C:\\daten')


xmlconfig.WriteStartTag('opccon')
xmlconfig.WriteString('name', _szCon)
xmlconfig.WriteString('url', szUri)
xmlconfig.WriteString('secpolice', szPolice)
xmlconfig.WriteInt('secmode', 1)
xmlconfig.WriteString('certname', 'ItcRuntime')
xmlconfig.WriteString('user', szUser)
xmlconfig.WriteString('passcrypt', szPassword)
xmlconfig.WriteString('autorecon', 'true')
xmlconfig.WriteString('retryinit', 'true')
xmlconfig.WriteString('connectasync', 'true')
xmlconfig.WriteInt('tmrsession', 1200000)
xmlconfig.WriteInt('tmrconnect', 5000)
xmlconfig.WriteInt('tmrpublish', 60000)
xmlconfig.WriteInt('tmrintcall', 5000)
xmlconfig.WriteInt('tmrsubscr', 10000)
xmlconfig.WriteInt('tmrreadwrt', 10000)
xmlconfig.WriteString('noPassCheck', 'true')
xmlconfig.WriteString('noCertReq', 'true')
xmlconfig.WriteString('noUriCheck', 'false')
xmlconfig.WriteString('localeid', 'en')
xmlconfig.WriteString('prefix', '#')

xmlconfig.WriteEndTag			//opccon
xmlconfig.WriteEndTag			//otcopcua

szConfig := xmlconfig.WriteGetStr

bool ok
ok := xmlconfig.xmlcheck(szConfig)

if ok then
	strvar(szConfig_Node) := szConfig
else
	debug('InitConfig for '+_szCon+' failed!')
	strvar(szConfig_Node) := ''
endif



]]>
</scritm>
<scritm name="Get_P_Connection_Params" fmt="String" params="_szConIdFilter,String;" created="06.05.2024 08:58:38" changed="06.05.2024 09:53:21" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for Get_P_Connection_Params

string szFields, szParams
long   nConType1, nConType2, nConType3, nConType4, nConType5, nConType6
long   nConType7, nConType8, nConType9, nConType0

// list of allowed connection-types for this scc-project
nConType0    := Value.ConnectionTypes.Inactive
nConType1    := Value.ConnectionTypes.PlcS7_1
nConType2    := Value.ConnectionTypes.PlcS7_2
nConType3    := Value.ConnectionTypes.PlcS7_3
nConType4    := Value.ConnectionTypes.OpcUaPlc
nConType5    := Value.ConnectionTypes.OpcDaPlc
nConType6    := Value.ConnectionTypes.PlcS7_4
nConType7    := Value.ConnectionTypes.TcpMc
nConType8    := Value.ConnectionTypes.TIA_1
nConType9    := Value.ConnectionTypes.TIA_2


// list of fields to read out from P_CONNECTIONS
szFields     := '"pc.id",'                
                '"pc.connection_symbol",' 
                '"pc.ipadresse",'         
                '"pc.smc",'               
                '"pc.connection_type",'   
                '"pc.default_node",'      
                '"pc.parent"'

// use additional extended properties from P_CONNECTIONS
                ',' 
                '"pc.plc_type",'    
                '"pc.rack_nr",'     
                '"pc.slot_nr",'     
                '"pc.s7_com",'      
                '"pc.use_agl_cfg",' 
                '"pc.agl_source",'  
                '"pc.agl_path",'    
                '"pc.agl_timeout",' 
                '"pc.agl_syncread"'

// use extended properties for OPC-DA/-UA from P_CONNECTIONS
                ',' 
                '"pc.localport",'      
                '"pc.opc_uri",'        
                '"pc.sec_police",'     
                '"pc.sec_mode",'       
                '"pc.opc_name_space",' 
                '"pc.opc_user",'       
                '"pc.opc_password"'

// use extended properties for any PLC-connections from P_CONNECTIONS
                ',' 
                '"pc.plctsap",' 
                '"pc.hosttsap"'


szParams  := '{'                                                                 
                '"schema": "legato",'                                            
                '"query": {'                                                     
                    '"resources": ['                                             
                        '{'                                                      
                            '"resource": "p_connections",'                       
                            '"as": "pc"'                                         
                        '},'                                                     
                        '{'                                                      
                            '"resource": "p_modules",'                           
                            '"as": "pm"'                                         
                        '}'                                                      
                    '],'                                                         
                    '"fields": ['                                                
                            + szFields +
                    '],'                                                         
                    '"filter": ['                                                
                        '{'                                                      
                            '"left": "pm.project_no",'                           
                            '"op": "eq",'                                        
                            '"right": {"val":' + Value.System.SccProjectNo + '}' 
                        '},'   
if strlen(_szConIdFilter) <> 0 then
	szParams := szParams + 
												'"AND",'
														+ _szConIdFilter + 
                        ','                                                      
endif

szParams := szParams +
                        '"AND","(",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType1, 10) + '}' 
                            '}'                                                  
                            ',"OR",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType2, 10) + '}' 
                            '}'                                                  
                            ',"OR",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType3, 10) + '}' 
                            '}'                                                  
                            ',"OR",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType4, 10) + '}' 
                            '}'                                                  
                            ',"OR",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType5, 10) + '}' 
                            '}'                                                  
                            ',"OR",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType6, 10) + '}' 
                            '}'                                                  
                            ',"OR",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType7, 10) + '}' 
                            '}'                                                  
                            ',"OR",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType8, 10) + '}' 
                            '}'                                                  
                            ',"OR",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType9, 10) + '}' 
                            '}'                                                  
                            ',"OR",'                                             
                            '{'                                                  
                                '"left": "pc.connection_type",'                  
                                '"op": "eq",'                                    
                                '"right": {"val":' + LToStr(nConType0, 10) + '}' 
                            '}'                                                  
                        ',")"'                                                   
                    '],'                                                         
                    '"relations": ['                                             
                        '{'                                                      
                            '"src": "pc",'                                       
                            '"dst": "pm",'                                       
                            '"how": "i",'                                        
                            '"on": ['                                            
                                 '{'                                             
                                     '"left": "pc.module",'                      
                                     '"op": "eq",'                               
                                     '"right": "pm.id"'                          
                                 '}'                                             
                            ']'                                                  
                        '}'                                                      
                    '],'                                                         
                    '"sort": ['                                                  
                        '{'                                                      
                            '"field": "pc.connection_symbol"'                    
                        '}'                                                      
                    ']'                                                          
                '}'                                                              
            '}'





return szParams

]]>
</scritm>
<scritm name="Get_P_Connections" params="_szConIdFilter,String;" created="06.05.2024 09:54:24" changed="11.08.2025 14:35:52" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for Get_P_Connections

long nMethodId
double dftExecutionTime
string szSelId, szSccId, szMethod, szParams, szExecTime, szJson
bool fSeExecOk

// build JSON-RPC methodcall
nMethodId := Script.SapientEngine.Common.GetHttpJsonSelectUniqueId
szSccId := Value.System.SccProjectNo
szSelId := printf('select_p_connections_%lu', nMethodId)
szMethod := 'de/gefasoft/sapient/data/Query/select'
szParams := Script.Hmi_20.Sapient.Get_P_Connection_Params(_szConIdFilter)

dftExecutionTime := TimeDouble

fSeExecOk := scc_sub(Value.SapientEngine.SelectConnection).post(szSelId, szMethod, szParams, 2000)

if (fSeExecOk) then
  dftExecutionTime := (TimeDouble - dftExecutionTime) * 1000

	szExecTime := 'script Get_P_CONNECTIONS get id:' + szSelId + ' execution time ' + printf('%.0f',dftExecutionTime) + ' ms'
	debug(szExecTime)

	szJson := scc_sub(Value.SapientEngine.SelectConnection).Result
	debug(szJson)

	Script.Hmi_20.Sapient.GetConnections(szJson)

endif
]]>
</scritm>
<scritm name="InitSCC" changed="11.08.2025 16:07:59" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for InitSCC

bool    fOkProd
string  szLogMsg, szId, szMethod, szParams, szSccId
long    nMethod

nMethod := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId := printf('InitSCC_%lu', nMethod)
szMethod := 'initSCC'
szSccId := Value.System.SccProjectNo


szParams := '{'                           +
              '"projectId": '             + szSccId +
              ', "supportedFunctions": [' +
                   '"watchHMIVars",'      +
                   '"writeHMI",'          +
                   '"connectionList"'     +
              ']'                         +
            '}'


szLogMsg := 'id:' + szId + ' method:' + szMethod + ' params:' + szParams

Debug('script InitSCC: ' + szLogMsg)

fOkProd := scc_sub(Value.SapientEngine.WebSocketConnection).post(szId, szMethod, szParams, 0)
]]>
</scritm>
</folder>
</folder>
<folder name="RpcCall">
<scritm name="connectionList" params="_Fullname,String;_Params,String;" created="17.04.2024 13:18:50" changed="07.05.2024 09:37:48" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for connectionList
/*
szJsData := '{'                              +
              '"jsonrpc": "2.0",'            +
              '"method": "connectionList",'  +
              '"params": {'                  +
		            '"added":['                  +
                     '<conid1>,'             +
                     '<conid2>'              +
                   '],'                      +
		            '"deleted":['                +
                     '<conid1>,'             +
                     '<conid2>'              +
                   '],'                      +
		            '"changed":['                +
                     '<conid1>,'             +
                     '<conid2>'              +
                   '],'                      +
		            '"initial":['                +
                     '<conid1>,'             +
                     '<conid2>'              +
                   ']'                       +
              '}'                            +
            '}'
*/

json js, js1, js2, js3
int i, nSize, nId, nIdCnt
string szConIdFilter, szAddConId, szCon, szId


fAddConId()
begin
	nId := js2.int

	szAddConId := '{'                                                      
										'"left": "pc.id",'                                   
										'"op": "eq",'                                        
										'"right": {"val":' + LTostr(nId, 10) + '}'       
								'}'                                                     

	if nIdCnt > 0 then
		szConIdFilter := szConIdFilter + ',"OR",'  		
	endif

	szConIdFilter := szConIdFilter + szAddConId
	nIdCnt := nIdCnt + 1
end



fAddConIds()
begin
	if js1.type = 9 then
		js1.ptr(js2)
		fAddConId
		return
	endif

	if js1.type = 10 then
		nSize := js1.Size
		i := 0

		js1.ptr(js2)
		while i < nSize do
			fAddConId
			js2.next(js2)
			i := i + 1
		enddo
		return
	endif
end


fDelCon()
begin
	nId := js2.int
	szId := LToStr(nId, 10)
	szCon := LoadString('ConIds', szId)
	
	if strlen(szCon) <> 0 then
		Script.Hmi_20.Config.DelConnection(szCon)
	endif

	DelBlockValue('ConIds', szId)	

end


fDelCons()
begin
	if js1.type = 9 then
		js1.ptr(js2)
		fDelCon
		return
	endif

	if js1.type = 10 then
		nSize := js1.Size
		i := 0

		js1.ptr(js2)
		while i < nSize do
			fDelCon
			js2.next(js2)
			i := i + 1
		enddo
		return
	endif
end

js.init(_Params)

if not js.Valid then
  Debug('_Params is invalid JSON!')
	return 
endif


debug(_Params)


nIdCnt := 0

if js.Find('initial', js1) then
	fAddConIds
endif

if js.Find('added', js1) then
	fAddConIds
endif

if js.Find('changed', js1) then
	fAddConIds
endif

if js.Find('deleted', js1) then
	fDelCons
endif

if nIdCnt > 0 then
	if nIdCnt > 1 then
		szConIdFilter := '"(",' + szConIdFilter + ',")"'		
	endif
	debug(szConIdFilter)
	Script.Hmi_20.Sapient.Get_P_Connections(szConIdFilter)
endif


]]>
</scritm>
<scritm name="watchHMIVars" params="_Fullname,String;_Params,String;" created="17.04.2024 13:02:14" changed="01.10.2024 10:51:49" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for watchHMIVars

string szCon, szVarList, szVarList_Node
int nSize, i
bool init


debug('watchHMIVars: '+_Params)

json js, js1, js2
js.init(_Params)

if not js.Valid then
  Debug('_Params is invalid JSON!')
	return 
endif


if not js.FindEx('connection_symbol', string, js1) then
  Debug('"connection_symbol" missing!')
	return 
endif

szCon := js1.string

if substr(szCon, 0, 1) = '#' then
	szCon := strdel(szCon, 0, 1)
endif


if not js.FindEx('variable_symbols', array, js1) then
  debug('"variable_symbols" missing or wrong type!')
	return 
endif

nSize := js1.Size

debug('connection "'+szCon+'" with '+LToStr(nSize, 10)+' variables')


/*
init := false
i := 0

js1.ptr(js2)
szVarList := '['
while i < nSize do
	if init then
		szVarList := szVarList + ','
  else
		init := true
	endif
  szVarList := szVarList + '"'+js2.string+'"'
	js2.next(js2)
	i := i + 1
enddo
szVarList := szVarList + ']'

*/


i := strpos(_Params, '[')

szVarList := substr(_Params, i, strlen(_Params) - i - 1)



szVarList_Node := 'Value.Hmi_20.'+szCon+'.VarList'

if IsVar(szVarList_Node) then
	StrVar(szVarList_Node) := szVarList
	Script.Hmi_20.Config.SetMapConfig(szCon)
endif




]]>
</scritm>
<scritm name="writeHMI" params="_Fullname,String;_Params,String;" created="23.04.2024 13:35:38" changed="11.08.2025 14:32:48" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for writeHMI

string szCon, szSymbol, szValue, szId, szCommand, szModule_Node, szModule, szModuleType_Node, szConName
long nModuleType, nWriteTime

json js, js1, js2
js.init(_Params)

if not js.Valid then
  Debug('_Params is invalid JSON!')
	return 
endif


if not js.FindEx('connection_symbol', string, js1) then
  Debug('"connection_symbol" missing!')
	return 
endif

szCon := js1.string

if substr(szCon, 0, 1) = '#' then
	szCon := strdel(szCon, 0, 1)
endif

if not js.FindEx('variable_symbol', string, js1) then
  debug('"variable_symbol" missing or wrong type!')
	return 
endif

szSymbol := js1.string

if not js.FindEx('value', string, js1) then
  debug('"value" missing or wrong type!')
	return 
endif

szValue := Utf8ToAnsi(js1.string)

if not js.FindEx('write_id', string, js1) then
  debug('"write_id" missing or wrong type!')
	return 
endif

szId := js1.string

if not js.FindEx('timestamp_unix', int, js1) then
  debug('"timestamp_unix" missing or wrong type!')
	return 
endif

nWriteTime := js1.int

debug('Write "'+szValue+'" to '+szCon+'.'+szSymbol+' with id: '+szId)


szModuleType_Node := 'Value.Hmi_20.'+szCon+'.ModuleType'
if IsVar(szModuleType_Node) then
	nModuleType := IntVar(szModuleType_Node)
endif


if nModuleType = 3 then
	szConName := 'grp'
else
	szConName := 'con'
endif



szCommand := '{"'+szConName+'": "'+szCon+'", "var": "'+szSymbol+'", "value": "'+szValue+'", "result": true, "id": "'+szId
             +'", "timestamp": '+ltostr(nWriteTime,10)+'}'



szModule_Node := 'Value.Hmi_20.'+szCon+'.Module'

if not IsVar(szModule_Node) then
	debug(szCon+' without module config -> try to write later')
  return 
endif

szModule := StrVar(szModule_Node)

if StrLen(szModule) = 0 then
	debug(szCon+' with empty module valid config -> try to write later')
	return
endif

debug('########################################')
debug(szModule)
debug(szCommand)

Connector.Otc_Connector.Publish(szModule + '/Command/Write', szCommand, 2)



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
<folder name="Connections">
<scritm name="Connect_State" params="_szConSym,String;_nConState,Int;_szErrorText,String;_nAlSubNode,Int;" changed="11.08.2025 13:57:06" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script Connect_State
//
//  revision 3.27.0            2024-04-08
//  author: Joerg Kral, rmj    GEFASOFT GmbH
//
//  revision history:
//    revision 3.27.0          2024-04-08
//      first release
//
////////////////////////////////////////////////////////////////////////////////
bool   fOk
string szId, szLogMsg, szMethod, szParams
long   nMethod, nMsgClass

nMethod   := Script.SapientEngine.Common.GetHttpJsonPostUniqueId
szId      := printf('connect_state_%lu', nMethod)
nMsgClass := Value.Messages.DefaultClassConError
szMethod  := '/de/gefasoft/sapient/db/conn/Connections/connect_state'
szParams  := '{'                       +
               '"CONNECTION_SYMBOL":"' + _szConSym               + '", ' +
               '"CONNECT_STATUS":'     + LToStr(_nConState, 10)  + ', '  +
               '"ERROR_TEXT":"'        + _szErrorText            + '", ' +
               '"P_CLASS":'            + LToStr(nMsgClass, 10)   + ', '  +
               '"AL_SUBNODE":'         + LToStr(_nAlSubNode, 10)         +
             '}'
szLogMsg :=  'id:' + szId + ' method:' + szMethod + ' params:' + szParams

// logging
Debug('script Connect_State ' + szLogMsg)

fOk := scc_sub(Value.SapientEngine.AlarmConnection).post(szId, szMethod, szParams, 0)
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
        case 0x84:  // Ã„
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xC4)
          i := i + 1
          break
        case 0x96:  // Ã–
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xD6)
          i := i + 1
          break
        case 0x9C:  // Ãœ
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xDC)
          i := i + 1
          break
        case 0x9F:  // ÃŸ
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xDF)
          i := i + 1
          break
        case 0xA4:  // Ã¤
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xE4)
          i := i + 1
          break
        case 0xB6:  // Ã¶
          SetBlockNum(blkAscii, nAsciiIndex, 1, false, 0xF6)
          i := i + 1
          break
        case 0xBC:  // Ã¼
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
<folder name="ConnectionTypes">
<memitm name="Inactive" fmt="Int" init="#use $project\config.ini?CON.Inactive" always="true"/>
<memitm name="OpcDaPlc" fmt="Int" init="#use $project\config.ini?CON.OpcDaPlc" always="true"/>
<memitm name="OpcUaPlc" fmt="Int" init="#use $project\config.ini?CON.OpcUaPlc" always="true"/>
<memitm name="PlcS7_1" fmt="Int" init="#use $project\config.ini?CON.PlcS7_1" always="true"/>
<memitm name="PlcS7_2" fmt="Int" init="#use $project\config.ini?CON.PlcS7_2" always="true"/>
<memitm name="PlcS7_3" fmt="Int" init="#use $project\config.ini?CON.PlcS7_3" always="true"/>
<memitm name="PlcS7_4" fmt="Int" init="#use $project\config.ini?CON.PlcS7_4" always="true"/>
<memitm name="TIA_1" fmt="Int" init="#use $project\config.ini?CON.TIA_1" always="true"/>
<memitm name="TIA_2" fmt="Int" init="#use $project\config.ini?CON.TIA_2" always="true"/>
<memitm name="TcpMc" fmt="Int" init="#use $project\config.ini?CON.TcpMc" always="true"/>
</folder>
<folder name="Messages">
<memitm name="DefaultClassAlert" fmt="Int" init="#use $project\config.ini?MSG.ClassAlert" always="true"/>
<memitm name="DefaultClassConError" fmt="Int" init="#use $project\config.ini?MSG.ClassConError"/>
<memitm name="DefaultClassInfo" fmt="Int" init="#use $project\config.ini?MSG.ClassInfo" always="true"/>
<memitm name="DefaultClassWarning" fmt="Int" init="#use $project\config.ini?MSG.ClassWarning" always="true"/>
<memitm name="DefaultTypeAlert" fmt="Int" init="#use $project\config.ini?MSG.TypeAlert" always="true"/>
<memitm name="DefaultTypeInfo" fmt="Int" init="#use $project\config.ini?MSG.TypeInfo" always="true"/>
<memitm name="DefaultTypeWarning" fmt="Int" init="#use $project\config.ini?MSG.TypeWarning" always="true"/>
</folder>
<folder name="Modules">
<memitm name="AgLinkS7" fmt="String" init="#use $project\config.ini?MODULES.AgLinkS7" always="true"/>
<memitm name="AgLinkTia" fmt="String" init="#use $project\config.ini?MODULES.AgLinkTia" always="true"/>
<memitm name="OpcDa" fmt="String" init="#use $project\config.ini?MODULES.OpcDa" always="true"/>
<memitm name="OpcUa" fmt="String" init="#use $project\config.ini?MODULES.OpcUa" always="true"/>
</folder>
<folder name="SapientEngine">
<memitm name="AlarmConnection" fmt="String"/>
<memitm name="SelectConnection" fmt="String"/>
<memitm name="SyncConnection" fmt="String"/>
<memitm name="WebSocketConnection" fmt="String"/>
</folder>
<folder name="System">
<memitm name="AsyncJobs" fmt="Int" init="0"/>
<memitm name="BackupDir" fmt="String" init="#use $project\config.ini?OTC.BackupDir" always="true"/>
<memitm name="ImportDir" fmt="String" init="#use $project\config.ini?OTC.ImportDir" always="true"/>
<memitm name="S7StringFromConfig" fmt="Bool"/>
<memitm name="SccOnStart" fmt="Bool" init="0"/>
<memitm name="SccProjectNo" fmt="String" init="#use $project\config.ini?SCC.ProjectNo" always="true"/>
<memitm name="TimeInactivity" fmt="Int" always="true"/>
<memitm name="TimeoutPlcCon" fmt="Int"/>
<memitm name="TimeoutRead" fmt="Int" init="0"/>
</folder>
</memmod>
</gateway>
