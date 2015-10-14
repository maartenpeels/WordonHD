.class Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
.super Lorg/java_websocket/server/WebSocketServer;
.source "WandWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/connection/WandWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WandSocketServer"
.end annotation


# instance fields
.field private mHasStartedServer:Z

.field final synthetic this$0:Lcom/adobe/air/wand/connection/WandWebSocket;


# direct methods
.method public constructor <init>(Lcom/adobe/air/wand/connection/WandWebSocket;Ljava/net/InetSocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 226
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    .line 227
    invoke-direct {p0, p2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;)V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    .line 228
    return-void
.end method

.method private scheduleHandshakeTimer()V
    .locals 4

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$600(Lcom/adobe/air/wand/connection/WandWebSocket;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer$1;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 4

    .prologue
    .line 335
    const-string v0, "OPEN_SYNCHRONIZER"

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 v2, 0x0

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v1, v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$102(Lcom/adobe/air/wand/connection/WandWebSocket;Lorg/java_websocket/WebSocket;)Lorg/java_websocket/WebSocket;

    .line 341
    const-string v1, "HANDSHAKE_SYNCHRONIZER"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    :try_start_1
    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$500(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 v3, 0x0

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v2, v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    .line 346
    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/adobe/air/wand/connection/Connection$Listener;->onConnectionClose()V

    .line 348
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    return-void

    .line 348
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 352
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 415
    if-eqz p1, :cond_0

    .line 416
    const/16 v0, 0x3eb

    :try_start_0
    const-string v1, "AIR Gamepad is already connected"

    invoke-interface {p1, v0, v1}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 358
    const-string v0, "OPEN_SYNCHRONIZER"

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v1

    if-eq p1, v1, :cond_0

    monitor-exit v0

    .line 405
    :goto_0
    return-void

    .line 362
    :cond_0
    const-string v1, "HANDSHAKE_SYNCHRONIZER"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :try_start_1
    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$500(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 365
    const-string v2, "NO_OP"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 367
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/adobe/air/wand/connection/Connection$Listener;->onReceive(Ljava/lang/String;)V

    .line 368
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 374
    :cond_3
    :try_start_5
    invoke-static {p2}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->parse(Ljava/lang/String;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    move-result-object v2

    .line 376
    iget-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # invokes: Lcom/adobe/air/wand/connection/WandWebSocket;->validateHandshake(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Z
    invoke-static {v3, v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$800(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 378
    iget-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;
    invoke-static {v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$900(Lcom/adobe/air/wand/connection/WandWebSocket;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0.0"

    invoke-virtual {v2, v3, v4}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getFailureResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v5

    .line 386
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 388
    const/16 v2, 0x3eb

    :try_start_6
    const-string v3, "Invalid AIR Gamepad handshake"

    invoke-interface {p1, v2, v3}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    .line 390
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    move-object v2, v5

    .line 383
    goto :goto_1

    .line 393
    :cond_5
    :try_start_8
    iget-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v3, v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 396
    :try_start_9
    iget-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v3

    invoke-virtual {v2}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/adobe/air/wand/connection/Connection$Listener;->onConnectionOpen(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 403
    :cond_6
    :goto_2
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 404
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 398
    :catch_1
    move-exception v2

    .line 400
    :try_start_c
    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 v3, 0x0

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v2, v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    goto :goto_2

    .line 403
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

.method public onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
    .locals 2

    .prologue
    .line 282
    const-string v0, "OPEN_SYNCHRONIZER"

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z
    invoke-static {v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$400(Lcom/adobe/air/wand/connection/WandWebSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v1

    if-nez v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v1, p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$102(Lcom/adobe/air/wand/connection/WandWebSocket;Lorg/java_websocket/WebSocket;)Lorg/java_websocket/WebSocket;

    .line 288
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->scheduleHandshakeTimer()V

    .line 292
    monitor-exit v0

    .line 298
    :goto_0
    return-void

    .line 294
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    const/16 v0, 0x3eb

    const-string v1, "AIR Gamepad is already connected"

    invoke-interface {p1, v0, v1}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    if-eqz v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-super {p0}, Lorg/java_websocket/server/WebSocketServer;->start()V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    :try_start_0
    invoke-super {p0}, Lorg/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    .line 260
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$000(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # invokes: Lcom/adobe/air/wand/connection/WandWebSocket;->forceCloseConnection()V
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$200(Lcom/adobe/air/wand/connection/WandWebSocket;)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 v1, 0x0

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    invoke-static {v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$002(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 272
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # invokes: Lcom/adobe/air/wand/connection/WandWebSocket;->startSocketServer()V
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$300(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0

    .line 251
    :catch_1
    move-exception v0

    goto :goto_1
.end method
