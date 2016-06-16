.class public Lso/cuo/platform/chartboost/ChartboostExtension;
.super Ljava/lang/Object;
.source "ChartboostExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static context:Lso/cuo/platform/chartboost/ChartboostContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "extId"    # Ljava/lang/String;

    .prologue
    .line 10
    new-instance v0, Lso/cuo/platform/chartboost/ChartboostContext;

    invoke-direct {v0}, Lso/cuo/platform/chartboost/ChartboostContext;-><init>()V

    sput-object v0, Lso/cuo/platform/chartboost/ChartboostExtension;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    .line 11
    sget-object v0, Lso/cuo/platform/chartboost/ChartboostExtension;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lso/cuo/platform/chartboost/ChartboostExtension;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    invoke-virtual {v0}, Lso/cuo/platform/chartboost/ChartboostContext;->dispose()V

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lso/cuo/platform/chartboost/ChartboostExtension;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    .line 18
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
