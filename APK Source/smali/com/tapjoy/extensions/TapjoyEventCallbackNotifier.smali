.class public Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;
.super Ljava/lang/Object;
.source "TapjoyEventCallbackNotifier.java"

# interfaces
.implements Lcom/tapjoy/TJEventCallback;


# static fields
.field public static final TAPJOY_AIR:Ljava/lang/String; = "TapjoyAIR"


# instance fields
.field m_Context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 1
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 21
    iput-object p1, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 22
    return-void
.end method


# virtual methods
.method public contentDidDisappear(Lcom/tapjoy/TJEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/tapjoy/TJEvent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONTENT_DID_DISAPPEAR:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getEventGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public contentDidShow(Lcom/tapjoy/TJEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/tapjoy/TJEvent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONTENT_DID_SHOW:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getEventGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public contentIsReady(Lcom/tapjoy/TJEvent;I)V
    .locals 3
    .param p1, "event"    # Lcom/tapjoy/TJEvent;
    .param p2, "status"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getEventGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_CONTENT_IS_READY:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v2}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public didRequestAction(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJEventRequest;)V
    .locals 5
    .param p1, "event"    # Lcom/tapjoy/TJEvent;
    .param p2, "request"    # Lcom/tapjoy/TJEventRequest;

    .prologue
    const-string v4, ","

    .line 72
    iget-object v2, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getEventGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "guid":Ljava/lang/String;
    sget-object v2, Lcom/tapjoy/extensions/ExtensionUtils;->eventRequestMap:Ljava/util/Hashtable;

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/tapjoy/extensions/ExtensionUtils;->eventRequestMap:Ljava/util/Hashtable;

    .line 79
    :cond_0
    sget-object v2, Lcom/tapjoy/extensions/ExtensionUtils;->eventRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getEventGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/tapjoy/TJEventRequest;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/tapjoy/TJEventRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/tapjoy/TJEventRequest;->quantity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v3, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_DID_REQUEST_ACTION:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v3}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v0    # "guid":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public sendEventCompleted(Lcom/tapjoy/TJEvent;Z)V
    .locals 3
    .param p1, "event"    # Lcom/tapjoy/TJEvent;
    .param p2, "contentAvailable"    # Z

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 28
    if-eqz p2, :cond_1

    .line 29
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_COMPLETE_WITH_CONTENT:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getEventGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_COMPLETE:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getEventGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendEventFail(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJError;)V
    .locals 3
    .param p1, "event"    # Lcom/tapjoy/TJEvent;
    .param p2, "error"    # Lcom/tapjoy/TJError;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_FAIL:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getEventGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method
