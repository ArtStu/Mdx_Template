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
<![CDATA[["Machine Data eXchange.Services.Sapient.Runtime","Machine Data eXchange.Services.Sapient.Runtime.FileScanner","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Event","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Event.OnInit","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Sapient","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Sapient.HTTP_JSON_DATA","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Sapient.HTTP_JSON_DATA.HTTP_JSON_DATA","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Script","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Script.FileState","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Script.Sapient","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Script.SapientEngine","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Script.SapientEngine.Common","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Script.SapientEngine.EngineStatus","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Script.ScanFiles","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Value","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Value.ScanFiles","Machine Data eXchange.Services.Sapient.Runtime.FileScanner.Value.System"]]]>
<comment name="@LiesMich">
<![CDATA[[Header]Beispiel für das Scannen eines Verzeichnisses in einem Thread

Dieses Projekt zeigt, wie in einem Parallelthread ein Verzeichnis auf Änderungen der darin 
enthaltenen Dateien gescannt wird.

Bei der Projektinitialisierung wird das Verzeichnis festgelegt, wir verwenden hier

Value.ScanFiles.ScanDir									'C:\\temp\\csv_test\\'
Value.ScanFiles.Extension								'.csv'

suchen also nach nach CSV-Dateien.


Der Scanvorgang benötigt drei Scripte:


Script.ScanFiles.CreateSubThread				wird beim Projektstart aufgerufen
Script.ScanFiles.RemoveSubThread				wird bei Projektende aufgerufen
Script.ScanFiles.ScanDirEvent						wird aufgerufen, wenn eine Änderung erkannt wurde


Der Status bei Änderung kann folgende Werte haben:

'created'																die Datei wurde neu angelegt
'changed'																die Datei wurde geändert
'deleted'																die Datei wurde gelöscht oder verschoben


Diese Information wird in internen Blockdaten gespeichert. Der Aufbau ist so angelegt:

Blockordner, bei Projektinitialisierung definiert:

Value.ScanFiles.Folder									'Files'


Eintrag mit Namen der Datei ohne Verzeichnis oder Extension

Die Blockdaten werden bei Änderung in eine CSV Datei gespeichert um die Informationen bei Neustart 
wieder herstellen zu können.

Die CSV Datei wird ebenfalls bei Projektinitialisierung definiert:

Value.ScanFiles.StateListFile						'C:\\temp\\csv_states.csv'


Die Scripte zum Schreiben und Lesen der Dateiinfo sind

Script.FileState.LoadFileState
Script.FileState.SaveFileState


Über ein zyklisches Event wird das Script

Script.Sapient.SendFiles

aufgerufen. 

Dieses prüft die Dateiinformationen und liest die Textdatei in einen String.
Dieser String kann dann an die Sapient Engine gesendet werden.

]]>
</comment>
<basmod/>
<conmod/>
<sqlmod/>
<evtmod>
<evtitm name="OnInit" typ="8" timestamp="04.06.2025 15:02:05">
<occitm name="OnTrigger" created="04.06.2025 15:02:16" changed="23.06.2025 10:43:49" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Value.System.SapientRoot := 'Sapient'

// directory to scan
Value.ScanFiles.ScanDir := 'C:\\temp\\csv_test\\'
// extension of files to scan
Value.ScanFiles.Extension := '.csv'
// path of file to save states
Value.ScanFiles.StateListFile := 'C:\\temp\\csv_states.csv'
// folder for internal blockdata
Value.ScanFiles.Folder := 'Files'

