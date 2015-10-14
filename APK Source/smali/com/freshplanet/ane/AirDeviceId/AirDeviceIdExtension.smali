.class public Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtension;
.super Ljava/lang/Object;
.source "AirDeviceIdExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field private static TAG:Ljava/lang/String;

.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "[AirDeviceId]"

    sput-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtension;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 3
    .param p1, "extId"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extension.createContext extId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtensionContext;

    invoke-direct {v0}, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtensionContext;-><init>()V

    sput-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtension;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtension;->TAG:Ljava/lang/String;

    const-string v1, "Extension.dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtension;->context:Lcom/adobe/fre/FREContext;

    .line 48
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/freshplanet/ane/AirDeviceId/AirDeviceIdExtension;->TAG:Ljava/lang/String;

    const-string v1, "Extension.initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method
