# DeleteFiles180DaysBeforeAndEmptyDirectories

This is an example of bat script for deleting 180 days before files and empty directories.
功能：实现定期自动将话单备份路径(F:\BillBak)里面的180天以前的文件删除。
二、依赖的工具：DelBakBill.bat，Windows自带命令FORFILES和sort.exe，Windows计划
三、步骤：
1.	将附件脚本保存到某个路径下，比如保存到桌面。
2.	打开管理员工具，创建任务计划。
2.1.	打开任务计划管理器，如下图： 
2.2.	创建任务计划。如下图，一步一步输入相应的配置信息。
 
 
 
 
 
3.	在保存的路径(如桌面)上双击DelBakBill.bat运行起来，并且不要关闭运行该脚本打开的命令行窗口。
附录：