// load old states now
Script.FileState.LoadFileState

]]>
</occitm>
</evtitm>
<evtitm name="OnStart" typ="2" timestamp="04.06.2025 13:55:45">
<occitm name="OnTrigger" created="04.06.2025 13:56:02" changed="11.06.2025 12:39:01" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
// create a sub thread to scan the directory
Script.ScanFiles.CreateSubThread
]]>
</occitm>
</evtitm>
<evtitm name="OnStop" typ="3" timestamp="04.06.2025 13:56:56">
<occitm name="OnTrigger" created="04.06.2025 13:57:07" changed="04.06.2025 15:00:52" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
// stop scanning the directory
Script.ScanFiles.RemoveSubThread]]>
</occitm>
</evtitm>
<evtitm name="TimerSend" typ="1" value="5000" dismult="true" timestamp="11.06.2025 12:36:17">
<occitm name="OnTrigger" created="11.06.2025 12:36:50" changed="11.06.2025 12:39:37" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
// check for new or changed files to send
Script.Sapient.SendFiles
]]>
</occitm>
</evtitm>
</evtmod>
<opcmod/>
<opcuamod/>
<pubmod/>
<sccmod>
<scccon name="HTTP_JSON_DATA" disable="true" auth="1" uri="#use $project\config.cfg?SE.UriDeviceController" security="1" passcrypt=" " info="#use $project\config.cfg?SE.DeviceInfo" voucher=" " exptime="-1">
<sccsub name="HTTP_JSON_DATA" reconnect="1000" timeout="20000" watchdog="30000">
<occitm name="OnResult" created="02.08.2024 13:02:12" changed="23.06.2025 10:33:19" author="DN-ARTHUR/arthur.stunf">
<![CDATA[

]]>
</occitm>
<occitm name="OnWatchDog" created="23.06.2025 10:34:25" changed="23.06.2025 10:44:53" author="DN-ARTHUR/arthur.stunf">
<![CDATA[
Script.SapientEngine.EngineStatus.getEngineInstance(@Name)
]]>
</occitm>
</sccsub>
</scccon>
</sccmod>
<scrmod>
<folder name="FileState">
<scritm name="LoadFileState" created="04.06.2025 15:39:25" changed="04.06.2025 16:24:21" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for LoadFileState

string szName, szLine, szReason, szWriteTime, szState
int i, cnt
file f 

if not f.Open(Value.ScanFiles.StateListFile, 3) then
	debug('No saved file states')
	return
endif

szLine := f.ReadLn
while not f.Eof do
	szName := GetCol(szLine,1, 1)
	szReason := GetCol(szLine,1, 2)
	szWriteTime := GetCol(szLine,1, 3)

	debug('Restore ' + szName)

	szState := '"' + szReason + '","' + szWriteTime + '"'
	StoreString(Value.ScanFiles.Folder, szName, szState)

	szLine := f.ReadLn
enddo

f.Close

]]>
</scritm>
<scritm name="SaveFileState" created="04.06.2025 15:39:25" changed="04.06.2025 15:51:29" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for SaveFileState

string szName, szLine
int i, cnt
file f 

i := 1
cnt := BlockValueCount(Value.ScanFiles.Folder)
if cnt = 0 then
  DeleteFile(Value.ScanFiles.StateListFile)
	return
endif

f.Open(Value.ScanFiles.StateListFile, 2)

while i <= cnt do
	szName := BlockValueName(Value.ScanFiles.Folder, i)
	if szName <> '' then
		szLine := szName + ',' + LoadString(Value.ScanFiles.Folder, szName)
		f.WriteLn(szLine)
	endif
	i := i + 1
enddo

f.Close

]]>
</scritm>
</folder>
<folder name="Sapient">
<scritm name="SendFiles" created="04.06.2025 16:13:19" changed="23.06.2025 13:35:49" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for SendFiles

string szName, szState, szReason, szWriteTime, szCreateTime, szPath, szMethod, szParams, szSeId
string szResult, szId, szCodedData, szEquipmentId, szTransaction, szBlockSize, szWriteTimeUtc, szCreateTimeUtc
block bData
int i, cnt
bool fOk

// where do we get this informations?
szId := 'CSV-Wrapped-Sample-001'
szEquipmentId := 'TEQ-CsvWrap-01'
szTransaction := 'xyz'


// subfunction to get file attributes
fFileFound(block _b)
begin
	struct fi
	begin
		dword    dwFileAttributes
		dword    ftCreationTimeHigh 
		dword    ftCreationTimeLow
		dword    ftLastAccessTimeHigh
		dword    ftLastAccessTimeLow
		dword    ftLastWriteTimeHigh
		dword    ftLastWriteTimeLow
		dword    nFileSizeHigh
		dword    nFileSizeLow
		dword    dwReserved0
		dword    dwReserved1
		byte     cFileName[260]
		byte     bTerminate1
		byte     cAlternateFileName[14]
		byte     bTerminate2
	end


	blocktovar(_b, &fi, blocksize(_b))
	szCreateTime := LocalToUtc(FileTimeStr(&fi.ftCreationTimeHigh, 'YYYY-MM-DD HH:mm:ss'))  
	szCreateTimeUtc := ConvTimeStr(szCreateTime, 'YYYY-MM-DD HH:mm:ss', 'YYYY.MM.DDTHH:mm:ssZ')
