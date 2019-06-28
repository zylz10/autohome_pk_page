//
//  PKTool.m
//  doubleTableView
//
//  Created by z1013 on 15/10/14.
//  Copyright (c) 2015年 z10. All rights reserved.
//

#import "PKTool.h"

@interface PKTool ()

@property (nonatomic, strong) NSMutableArray *itemsAry;

@end

@implementation PKTool


+ (NSArray *)configAry{
    NSArray *baseParameter = @[@"最大功率",
                               @"最大扭矩",
                               @"发动机",
                               @"变速箱",
                               @"长宽高",
                               ];
    NSArray *carBody = @[@"长度",
                         @"宽度",
                         @"高度",
                         @"轴距",
                         @"前轮距",
                         @"后轮距",
                         @"油箱容积",
                         @"行李箱容积",
                         @"整备质量",
                         ];
    NSArray *engine = @[@"最大功率",
                        @"最大功率转速",
                        @"最大扭矩",
                        @"最大扭矩转速",
                        @"缸盖材料",
                        @"缸体材料",
                        @"环保标准",
                        ];
    NSArray *transmission = @[@"挡位个数",
                              @"变速箱类型",
                              @"简称",
                              ];
    NSArray *chassis = @[@"前悬架类型",
                         @"后悬架类型",
                         @"助力类型",
                         ];
    NSArray *wheel = @[@"前制动器类型",
                       @"后制动器类型",
                       @"驻车制动类型",
                       @"前轮胎规格",
                       @"后轮胎规格",
                       ];
    NSArray *safety = @[@"主/副驾驶座安全气囊",
                        @"前/后排侧气囊",
                        @"前/后排头部气囊（气帘）",
                        @"发动机舱全包覆",
                        @"胎压监测装置",
                        @"前排高度可调限力式安全带",
                        @"前排高度可调限力预紧式安全带",
                        @"安全带未系提示",
                        @"ISOFIX儿童座椅接口",
                        @"ABS防抱死",
                        @"制动力分配（EBD/CBC等）",
                        @"刹车辅助（EBA/BAS/BA等）",
                        @"牵引力控制（ASR/TCS/TRC等）",
                        @"车身稳定控制（ESC/ESP/DSC等）",
                        @"HEEAB高刚度吸能构架车身",
                        @"后门儿童安全锁",
                        @"ESS紧急制动警示功能",
                        ];
    NSArray *auxiliary = @[@"发动机启停技术",
                           @"48V能量回收加速辅助系统",
                           @"换挡提醒系统",
                           @"上坡辅助",
                           @"前/后驻车雷达",
                           @"倒车视频影像",
                           @"右侧盲区可视系统",
                           @"定速巡航",
                           @"自适应巡航",
                           ];
    NSArray *guard = @[@"电动天窗",
                       @"发动机电子防盗",
                       @"行李箱锁（可钥匙遥控及触控解锁）",
                       @"行李箱铰链装饰包覆",
                       @"无钥匙启动系统",
                       @"无钥匙进入系统",
                       @"包围式全窗镀铬装饰条",
                       @"外门把手镀铬装饰",
                       @"车顶激光焊接工艺",
                       @"尾部横贯式高亮镀铬条",
                       @"B柱及后三角窗钢琴漆装饰",
                       @"灵动鲨鱼鳍天线",
                       ];
    NSArray *internal = @[@"皮质方向盘",
                          @"多功能方向盘",
                          @"全液晶仪表盘",
                          @"内置行车记录仪",
                          @"环保材料软质仪表台",
                          @"INS模内嵌膜金属质感饰板",
                          @"激光镭雕金属质感饰板",
                          @"豪华高中央通道设计",
                          @"12V电源接口",
                          ];
    NSArray *chair = @[@"座椅材质",
                       @"主座椅高低调节",
                       @"主/副驾驶座电动调节",
                       @"前/后中央扶手",
                       @"后排中央头枕",
                       @"后排杯架",
                       ];
    NSArray *media = @[@"GPS导航系统",
                       @"中控台彩色大屏",
                       @"中控台彩色大屏尺寸",
                       @"触控式副驾显示屏",
                       @"远程车况查询诊断",
                       @"OTA车载系统远程升级",
                       @"蓝牙/车载电话",
                       @"车联网",
                       @"外接音源接口",
                       @"扬声器数量",
                       @"海量在线音乐&电台资源",
                       @"一键人工后台服务",
                       @"智能语音交互系统",
                       ];
    NSArray *led = @[@"近光灯",
                     @"远光灯",
                     @"LED日间行车灯",
                     @"自动头灯",
                     @"大灯高度可调",
                     @"前后位置灯“呼吸”功能",
                     @"后排阅读灯",
                     @"大灯忘关蜂鸣器提醒",
                     ];
    NSArray *glass = @[@"前/后电动车窗",
                       @"防紫外线玻璃",
                       @"车窗一键升降",
                       @"车窗防夹手功能",
                       @"外后视镜电动调节",
                       @"外后视镜加热",
                       @"外后视镜电动折叠（带锁车自动折叠）",
                       @"外后视镜记忆",
                       @"外后视镜倒车自动下翻",
                       ];
    NSArray *air = @[@"空调温度控制方式",
                     @"车载空气净化器",
                     ];
    
//    "carBody":{},
//    "engine":{},
//    "transmission":{},
//    "chassis":{},
//    "wheel":{},
//    "safety":{},
//    "auxiliary":{},
//    "guard":{},
//    "internal":{},
//    "chair":{},
//    "media":{},
//    "led":{},
//    "glass":{},
//    "air":{},

    NSArray *configAry = @[baseParameter,
                           carBody,
                           engine,
                           transmission,
                           chassis,
                           wheel,
                           safety,
                           auxiliary,
                           guard,
                           internal,
                           chair,
                           media,
                           led,
                           glass,
                           air];
    return configAry;
}


