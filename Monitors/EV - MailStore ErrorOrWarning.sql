
INSERT INTO `Agents` (`Name`,`LocID`,`ClientID`,`ComputerID`,`DriveID`,`CheckAction`,`AlertAction`,`AlertMessage`,`ContactID`,`interval`,`Where`,`What`,`DataOut`,`Comparor`,`DataIn`,`LastScan`,`LastFailed`,`FailCount`,`IDField`,`AlertStyle`,`Changed`,`Last_Date`,`Last_User`,`ReportCategory`,`TicketCategory`,`Flags`,`GUID`,`AgentDefaultGUID`,`WarningCount`,`DeviceId`) Values('EV - MailStore Error/Warning - Custom','0','0','0','237,1623','0','26','~~~MailStore detected a failure on %clientname%\\%computername% at %locationname%.\r\nMessage %fieldname%.\r\n\r\nPlease look into this immediately.!!!~~~MailStore detected a failure on %clientname%\\%computername% at %locationname%.\r\nMessage %fieldname%.\r\n\r\nPlease look into this immediately.','1','3600','eventlogs','Source','eventlogs.eventtype !=2 and message not like \'%OnBackupShutdown%\' and\r\ntimegen>date_add(now(),interval-4 hour)','5','mailstore','2016/01/20 15:53:53','2016/01/20 05:54:46','0','substr(Concat(eventlogs.\`eventid\`,\': \', Replace(Replace(eventlogs.\`message\`,\'\\\'\', \'\'), \'\\n\', \'\')),1,250) AS loggedEvent','1','0','2016/01/20 15:55:23','root@localhost','9','0','0','60cb2371-726c-4cbd-ada6-16cebaa9a5bc','','0','0');