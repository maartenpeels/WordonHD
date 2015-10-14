.class public Lcom/tapjoy/extensions/TapjoyEventRequestCompletedFunc;
.super Ljava/lang/Object;
.source "TapjoyEventRequestCompletedFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final TAG:Ljava/lang/String; = "TapjoyEventRequestCompletedFunc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 20
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v2

    .line 22
    .local v2, "tc":Lcom/tapjoy/TapjoyConnect;
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "eventGuid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 25
    sget-object v3, Lcom/tapjoy/extensions/ExtensionUtils;->eventRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJEventRequest;

    .line 26
    .local v1, "eventRequest":Lcom/tapjoy/TJEventRequest;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/tapjoy/TJEventRequest;->callback:Lcom/tapjoy/TJEventRequestCallback;

    if-eqz v3, :cond_0

    .line 27
    const-string v3, "TapjoyEventRequestCompletedFunc"

    const-string v4, "sending TJEventRequest completed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v3, v1, Lcom/tapjoy/TJEventRequest;->callback:Lcom/tapjoy/TJEventRequestCallback;

    invoke-interface {v3}, Lcom/tapjoy/TJEventRequestCallback;->completed()V

    .line 31
    .end local v1    # "eventRequest":Lcom/tapjoy/TJEventRequest;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
