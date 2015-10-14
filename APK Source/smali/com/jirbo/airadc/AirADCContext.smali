.class public Lcom/jirbo/airadc/AirADCContext;
.super Lcom/adobe/fre/FREContext;
.source "AirADCContext.java"


# static fields
.field private static final CTX_NAME:Ljava/lang/String; = "AirADCContext"


# instance fields
.field configured:Z

.field listener:Lcom/jirbo/airadc/ADCListener;

.field final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "extension_name"    # Ljava/lang/String;

    .prologue
    const-string v1, "AdColonyANE"

    .line 26
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 21
    const-string v0, "AdColonyANE"

    iput-object v1, p0, Lcom/jirbo/airadc/AirADCContext;->tag:Ljava/lang/String;

    .line 27
    const-string v0, "AdColonyANE"

    const-string v0, "Creating ANE context"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Lcom/jirbo/airadc/ADCListener;

    invoke-direct {v0, p0}, Lcom/jirbo/airadc/ADCListener;-><init>(Lcom/jirbo/airadc/AirADCContext;)V

    iput-object v0, p0, Lcom/jirbo/airadc/AirADCContext;->listener:Lcom/jirbo/airadc/ADCListener;

    .line 30
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "AdColonyANE"

    const-string v1, "Disposing ANE context"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
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
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "function_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "configure"

    new-instance v2, Lcom/jirbo/airadc/ConfigureFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/ConfigureFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "is_video_available_function"

    new-instance v2, Lcom/jirbo/airadc/IsVideoAvailableFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/IsVideoAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "is_v4vc_available_function"

    new-instance v2, Lcom/jirbo/airadc/IsV4VCAvailableFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/IsV4VCAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "get_device_id_function"

    new-instance v2, Lcom/jirbo/airadc/GetDeviceIDFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/GetDeviceIDFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "get_v4vc_amount_function"

    new-instance v2, Lcom/jirbo/airadc/GetRewardAmountFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/GetRewardAmountFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "get_v4vc_name_function"

    new-instance v2, Lcom/jirbo/airadc/GetRewardNameFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/GetRewardNameFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "show_video_function"

    new-instance v2, Lcom/jirbo/airadc/ShowVideoFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/ShowVideoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "show_v4vc_function"

    new-instance v2, Lcom/jirbo/airadc/ShowV4VCFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/ShowV4VCFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "offer_v4vc_function"

    new-instance v2, Lcom/jirbo/airadc/OfferV4VCFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/OfferV4VCFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "set_custom_id_function"

    new-instance v2, Lcom/jirbo/airadc/SetCustomIDFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/SetCustomIDFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "get_custom_id_function"

    new-instance v2, Lcom/jirbo/airadc/GetCustomIDFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/GetCustomIDFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "status_for_zone_function"

    new-instance v2, Lcom/jirbo/airadc/StatusForZoneFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/StatusForZoneFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "cancel_videofunction"

    new-instance v2, Lcom/jirbo/airadc/CancelVideoFunction;

    invoke-direct {v2}, Lcom/jirbo/airadc/CancelVideoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "AdColonyANE"

    return-object v0
.end method
