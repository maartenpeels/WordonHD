.class public Lcom/freshplanet/ane/AirDeviceId/functions/IsSupportedFunction;
.super Ljava/lang/Object;
.source "IsSupportedFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "[AirDeviceId] IsSupported -"

    sput-object v0, Lcom/freshplanet/ane/AirDeviceId/functions/IsSupportedFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 40
    sget-object v1, Lcom/freshplanet/ane/AirDeviceId/functions/IsSupportedFunction;->TAG:Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "exception":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v1, Lcom/freshplanet/ane/AirDeviceId/functions/IsSupportedFunction;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v1, 0x0

    goto :goto_0
.end method
