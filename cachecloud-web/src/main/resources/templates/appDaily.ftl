<!DOCTYPE html>
<head>
    <meta charset=UTF-8/>
    <title>CacheCloud应用日报</title>
</head>
<body>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<p>
<table style="width:100%; font-size:12px;" width="100%" cellpadding="0" cellspacing="0">
    <colgroup>
        <col style="width: 5px;">
    </colgroup>
    <tr>
        <td></td>
        <td style="padding-top:20px; padding-left:27px;">
        	<ul>
                <li><span style="font-weight: bold; padding-top:20px; color:#3f3f3f;">应用详细信息：${appDesc.appId?c}</span></li>
            </ul>
            <table style="table-layout:fixed;width: 872px;border-collapse: collapse;word-break: break-all;word-wrap:break-word;border-top: 1px dotted #676767;text-align: center;color: #000; font-family:'宋体'; font-size:12px; margin-top:10px; margin-left: 24px">
                <tr>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        应用名称：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        ${appDesc.name!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        应用类型：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        ${appDesc.typeDesc!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        应用状态：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        ${appDesc.statusDesc!}
                    </td>
                </tr>
                <tr>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        应用描述：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        ${appDesc.intro!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        应用负责人：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        ${appDesc.officer!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        应用申请时间：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        ${appDesc.createTime?string("yyyy-MM-dd HH:mm:ss")!}
                    </td>
                </tr>
            </table>
        
            <ul>
                <li><span style="font-weight: bold; padding-top:20px; color:#3f3f3f;">客户端相关(确保使用有客户端统计的版本):</span></li>
            </ul>
            <table style="table-layout:fixed;width: 872px;border-collapse: collapse;word-break: break-all;word-wrap:break-word;border-top: 1px dotted #676767;text-align: center;color: #000; font-family:'宋体'; font-size:12px; margin-top:10px; margin-left: 24px">
                <tr>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        客户端值分布(全天):
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
						${appDailyData.valueSizeDistributeCountDesc!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; text-align: left;height:33px; width: 50px;">
                        客户端连接数(每分钟)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        最大值:${appDailyData.maxMinuteClientCount!} <br/>
                        平均值:${appDailyData.avgMinuteClientCount!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; text-align: left;height:33px; width: 50px;">
                        客户端延迟事件数(全天)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        ${appDailyData.latencyCount!}
                    </td>
                </tr>
                <tr>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        命令调用统计(全天):
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        次数:${appDailyData.clientCmdCount!}<br/>
                        平均耗时(ms):${appDailyData.clientAvgCmdCost!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; text-align: left;height:33px; width: 50px;">
                        连接异常统计(全天)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        次数:${appDailyData.clientConnExpCount!}<br/>
                        平均耗时(ms):${appDailyData.clientAvgConnExpCost!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; text-align: left;height:33px; width: 50px;">
                        命令超时统计(全天)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        次数:${appDailyData.clientCmdExpCount!} <br/>
                        平均耗时(ms):${appDailyData.clientAvgCmdExpCost!}
                    </td>
                </tr>
            </table>
            <br/>
            
            <ul>
                <li><span style="font-weight: bold; padding-top:20px; color:#3f3f3f;">服务端相关:</span></li>
            </ul>
            <table style="table-layout:fixed;width: 872px;border-collapse: collapse;word-break: break-all;word-wrap:break-word;border-top: 1px dotted #676767;text-align: center;color: #000; font-family:'宋体'; font-size:12px; margin-top:10px; margin-left: 24px">
                <tr>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        慢查询个数(全天)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        ${appDailyData.slowLogCount!}
                    </td>
					<td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        命令次数(每分钟)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                       	 最大值:${appDailyData.maxMinuteCommandCount!} <br/>
                       	 平均值:${appDailyData.avgMinuteCommandCount!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        命中率(每分钟)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                       	 最大值:${appDailyData.maxMinuteHitRatio!}% <br/>
                       	 最小值:${appDailyData.minMinuteHitRatio!}% <br/>
                       	 平均值:${appDailyData.avgHitRatio!}%
                    </td>
                </tr>
                
                <tr>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        内存使用量(全天)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        平均使用量:${appDailyData.avgUsedMemory!} M<br/>
                        最大使用量:${appDailyData.maxUsedMemory!} M
                    </td>
					<td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        过期键数(全天)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                       	 ${appDailyData.expiredKeysCount!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        剔除键数(全天)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                       	 ${appDailyData.evictedKeysCount!}
                    </td>
                </tr>
                
                <tr>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                       键个数(全天)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        平均值:${appDailyData.avgObjectSize!}<br/>
                        最大值:${appDailyData.maxObjectSize!}
                    </td>
					<td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        input流量(每分钟)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                       	 平均值:${appDailyData.avgMinuteNetInputByte!} M<br/>
                       	 最大值:${appDailyData.maxMinuteNetInputByte!} M<br/>
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767;text-align: left; height:33px; width: 50px;">
                        output流量(每分钟)：
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                       	 平均:${appDailyData.avgMinuteNetOutputByte!} M<br/>
                       	 最大:${appDailyData.maxMinuteNetOutputByte!} M<br/>
                    </td>
                </tr>
            </table>
            <br/>
            
        </td>
    </tr>

</table>
</p>
</body>
</html>