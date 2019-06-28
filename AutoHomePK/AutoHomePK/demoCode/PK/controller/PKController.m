//
//  PKController.m
//  CheCheng
//
//  Created by 张翼凌 on 16/3/8.
//  Copyright © 2016年 wswy. All rights reserved.
//

#import "PKController.h"
#import "PKHeadView.h"
#import "PKCarModel.h"
#import "PKTool.h"
#import "indexModel.h"
#import "PKCell.h"
#import "PkSectionView.h"
#import "PKheadModel.h"
#import "PkManager.h"
#import "PKDefine.h"
#define HeadHeight (80+10+36+10)
#define RightLabelWidth 100

#define KColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define GAP 0.5
#define sectionCount 14

@interface PKController ()<headviewDelegate,UITableViewDataSource,UITableViewDelegate,PKdelegate>

@property (nonatomic,assign)HiddenSame Hidden;    //是否隐藏相同项
@property (nonatomic,strong)PKHeadView *PkHeadView;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong)UIButton *leftBtn;
@property (nonatomic,strong)UIButton *rightBtn;
@property (nonatomic,strong)UISegmentedControl *Segment;

@property (nonatomic,strong)NSMutableArray *OriCars;    //原数据
@property (nonatomic,strong)NSMutableArray *PKCars;   //存储汽车模型数据
@property (nonatomic,strong)NSMutableArray *CarNames;   //头部数据

@property (nonatomic,strong) NSArray *ConfigSectionAry;   //section数组
@property (nonatomic,strong)NSMutableArray *indexPaths;  //表结构数组
@property (nonatomic,strong) NSArray *ConfigAry;   //配置参数
@property (nonatomic,strong)NSMutableArray *ParmsArys;   //去除相同项后的参数
@property (nonatomic,strong)NSMutableArray *DataAryTmps;     //去除相同项后的数据
@property (nonatomic,strong)NSMutableArray *DataArys;    //未去除相同项的数据

@property (nonatomic,strong)NSMutableArray *cells;    //存放缓存池的cell
@property (nonatomic,assign)CGPoint offset;

@property (nonatomic,strong)NSMutableArray *SectionHiddens;


@end

@implementation PKController

-(NSArray *)ConfigSectionAry{
    if (!_ConfigSectionAry) {
        _ConfigSectionAry = @[@"参数列表", @"基本参数", @"车身", @"发动机",
                              @"变速箱", @"底盘转向", @"车轮制动", @"安全装备",
                              @"操控配置", @"外部配置", @"内部配置", @"座椅配置",
                              @"多媒体配置", @"灯光配置", @"玻璃/后视镜", @"空调/冰箱", @"高科技配置"];
    }
    return _ConfigSectionAry;
}

