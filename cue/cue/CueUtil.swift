//
//  CueUtil.swift
//  cue
//
//  Created by Matthew on 2022/5/28.
//

import Foundation

func initCuePortConfig() -> [CuePortPara]{
    let serialPortParaList = ["串口", "波特率", "数据位", "校验位", "停止位"]
    var baudrateConfig =
    CuePortPara(portParaName: serialPortParaList[1], paraDataList: BaudrateConstants.BaudRate_List)
    var dataBitsConfig =
    CuePortPara(portParaName: serialPortParaList[2], paraDataList: DataBitsConstants.DataBits_List)
    var parityConfig =
    CuePortPara(portParaName: serialPortParaList[3], paraDataList: ParityConstants.Parity_List)
    var stopBitsConfig =
    CuePortPara(portParaName: serialPortParaList[4], paraDataList: StopBitsConstants.StopBits_List)
    
    let paraConfigList:[CuePortPara] = [
        baudrateConfig,
        dataBitsConfig,
        parityConfig,
        stopBitsConfig,
    ]
    return paraConfigList

}