end


// subfunction to build the result
fBuildResult()
begin
	string szTime
	szTime := LocalToUtc(ConvTimeStr(szWriteTime, 'DD.MM.YYYY HH:mm:ss.ttt', 'YYYY-MM-DD HH:mm:ss'))
	szWriteTimeUtc := ConvTimeStr(szTime, 'YYYY-MM-DD HH:mm:ss', 'YYYY.MM.DDTHH:mm:ssZ')

	szResult := '{'
								'"MaterialTestResult": {'
									'"ID": "' + szId + '",'
									'"UserDefinedAttributes": {'
										'"UserDefinedAttribute": ['
											'{ "Name": "TestEquipmentID", "Value": "' + szEquipmentId + '" },'
											'{ "Name": "TestDateTime", "Value": "' + szWriteTimeUtc +'"},'
											'{ "Name": "TransactionID", "Value": "' + szTransaction + '" },'
											'{ "Name": "FileName", "Value": "' + szName + Value.ScanFiles.Extension + '" },'
											'{ "Name": "FileLength", "Value": "' + szBlockSize + '" },'
											'{ "Name": "FileLengthUnit", "Value": "Byte" },'
											'{ "Name": "FilePath", "Value": "' + szPath + '" },'
											'{ "Name": "CreatedTimestamp", "Value": "' + szCreateTimeUtc + '" },'
											'{ "Name": "ModifiedTimestamp", "Value": "' + szWriteTimeUtc + '" }'
										']'
									'},'
									'"TestResultFile": {'
										'"FileName": "' + szName + Value.ScanFiles.Extension + '",'
										'"FileType": "' + Value.ScanFiles.Extension + '",'
										'"Encoding": "base64",'
										'"Content": "' + szCodedData + '"'
									'}'
								'}'
							'}'



end


// subfunction to print result JSON
fPrintLine(string line)
begin
	Debug(line)
end


// subfunction to read the file binary and encode the data 
bool fReadFile()
begin

	bData := BlockRead(szPath)
	if BlockSize(bData) = 0 then
		return false
	endif

	szBlockSize := LToStr(BlockSize(bData), 10)
	szCodedData := Base64EncodeBlk(bData)

	return true
end



// main function

i := 1
cnt := BlockValueCount(Value.ScanFiles.Folder)
if cnt = 0 then
	return
endif


while i <= cnt do
	szName := BlockValueName(Value.ScanFiles.Folder, i)
	if szName <> '' then
		szState := LoadString(Value.ScanFiles.Folder, szName)

		szReason := GetCol(szState,1, 1)
		szWriteTime := GetCol(szState,1, 2)

		if (szReason <> 'sent') and (szReason <> 'failed') then

			szPath := Value.ScanFiles.ScanDir + szName + Value.ScanFiles.Extension

			if fReadFile then
	
				Debug('Send ' + szName)	

				ScanDir(szPath, fFileFound)

				fBuildResult

				JsonPrint(szResult, fPrintLine)


				szSeId := printf('msmntfile_%lu', Script.SapientEngine.Common.GetHttpJsonDataUniqueId)

				szMethod := '/qdata/msmntfile/publishMeasurementFile'
				szParams := szResult                                                   

				fOk := true
//				fOk := scc_sub(Value.System.SapientRoot + '.HTTP_JSON_DATA.HTTP_JSON_DATA').post(szSeId, szMethod, szParams, 0)

				if fOk then
					szState := '"sent","' + szWriteTime + '"'
				else
					szState := '"failed","' + szWriteTime + '"'
				endif
			else
				szState := '"failed","' + szWriteTime + '"'
			endif

			StoreString('Files', szName, szState)
			Script.FileState.SaveFileState

		endif

	endif
	i := i + 1
