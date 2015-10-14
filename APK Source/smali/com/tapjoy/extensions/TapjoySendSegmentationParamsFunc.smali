.class public Lcom/tapjoy/extensions/TapjoySendSegmentationParamsFunc;
.super Ljava/lang/Object;
.source "TapjoySendSegmentationParamsFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v4, 0x0

    .line 16
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v2

    .line 17
    .local v2, "tc":Lcom/tapjoy/TapjoyConnect;
    aget-object v3, p2, v4

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "nameOfSegmentsDictionary":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 20
    invoke-static {v0, v4}, Lcom/tapjoy/extensions/ExtensionUtils;->getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v1

    .line 22
    .local v1, "segments":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v2, v1}, Lcom/tapjoy/TapjoyConnect;->sendSegmentationParams(Ljava/util/Hashtable;)V

    .line 27
    .end local v1    # "segments":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