- (NSArray *)ConfigAry{
    if (!_ConfigAry) {
        _ConfigAry = [PKTool configAry];
    }
    return _ConfigAry;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initAry];
    [self countData];
    [self initSegment];
    [self initTableView];
    [self initheadbackground];
    [self getDataForService];
    [self initmove];
    
}
-(void)initheadbackground{
    UIView *headback = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kSCREEN_WIDTH, HeadHeight)];
    [headback setBackgroundColor:color(32, 38, 51, 1)];
    [self.view addSubview:headback];
}
-(void)initAry{
    self.Hidden = Show;
    self.SectionHiddens = [NSMutableArray array];
    self.carsAry = [NSMutableArray array];
    self.carsAry = (NSMutableArray *)[[PkManager manager]getPkCarsArray];
    
    self.ParmsArys  =[NSMutableArray array];
    self.DataAryTmps = [NSMutableArray array];
    self.DataArys = [NSMutableArray array];
    self.cells = [NSMutableArray array];
    
    self.PKCars = [NSMutableArray array];
    self.CarNames = [NSMutableArray array];
    self.OriCars = [NSMutableArray array];
}
-(void)initmove{
    CGFloat height = 40;
    CGFloat width = 60;
    
    UIButton *leftbtn = [[UIButton alloc]initWithFrame:CGRectMake(0, kSCREEN_HEIGHT - height - height - self.navigationController.navigationBar.frame.size.height - 20, width, height)];
    self.leftBtn = leftbtn;
    [leftbtn addTarget:self action:@selector(move:) forControlEvents:UIControlEventTouchUpInside];
    leftbtn.tag = 2001;
    [leftbtn setBackgroundImage:[UIImage imageNamed:@"icon_gotoLeft"] forState:UIControlStateNormal];
    leftbtn.hidden = YES;
    [self.view addSubview:leftbtn];
    
    UIButton *rightbtn = [[UIButton alloc]initWithFrame:CGRectMake(kSCREEN_WIDTH - width, kSCREEN_HEIGHT - height -height - self.navigationController.navigationBar.frame.size.height - 20, width, height)];
    self.rightBtn = rightbtn;
    [rightbtn setBackgroundImage:[UIImage imageNamed:@"icon_gotoRight"] forState:UIControlStateNormal];
    [rightbtn addTarget:self action:@selector(move:) forControlEvents:UIControlEventTouchUpInside];
    rightbtn.hidden = YES;
    rightbtn.tag = 2002;
    [self.view addSubview:rightbtn];
}
-(void)move:(UIButton *)btn{
    
    CGFloat lab_w = 132;

    if (btn.tag == 2001) {
        if (self.PkHeadView.ScrollView.contentOffset.x < lab_w) {
            [self.PkHeadView.ScrollView setContentOffset:CGPointMake(0,0) animated:YES];
            return;
        }
        [self.PkHeadView.ScrollView setContentOffset:CGPointMake(self.PkHeadView.ScrollView.contentOffset.x - lab_w,0) animated:YES];
    }else{
        if (self.PkHeadView.ScrollView.contentSize.width <= kSCREEN_WIDTH) {
            return;
        }
        if (self.PkHeadView.ScrollView.contentOffset.x + kSCREEN_WIDTH >= self.PKCars.count*lab_w - lab_w - 10) {
            [self.PkHeadView.ScrollView setContentOffset:CGPointMake(self.PkHeadView.ScrollView.contentSize.width - kSCREEN_WIDTH,0) animated:YES];
            return;
        }
        [self.PkHeadView.ScrollView setContentOffset:CGPointMake(self.PkHeadView.ScrollView.contentOffset.x + lab_w,0) animated:YES];
    }
}

-(void)initSegment{
    NSArray *arr = [[NSArray alloc]initWithObjects:@"全部参数",@"隐藏相同",nil];
    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:arr];
    self.Segment = segment;
    segment.enabled = NO;
    [segment setTintColor:[UIColor whiteColor]];
    segment.frame = CGRectMake(0, 0, 180, 30);
    segment.layer.masksToBounds = YES;
    segment.layer.cornerRadius = segment.frame.size.height/2;
    segment.layer.borderWidth = 1;
    segment.layer.borderColor = [UIColor whiteColor].CGColor;
    segment.selectedSegmentIndex = 0;
    [segment addTarget:self action:@selector(hiddenSame:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segment;
}
-(void)initTableView{
    self.tableView= [[UITableView alloc]init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.clipsToBounds = NO;
    self.tableView.separatorStyle = NO;
    self.tableView.bounces = NO;
    [self.view addSubview:self.tableView];
    self.tableView.hidden = YES;

}
-(void)initHeadView{
    
    self.PkHeadView = [[PKHeadView alloc]initWithFrame:CGRectMake(0, 0, kSCREEN_WIDTH, HeadHeight) Count:self.CarNames.count Array:self.CarNames];
    [self.PkHeadView setBackgroundColor:[UIColor whiteColor]];
    self.PkHeadView.delegate = self;
    [self.PkHeadView.addbtn  addTarget:self action:@selector(addData:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.PkHeadView];

}
-(void)getDataForService{
    
    NSString *carIds = @"";
    for (int i = 0; i < self.carsAry.count ; i++) {
        NSString *appendStr = i == 0? [NSString stringWithFormat:@"%@",self.carsAry[i]]:[NSString stringWithFormat:@",%@",self.carsAry[i]];
        carIds = [carIds stringByAppendingString:appendStr];
    }
    NSLog(@"ID = %@",carIds);
    NSString *url = @"v1/compare";
    NSMutableDictionary *parameters = @{}.mutableCopy;
    [parameters setObject:carIds forKey:@"carIds"];
    [parameters setObject:@"0" forKey:@"type"];

//    [super loading:YES full:NO];
//
//    HttpReq *req = [HttpReq req:self action:url];
//    [req.params addEntriesFromDictionary:parameters];
//    [Http Call:req];
    [self analysisDatas];
    self.tableView.hidden = NO;
}
//-(void)reqOk:(HttpReply *)reply keyback:(int)keyback{
//    self.OriCars = [reply.datas objectForKey:@"carBaseConfList"];
////    NSLog(@"数量 = %ld",self.OriCars.count);
//    [self analysisDatas];
//    [super loading:NO full:NO];
//    self.tableView.hidden = NO;
//}

//-(void)reqFail:(HttpFail *)fail keyback:(int)keyback{
//    NSLog(@"错误 = %@",fail.error);
//    if ([fail.error.userInfo objectForKey:@"remark"]) {
//        [OMGToast showWithText:[fail.error.userInfo objectForKey:@"remark"]];
//    }else{
//        [OMGToast showWithText:@"请求超时" duration:3.0];
//    }
//    [super loading:NO full:NO];
//}
//加载成功后解析数据
-(void)analysisDatas{
    NSString *pathBundle = [[NSBundle mainBundle]pathForResource:@"car-infos" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:pathBundle];
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    self.OriCars = dic[@"data"];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        @autoreleasepool {
            if (self.OriCars) {
                for (int i = 0; i < self.OriCars.count; i++) {
                    NSDictionary *dict = self.OriCars[i];
                    PKCarModel *car = [[PKCarModel alloc] initWithDictionary:dict];
                    [self.PKCars addObject:car];
                    //获取头部数据
                    PKheadModel *model = [[PKheadModel alloc]init];
                    model.carname = car.carNm.carNm;
                    model.image = car.carNm.carImage;
                    model.price = car.carNm.carPrice;
                    [self.CarNames addObject:model];
                }
                [self countData];
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.Segment.enabled = YES;
                    int lab_w = 132;
                    int count = kSCREEN_WIDTH/lab_w;
                    if (self.PKCars.count > count) {
                        self.rightBtn.hidden = NO;
                    }
                    [self.tableView reloadData];
                    [self initHeadView];
                });
            }
        }
    });
}

