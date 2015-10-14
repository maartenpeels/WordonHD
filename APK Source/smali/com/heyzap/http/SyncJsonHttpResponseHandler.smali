.class public Lcom/heyzap/http/SyncJsonHttpResponseHandler;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "SyncJsonHttpResponseHandler.java"


# instance fields
.field public error:Ljava/lang/Throwable;

.field public finished:Ljava/lang/Boolean;

.field public responseObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->responseObj:Lorg/json/JSONObject;

    .line 11
    iput-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->error:Ljava/lang/Throwable;

    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->finished:Ljava/lang/Boolean;

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->responseObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hasError()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->finished:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 41
    iput-object p4, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->error:Ljava/lang/Throwable;

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->finished:Ljava/lang/Boolean;

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 61
    iput-object p3, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->error:Ljava/lang/Throwable;

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->finished:Ljava/lang/Boolean;

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 51
    iput-object p3, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->error:Ljava/lang/Throwable;

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->finished:Ljava/lang/Boolean;

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->finished:Ljava/lang/Boolean;

    .line 22
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Wrong response type"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->error:Ljava/lang/Throwable;

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 31
    iput-object p3, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->responseObj:Lorg/json/JSONObject;

    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SyncJsonHttpResponseHandler;->finished:Ljava/lang/Boolean;

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
