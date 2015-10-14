.class public Lso/cuo/platform/chartboost/fun/ShowMoreApp;
.super Lso/cuo/platform/chartboost/fun/AneFun;
.source "ShowMoreApp.java"


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
    .locals 1
    .param p1, "ctx"    # Lso/cuo/platform/chartboost/ChartboostContext;
    .param p2, "ps"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lso/cuo/platform/chartboost/fun/AneFun;->doCall(Lso/cuo/platform/chartboost/ChartboostContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 14
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showMoreApps(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method