#pragma mark - table view dataSource

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (self.Hidden == Hidden) {
        return [self countCellHeight:self.DataAryTmps[indexPath.section][indexPath.row]];
    }else if(self.Hidden == Show){
        return [self countCellHeight:self.DataArys[indexPath.section][indexPath.row]];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    PKCell  *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[PKCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.ScrollView.contentOffset=self.offset;
        [self.cells addObject:cell];
        cell.delegate = self;
    }
    if (self.Hidden == Show) {
        cell.title = [[self.ConfigAry objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        cell.datas = self.DataArys[indexPath.section][indexPath.row];
    }else if (self.Hidden == Hidden){
        cell.title = [[self.ParmsArys objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        cell.datas = self.DataAryTmps[indexPath.section][indexPath.row];
    }
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (self.Hidden == Hidden) {
        return self.ParmsArys.count;
    }
    return sectionCount;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.Hidden == Hidden) {
        return [[self.ParmsArys objectAtIndex:section] count];
    }
    return [[self.ConfigAry objectAtIndex:section] count];
}

#pragma mark -- sectionHead
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    PkSectionView *pkview = [[PkSectionView alloc]initWithFrame:CGRectMake(0, 0, kSCREEN_WIDTH, 40)];
    [pkview setBackgroundColor:KColor(224, 225, 226)];
    pkview.lab.text =self.ConfigSectionAry[section];
    return pkview;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    if (self.Hidden == Hidden) {
        for (NSNumber *num in self.SectionHiddens) {
            NSNumber *index = [NSNumber numberWithInteger:section];
            if ([num isEqualToNumber:index]) {
                return 0.0f;
            }
        }
    }
    return 40;
}

//隐藏相同
-(void)hiddenSame:(UISegmentedControl *)segment{
    
    if (self.PKCars.count == 1) {
//        if (segment.selectedSegmentIndex == 1) {
//            [OMGToast showWithText:@"无相同项"];
//        }
        return;
    }
    if (self.Hidden == Show) {
        self.Hidden = Hidden;
        [self.tableView reloadData];
    }else{
        self.Hidden = Show;
        [self.tableView reloadData];
    }
}

//增加数据
-(void)addData:(UIButton *)btn{


}
//删除数据
-(void)close:(NSInteger)index{
    
    [[PkManager manager] reduceCars:self.carsAry[index]];
    [self.PKCars removeObjectAtIndex:index];
    [self countData];
    [self.tableView reloadData];
    //如果pk数量为0，返回上一页
    if (self.PKCars.count ==0) {
//        [super back];
    }
    if (self.PKCars.count <= 2) {
        self.leftBtn.hidden = YES;
        self.rightBtn.hidden = YES;
    }
    if (self.PKCars.count <= 1) {
        self.Hidden = Show;
        [self.tableView reloadData];
    }
}
//滚动
-(void)roll:(CGPoint)offset{
    
    self.offset = offset;
    self.PkHeadView.ScrollView.contentOffset = offset;
    for (PKCell *cell in self.cells) {
        cell.ScrollView.contentOffset=offset;
    }
    if (offset.x == 0) {
        self.leftBtn.hidden = YES;
    }else{
        self.leftBtn.hidden = NO;
    }
    int lab_w = 132;
    if (offset.x + kSCREEN_WIDTH >= self.PKCars.count*lab_w - 10) {
        self.rightBtn.hidden = YES;
    }else{
        self.rightBtn.hidden = NO;
    }
}
//咨询
-(void)quiry:(UIButton *)btn{
    
}

//数据计算
-(void)countData{
    
    [self.ParmsArys removeAllObjects];
    [self.DataArys removeAllObjects];
    [self.DataAryTmps removeAllObjects];
    
    for (int i = 0; i<sectionCount; i++) {
        NSMutableArray *ary  =[NSMutableArray array];
        [self.ParmsArys addObject:ary];
    }
    self.DataAryTmps = [NSMutableArray array];
    for (int i = 0; i < sectionCount; i ++) {
        NSMutableArray *secary = [NSMutableArray array];
        [self.DataAryTmps addObject:secary];
    }
    self.DataArys = [NSMutableArray array];
    for (int i = 0; i < sectionCount; i ++) {
        NSMutableArray *Asecary = [NSMutableArray array];
        [self.DataArys  addObject:Asecary];
    }

    //初始化indexpath对象
    NSMutableArray *Indexs = [NSMutableArray array];
    for (int i = 0; i<sectionCount; i++) {
        for (int j = 0; j<[[self.ConfigAry objectAtIndex:i] count]; j++) {
            indexModel *indexpath =[[indexModel alloc]init];
            indexpath.section = i;
            indexpath.row  = j;
            [Indexs addObject:indexpath];
        }
    }
    //给字符串赋值后对比
    for (indexModel *indexpath in Indexs) {
        NSMutableArray *strs = [NSMutableArray array];
        for (int i = 0; i < self.PKCars.count; i++) {
            PKCarModel *car = (PKCarModel *)self.PKCars[i];
            NSString *str = [PKTool getStr:car Index:indexpath.row section:indexpath.section];
            if (str == nil) {
                str = @"";
            }
            [strs addObject:str];
        }
        switch (indexpath.section) {
            case 0: [self.DataArys[0] addObject:strs];  break;
            case 1: [self.DataArys[1] addObject:strs];  break;
            case 2: [self.DataArys[2] addObject:strs];  break;
            case 3: [self.DataArys[3] addObject:strs];  break;
            case 4: [self.DataArys[4] addObject:strs];  break;
            case 5: [self.DataArys[5] addObject:strs];  break;
            case 6: [self.DataArys[6] addObject:strs];  break;
            case 7: [self.DataArys[7] addObject:strs];  break;
            case 8: [self.DataArys[8] addObject:strs];  break;
            case 9: [self.DataArys[9] addObject:strs];  break;
            case 10: [self.DataArys[10] addObject:strs];  break;
            case 11: [self.DataArys[11] addObject:strs];  break;
            case 12: [self.DataArys[12] addObject:strs];  break;
            case 13: [self.DataArys[13] addObject:strs];  break;
            case 14: [self.DataArys[14] addObject:strs];  break;
            case 15: [self.DataArys[15] addObject:strs];  break;
            case 16: [self.DataArys[16] addObject:strs];  break;

            default:
                break;
        }
        
        
        if (strs.count >0) {
            NSString *strtmp = strs[0];
            BOOL Equal = YES;
            for (NSString *str in strs) {
                if (![str isEqualToString:strtmp]) {
                    Equal = NO;
                }
            }
            if (Equal) {
                [self.indexPaths addObject:indexpath];
                
            }else{
//                [self.NOindexPaths addObject:indexpath];
                switch (indexpath.section) {
                    case 0: {[self.DataAryTmps[0] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[0] addObject:ary[indexpath.row]];
                        break;}
                    case 1: {[self.DataAryTmps[1] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[1] addObject:ary[indexpath.row]];
                        break;}
                    case 2: {[self.DataAryTmps[2] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[2] addObject:ary[indexpath.row]];
                        break;}
                    case 3: {[self.DataAryTmps[3] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[3] addObject:ary[indexpath.row]];
                        break;}
                    case 4: {[self.DataAryTmps[4] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[4] addObject:ary[indexpath.row]];
                        break;}
                    case 5: {[self.DataAryTmps[5] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[5] addObject:ary[indexpath.row]];
                        break;}
                    case 6: {[self.DataAryTmps[6] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[6] addObject:ary[indexpath.row]];
                        break;}
                    case 7: {[self.DataAryTmps[7] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[7] addObject:ary[indexpath.row]];
                        break;}
                    case 8: {[self.DataAryTmps[8] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[8] addObject:ary[indexpath.row]];
                        break;}
                    case 9: {[self.DataAryTmps[9] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[9] addObject:ary[indexpath.row]];
                        break;}
                    case 10: {[self.DataAryTmps[10] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[10] addObject:ary[indexpath.row]];
                        break;}
                    case 11: {[self.DataAryTmps[11] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[11] addObject:ary[indexpath.row]];
                        break;}
                    case 12: {[self.DataAryTmps[12] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[12] addObject:ary[indexpath.row]];
                        break;}
                    case 13: {[self.DataAryTmps[13] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[13] addObject:ary[indexpath.row]];
                        break;}
                    case 14: {[self.DataAryTmps[14] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[14] addObject:ary[indexpath.row]];
                        break;}
                    case 15: {[self.DataAryTmps[15] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[15] addObject:ary[indexpath.row]];
                        break;}
                    case 16: {[self.DataAryTmps[16] addObject:strs];
                        NSArray *ary = self.ConfigAry[indexpath.section];
                        [self.ParmsArys[16] addObject:ary[indexpath.row]];
                        break;}
                        
                    default:
                        break;
                }
                
            }
        }
    }
    if (self.PKCars.count > 0) {
        
        for (int i = 0; i < self.DataAryTmps.count; i++) {
            NSMutableArray *ary = self.DataAryTmps[i];
            if (ary.count == 0) {
                NSNumber *num=[NSNumber numberWithInt:i];
                [self.SectionHiddens addObject:num];
            }
        }
    }
//    NSLog(@"section = %@",self.SectionHiddens);
//    NSLog(@"去相同数据 = %@",self.DataAryTmps);
//    NSLog(@"数据 = %@",self.DataArys);
//    NSLog(@"去相同参数 = %@",self.ParmsArys);

}
-(NSInteger)countCellHeight:(NSArray *)ary{
    
    for (NSString *str in ary) {
        CGRect frame = [str boundingRectWithSize:CGSizeMake(110, 999) options:NSStringDrawingUsesLineFragmentOrigin  attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14]} context:nil];
        
        if ([str rangeOfString:@"万"].location != NSNotFound && [str rangeOfString:@"年"].location == NSNotFound) {
            return 100;
        }
        if (frame.size.height > 30) {
            return 100;
        }
    }
    return 75;
}

- (void) viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    CGRect headframe = self.PkHeadView.frame;
    headframe.origin.x = 0;
    headframe.origin.y = self.navigationController.navigationBar.frame.size.height + 20;
    headframe.size.width = self.view.width;
    headframe.size.height =HeadHeight;
    self.PkHeadView.frame = headframe;
    
    CGRect frame = self.tableView.frame;
    frame.origin.x = 0;
    frame.origin.y = self.PkHeadView.bottom;
    frame.size.width = self.view.width;
    frame.size.height = self.view.height - HeadHeight;
    self.tableView.frame = frame;
}


@end