+(void)LoadCarData{
    
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"pkcarother.plist" ofType:nil]];
    //    NSLog(@"array = %@",array);
    NSMutableArray *sectionAry = [NSMutableArray array];
//    NSMutableArray *section1Ary = [NSMutableArray array];
//    NSMutableArray *section2Ary = [NSMutableArray array];
//    NSMutableArray *section3Ary = [NSMutableArray array];
//    NSMutableArray *section4Ary = [NSMutableArray array];
    
    for (NSArray *CarAry in array) {
        NSLog(@"CarAry = %@",CarAry);
        for (int i = 0; i<CarAry.count; i++) {
            NSDictionary *dic = CarAry[i];
            if (i == 0) {
                NSString *str = [dic objectForKey:@"a1"];
                [sectionAry addObject:str];
            }
        }
    }
    NSLog(@"senctionAry = %@",sectionAry);
    
}

+(NSString *)getStr:(PKCarModel *)car Index:(NSInteger)row section:(NSInteger)section{

    NSString *str;
    
    switch (section) {

        case 0:
        {
            BaseParameter *obj = car.baseParameter;
            switch (row) {
                case 0: str = obj.baseMaxPower;  break;
                case 1: str = obj.baseMaxTorque; break;
                case 2: str = obj.engine; break;
                case 3: str = obj.gearbox; break;
                case 4: str = obj.dimensions; break;
                default:
                    break;
            }
        }
            break;

        case 1:
        {
            CarBody *obj = car.carBody;
            switch (row) {
                case 0: str = obj.length;   break;
                case 1: str = obj.width;   break;
                case 2: str = obj.height;   break;
                case 3: str = obj.wheelbase;   break;
                case 4: str = obj.frontGauge;   break;
                case 5: str = obj.trackRear;   break;
                case 6: str = obj.tankVolume;   break;
                case 7: str = obj.trunkVolume;   break;
                case 8: str = obj.unladenMass;   break;
                default:
                    break;
            }
        }
            break;

        case 2:
        {
            Engine *obj = car.engine;
            switch (row) {
                case 0: str = obj.engineMaxPower;   break;
                case 1: str = obj.rpm;   break;
                case 2: str = obj.engineMaxTorque;   break;
                case 3: str = obj.maxTorqueSpeed;   break;
                case 4: str = obj.headmaterial;   break;
                case 5: str = obj.bodyMaterial;   break;
                case 6: str = obj.standards;   break;
                default:
                    break;
            }
        }
            break;

        case 3:
        {
            Transmission *obj = car.transmission;
            switch (row) {
                case 0: str = obj.blockNumber;   break;
                case 1: str = obj.gearboxType;   break;
                case 2: str = obj.forShort;   break;
                default:
                    break;
            }
        }
            break;

        case 4:
        {
            Chassi *obj = car.chassis;
            switch (row) {
                case 0: str = obj.frontSuspensionType;   break;
                case 1: str = obj.behindSuspensionType;   break;
                case 2: str = obj.powerType;   break;
                default:
                    break;
            }
        }
            break;

        case 5:
        {
            Wheel *obj = car.wheel;
            switch (row) {
                case 0: str = obj.frontBrakeType;   break;
                case 1: str = obj.behindBrakeType;   break;
                case 2: str = obj.parkingBrakeType;   break;
                case 3: str = obj.frontTireType;   break;
                case 4: str = obj.behindTireType;   break;
                default:
                    break;
            }
        }
            break;
        case 6:
        {
            Safety *obj = car.safety;
            switch (row) {
                case 0: str = obj.sRS;   break;
                case 1: str = obj.sAB;   break;
                case 2: str = obj.headAirbag;   break;
                case 3: str = obj.engineCovered;   break;
                case 4: str = obj.tirePressure;   break;
                case 5: str = obj.frontSeatBelt;   break;
                case 6: str = obj.frontSeatBeltYj;   break;
                case 7: str = obj.safetyBeltHint;   break;
                case 8: str = obj.isofix;   break;
                case 9: str = obj.aBS;   break;
                case 10: str = obj.eBD;   break;
                case 11: str = obj.eBA;   break;
                case 12: str = obj.aSR;   break;
                case 13: str = obj.eSC;   break;
                case 14: str = obj.hEEAB;   break;
                case 15: str = obj.backDoorLock;   break;
                case 16: str = obj.eSS;   break;
                default:
                    break;
            }
        }
            break;

        case 7:
        {
            Auxiliary *obj = car.auxiliary;
            switch (row) {
                case 0: str = obj.gSG;   break;
                case 1: str = obj.energyRecoverySystem;   break;
                case 2: str = obj.shiftAlertSystem;   break;
                case 3: str = obj.hAC;   break;
                case 4: str = obj.frontAndbackParkingRadar;   break;
                case 5: str = obj.rverseVideoImage;   break;
                case 6: str = obj.rightVisualSystem;   break;
                case 7: str = obj.cCS;   break;
                case 8: str = obj.adaptiveCruiseControl;   break;
                default:
                    break;
            }
        }
            break;
        case 8:
        {
            Guard *obj = car.guard;
            switch (row) {
                case 0: str = obj.powerSunroof;   break;
                case 1: str = obj.eMMO;   break;
                case 2: str = obj.trunklock;   break;
                case 3: str = obj.trimPackage;   break;
                case 4: str = obj.pEPS;   break;
                case 5: str = obj.pKE;   break;
                case 6: str = obj.surroundedWindow;   break;
                case 7: str = obj.exteriorDoor;   break;
                case 8: str = obj.laserWelding;   break;
                case 9: str = obj.tailCrossBright;   break;
                case 10: str = obj.pianoLacquer;   break;
                case 11: str = obj.smartShark;   break;
                default:
                    break;
            }
        }
            break;
            /*内部配置*/
        case 9:
        {
            Internal *obj = car.internal;
            switch (row) {
                case 0: str = obj.leatherSteeringWheel;   break;
                case 1: str = obj.mFL;   break;
                case 2: str = obj.allLcdInstrument;   break;
                case 3: str = obj.builtInRecorder;   break;
                case 4: str = obj.environmentalSoftInstrument;   break;
                case 5: str = obj.iNS;   break;
                case 6: str = obj.laserTexture;   break;
                case 7: str = obj.centralAisleDesign;   break;
                case 8: str = obj.powerPort;   break;
                default:
                    break;
            }
        }
            break;
        case 10:
        {
            Chair *obj = car.chair;
            switch (row) {
                case 0: str = obj.seatMaterial;   break;
                case 1: str = obj.adjustSeat;   break;
                case 2: str = obj.electricAdjustment;   break;
                case 3: str = obj.centreArmrest;   break;
                case 4: str = obj.backCenterHeadrest;   break;
                case 5: str = obj.rearStand;   break;
                default:
                    break;
            }
        }
            break;

        case 11:
        {
            Media *obj = car.media;
            switch (row) {
                case 0: str = obj.gPS;   break;
                case 1: str = obj.sensus;   break;
                case 2: str = obj.screenSize;   break;
                case 3: str = obj.displayScreen;   break;
                case 4: str = obj.remoteQuery;   break;
                case 5: str = obj.oTA;   break;
                case 6: str = obj.carTelephone;   break;
                case 7: str = obj.carNetworking;   break;
                case 8: str = obj.externalAudioInterface;   break;
                case 9: str = obj.speakerNumber;   break;
                case 10: str = obj.radioResources;   break;
                case 11: str = obj.backgroundService;   break;
                case 12: str = obj.interactionSystem;   break;
                default:
                    break;
            }
        }
            break;

        case 12:
        {
            Led *obj = car.led;
            switch (row) {
                case 0: str = obj.dippedHeadlight;   break;
                case 1: str = obj.highBeam;   break;
                case 2: str = obj.drivingLamp;   break;
                case 3: str = obj.autoLight;   break;
                case 4: str = obj.headlightsAdjustable;   break;
                case 5: str = obj.lightsLreathing;   break;
                case 6: str = obj.readingLight;   break;
                case 7: str = obj.headlightsForget;   break;
                default:
                    break;
            }
        }
            break;

        case 13:
        {
            Glas *obj = car.glass;
            switch (row) {
                case 0: str = obj.powerWindow;   break;
                case 1: str = obj.interceptingGlass;   break;
                case 2: str = obj.windowAdjustable;   break;
                case 3: str = obj.windowAnti;   break;
                case 4: str = obj.electricAdjusting;   break;
                case 5: str = obj.mirrorHeated;   break;
                case 6: str = obj.electricFolding;   break;
                case 7: str = obj.mirrorMemory;   break;
                case 8: str = obj.mirrorAutomatically;   break;
                default:
                    break;
            }
        }
            break;

        case 14:
        {
            Air *obj = car.air;
            switch (row) {
                case 0: str = obj.airControl;   break;
                case 1: str = obj.carPurifier;   break;
                default:
                    break;
            }
        }
            break;
            
        default:
            break;
    }

    return str;
}

+ (NSString *)deleteSpace:(NSString *)string
{
    NSString *str = [string stringByReplacingOccurrencesOfString:@"&nbsp;" withString:@""];
    return str;
}


@end
