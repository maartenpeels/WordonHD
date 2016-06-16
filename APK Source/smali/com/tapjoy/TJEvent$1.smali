.class Lcom/tapjoy/TJEvent$1;
.super Ljava/lang/Thread;
.source "TJEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJEvent;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJEvent;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJEvent;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-string v5, "TJEvent"

    .line 193
    const-string v3, "TJEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;
    invoke-static {v4}, Lcom/tapjoy/TJEvent;->access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v2, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v2}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    .line 197
    .local v2, "tapjoyConnection":Lcom/tapjoy/TapjoyURLConnection;
    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;
    invoke-static {v3}, Lcom/tapjoy/TJEvent;->access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;

    move-result-object v3

    iget-object v3, v3, Lcom/tapjoy/TJEventData;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->urlParams:Ljava/util/Map;
    invoke-static {v4}, Lcom/tapjoy/TJEvent;->access$100(Lcom/tapjoy/TJEvent;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 199
    .local v1, "result":Lcom/tapjoy/TapjoyHttpURLResponse;
    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;
    invoke-static {v3}, Lcom/tapjoy/TJEvent;->access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;

    move-result-object v3

    iget v4, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    iput v4, v3, Lcom/tapjoy/TJEventData;->httpStatusCode:I

    .line 200
    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;
    invoke-static {v3}, Lcom/tapjoy/TJEvent;->access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    iput-object v4, v3, Lcom/tapjoy/TJEventData;->httpResponse:Ljava/lang/String;

    .line 203
    const-string v3, "X-Tapjoy-Debug"

    invoke-virtual {v1, v3}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "debugOutput":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 205
    const-string v3, "TJEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tapjoy-Server-Debug: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;
    invoke-static {v3}, Lcom/tapjoy/TJEvent;->access$200(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 210
    iget v3, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    sparse-switch v3, :sswitch_data_0

    .line 225
    const-string v3, "TJEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send request delivered successfully for event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;
    invoke-static {v4}, Lcom/tapjoy/TJEvent;->access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->contentAvailable:Z
    invoke-static {v4}, Lcom/tapjoy/TJEvent;->access$300(Lcom/tapjoy/TJEvent;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;
    invoke-static {v3}, Lcom/tapjoy/TJEvent;->access$200(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    iget-object v5, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->contentAvailable:Z
    invoke-static {v5}, Lcom/tapjoy/TJEvent;->access$300(Lcom/tapjoy/TJEvent;)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/tapjoy/TJEventCallback;->sendEventCompleted(Lcom/tapjoy/TJEvent;Z)V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 214
    :sswitch_0
    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-virtual {v3, v1}, Lcom/tapjoy/TJEvent;->eventSuccess(Lcom/tapjoy/TapjoyHttpURLResponse;)V

    goto :goto_0

    .line 218
    :sswitch_1
    const-string v3, "TJEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send request failed for event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;
    invoke-static {v4}, Lcom/tapjoy/TJEvent;->access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-virtual {v3}, Lcom/tapjoy/TJEvent;->trackEventForOfflineDelivery()V

    .line 220
    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;
    invoke-static {v3}, Lcom/tapjoy/TJEvent;->access$200(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    new-instance v5, Lcom/tapjoy/TJError;

    iget v6, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    iget-object v7, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/tapjoy/TJEventCallback;->sendEventFail(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJError;)V

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