enddo

]]>
</scritm>
</folder>
<folder name="SapientEngine">
<folder name="Common">
<scritm name="GetHttpJsonDataUniqueId" silent="true" fmt="Int" changed="23.06.2025 10:38:51" author="DN-ARTHUR/arthur.stunf">
<![CDATA[////////////////////////////////////////////////////////////////////////////////
//
//  script GetHttpJsonDataUniqueId
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
<folder name="EngineStatus">
<scritm name="getEngineInstance" silent="true" params="_szHttpJsonCon,String;" changed="23.06.2025 10:41:45" author="DN-ARTHUR/arthur.stunf">
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
string szFullName, szId, szLogMsg, szMethod, szParams

szId := printf('getEngineInstance_%lu', Script.SapientEngine.Common.GetHttpJsonDataUniqueId)

szMethod := '/de/gefasoft/sapient/sapieng/main/EngineStatus/getEngineInstance'
szParams := '{}'                                                   

szLogMsg :=  'id:' + szId + ' method:' + szMethod + ' params:' + szParams

Debug('script ' + @ScriptName + szLogMsg)

szFullName := Value.System.SapientRoot + '.HTTP_JSON_DATA.' + _szHttpJsonCon


fRetVal := scc_sub(szFullName).post(szId, szMethod, szParams, 0)
]]>
</scritm>
</folder>
</folder>
<folder name="ScanFiles">
<scritm name="CreateSubThread" created="13.12.2023 10:15:03" changed="11.06.2025 12:30:49" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for CreateSubThread


string command
string dir


dir := StrToJson(Value.ScanFiles.ScanDir + '*' + Value.ScanFiles.Extension)


command := '{ "action" : "ScanDir" , "timeval" : 3000, "dir" : "' + dir +'"}'


CreateThread(1, command, Script.ScanFiles.ScanDirEvent)
]]>
</scritm>
<scritm name="RemoveSubThread" created="13.12.2023 10:18:09" changed="13.12.2023 10:18:33" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for RemoveSubThread

RemoveThread(1)

]]>
</scritm>
<scritm name="ScanDirEvent" params="_id,Int;_result,String;" created="13.03.2024 21:26:00" changed="23.06.2025 13:02:31" author="DN-ARTHUR/arthur.stunf">
<![CDATA[//Script file for ScanDirEvent

debug(_result)


json js, js1
string szName, szReason, szOldReason, szWriteTime, szOldWriteTime


bool fOldFileState()
begin
	string szState
  // try to get older state
  szState := LoadString(Value.ScanFiles.Folder, szName)
  
	if szState <> '' then
		Debug('old state of ' + szName + ' was ' + szState)


		szOldReason := GetCol(szState,1, 1)
		szOldWriteTime := GetCol(szState,1, 2)

		if (szOldReason = 'sent') and (szOldWriteTime = szWriteTime) then
			return true
		endif
	endif
	return false
end

fNewFileStateCreated()
begin
	if fOldFileState then
		return
	endif

	string szState
	szState := '"' + szReason + '","' + szWriteTime + '"'
	StoreString('Files', szName, szState)
	Script.FileState.SaveFileState
end

fNewFileStateChanged()
begin
	if fOldFileState then
		return
	endif

	string szState
	szState := '"' + szReason + '","' + szWriteTime + '"'
	StoreString(Value.ScanFiles.Folder, szName, szState)
  Script.FileState.SaveFileState
end

fNewFileStateDeleted()
begin
	fOldFileState
	DelBlockValue(Value.ScanFiles.Folder, szName)
	Script.FileState.SaveFileState
end


js.init(_result)

if not js.Valid then
  Debug('_result is invalid JSON!')
	return 
endif

if js.FindEx('name', string, js1) then
	szName := js1.string
else
  Debug('"name" not found in JSON!')
	return
endif

if js.FindEx('reason', string, js1) then
	szReason := js1.string
else
  Debug('"reason" not found in JSON!')
	return
endif

if js.FindEx('writetime', string, js1) then
	szWriteTime := js1.string
else
  Debug('"writetime" not found in JSON!')
	return
endif


if szReason = 'created' then
	debug('new file found: ' + szName)
	fNewFileStateCreated
	return
endif

if szReason = 'changed' then
	debug('file has changed: ' + szName)
	fNewFileStateChanged
	return
endif

if szReason = 'deleted' then
	debug('file has been moved or deleted: ' + szName)
	fNewFileStateDeleted
	return
endif


]]>
</scritm>
</folder>
</scrmod>
<commod/>
<memmod>
<folder name="ScanFiles">
<memitm name="Extension" fmt="String"/>
<memitm name="Folder" fmt="String"/>
<memitm name="ScanDir" fmt="String"/>
<memitm name="StateListFile" fmt="String"/>
</folder>
<folder name="System">
<memitm name="SapientRoot" fmt="String"/>
</folder>
</memmod>
</gateway>
