.class public Lso/cuo/platform/chartboost/fun/InitChartboost;
.super Lso/cuo/platform/chartboost/fun/AneFun;
.source "InitChartboost.java"


# static fields
.field public static appId:Ljava/lang/String;

.field public static appSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lso/cuo/platform/chartboost/fun/AneFun;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCall(Lso/cuo/platform/chartboost/ChartboostContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "ctx"    # Lso/cuo/platform/chartboost/ChartboostContext;
    .param p2, "ps"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lso/cuo/platform/chartboost/fun/AneFun;->doCall(Lso/cuo/platform/chartboost/ChartboostContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lso/cuo/platform/chartboost/fun/InitChartboost;->getString([Lcom/adobe/fre/FREObject;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lso/cuo/platform/chartboost/fun/InitChartboost;->appId:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lso/cuo/platform/chartboost/fun/InitChartboost;->getString([Lcom/adobe/fre/FREObject;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lso/cuo/platform/chartboost/fun/InitChartboost;->appSignature:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lso/cuo/platform/chartboost/ChartboostContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lso/cuo/platform/chartboost/fun/InitChartboost;->appId:Ljava/lang/String;

    sget-object v2, Lso/cuo/platform/chartboost/fun/InitChartboost;->appSignature:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lso/cuo/platform/chartboost/InterstitialAdListener;

    invoke-direct {v0, p1}, Lso/cuo/platform/chartboost/InterstitialAdListener;-><init>(Lso/cuo/platform/chartboost/ChartboostContext;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 21
    invoke-virtual {p1}, Lso/cuo/platform/chartboost/ChartboostContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 22
    invoke-virtual {p1}, Lso/cuo/platform/chartboost/ChartboostContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
