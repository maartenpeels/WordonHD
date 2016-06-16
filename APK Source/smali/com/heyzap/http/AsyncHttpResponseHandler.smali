.class public abstract Lcom/heyzap/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/heyzap/http/ResponseHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/http/AsyncHttpResponseHandler$ResponderHandler;
    }
.end annotation


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final CANCEL_MESSAGE:I = 0x6

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpResponseHandler"

.field protected static final PROGRESS_MESSAGE:I = 0x4

.field protected static final RETRY_MESSAGE:I = 0x5

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private requestHeaders:[Lorg/apache/http/Header;

.field private requestURI:Ljava/net/URI;

.field private responseCharset:Ljava/lang/String;

.field private useSynchronousMode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->useSynchronousMode:Ljava/lang/Boolean;

    .line 103
    iput-object v1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 104
    iput-object v1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 174
    invoke-virtual {p0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getRequestURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    return-object v0
.end method

.method public getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1000

    const/4 v6, 0x0

    .line 384
    const/4 v0, 0x0

    .line 385
    if-eqz p1, :cond_3

    .line 386
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 387
    if-eqz v1, :cond_3

    .line 389
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 390
    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 410
    new-instance v0, Ljava/io/IOException;

    const-string v2, "File too large to fit into available memory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 394
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    move v0, v7

    .line 395
    :goto_0
    :try_start_2
    new-instance v4, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v4, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 397
    const/16 v0, 0x1000

    new-array v0, v0, [B

    move v5, v6

    .line 400
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 401
    add-int/2addr v5, v6

    .line 402
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 403
    long-to-int v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendProgressMessage(II)V

    goto :goto_1

    .line 394
    :cond_1
    long-to-int v0, v2

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 407
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 412
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 417
    :cond_3
    return-object v0
.end method

.method public getUseSynchronousMode()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->useSynchronousMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 268
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v6, :cond_0

    .line 269
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v4

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    aget-object v0, v0, v5

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v2, v1, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 274
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 275
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v0, v4

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    aget-object v2, v0, v5

    check-cast v2, [B

    check-cast v2, [B

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 279
    :pswitch_2
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 282
    :pswitch_3
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    .line 285
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 286
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v5, :cond_0

    .line 288
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onProgress(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0

    .line 297
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 298
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v4, :cond_0

    .line 299
    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onRetry(I)V

    goto/16 :goto_0

    .line 303
    :pswitch_6
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onCancel()V

    goto/16 :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 355
    :cond_0
    :goto_0
    return-object v0

    .line 349
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    .line 351
    iput p1, v0, Landroid/os/Message;->what:I

    .line 352
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onProgress(II)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onRetry(I)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 324
    :goto_0
    if-eqz v0, :cond_2

    .line 325
    if-eqz p1, :cond_0

    .line 326
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 335
    :cond_0
    :goto_1
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 330
    new-instance v0, Lcom/heyzap/http/AsyncHttpResponseHandler$ResponderHandler;

    invoke-direct {v0, p0}, Lcom/heyzap/http/AsyncHttpResponseHandler$ResponderHandler;-><init>(Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public final sendCancelMessage()V
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 258
    return-void
.end method

.method public final sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 241
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 242
    return-void
.end method

.method public final sendFinishMessage()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 250
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendProgressMessage(II)V
    .locals 4

    .prologue
    .line 233
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 234
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 364
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->getResponseData(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 368
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;[B)V

    goto :goto_0
.end method

.method public final sendRetryMessage(I)V
    .locals 4

    .prologue
    .line 253
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 254
    return-void
.end method

.method public final sendStartMessage()V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 246
    return-void
.end method

.method public final sendSuccessMessage(I[Lorg/apache/http/Header;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 238
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setRequestHeaders([Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 124
    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 119
    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .locals 1

    .prologue
    .line 152
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->useSynchronousMode:Ljava/lang/Boolean;

    .line 153
    return-void
.end method
