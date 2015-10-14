.class public Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AirDeviceIdExtensionContext.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "[AirDeviceId]"

    sput-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtensionContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 38
    sget-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtensionContext;->TAG:Ljava/lang/String;

    const-string v1, "Creating Extension Context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtensionContext;->TAG:Ljava/lang/String;

    const-string v1, "Disposing Extension Context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtension;->context:Lcom/adobe/fre/FREContext;

    .line 46
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v1, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtensionContext;->TAG:Ljava/lang/String;

    const-string v2, "Registering Extension Functions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "isSupported"

    new-instance v2, Lcom/freshplanet/ane/AirDeviceId/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/freshplanet/ane/AirDeviceId/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "getDeviceId"

    new-instance v2, Lcom/freshplanet/ane/AirDeviceId/functions/GetDeviceIdFunction;

    invoke-direct {v2}, Lcom/freshplanet/ane/AirDeviceId/functions/GetDeviceIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method
