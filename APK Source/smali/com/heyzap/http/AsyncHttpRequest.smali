.class Lcom/heyzap/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cancelIsNotified:Z

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isCancelled:Z

.field private isFinished:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/heyzap/http/ResponseHandlerInterface;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    .line 45
    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->cancelIsNotified:Z

    .line 46
    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isFinished:Z

    .line 49
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 50
    iput-object p2, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 51
    iput-object p3, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 52
    iput-object p4, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    .line 53
    return-void
.end method

.method private makeRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method

.method private makeRequestWithRetries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v1

    move v2, v5

    .line 114
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :cond_1
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 122
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownHostException exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    iget-object v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    :goto_1
    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 138
    :goto_2
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    iget v4, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    invoke-interface {v3, v4}, Lcom/heyzap/http/ResponseHandlerInterface;->sendRetryMessage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 144
    const-string v1, "AsyncHttpRequest"

    const-string v2, "Unhandled exception origin cause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 149
    :cond_2
    throw v0

    .line 123
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 124
    :catch_2
    move-exception v0

    .line 128
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NPE in HttpClient: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    iget-object v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 137
    goto :goto_2

    .line 130
    :catch_3
    move-exception v0

    .line 131
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    iget v2, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    iget-object v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v0, v2, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_2
.end method

.method private declared-synchronized sendCancelNotification()V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->cancelIsNotified:Z

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->cancelIsNotified:Z

    .line 162
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendCancelMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    .line 173
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpRequest;->sendCancelNotification()V

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isFinished:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendStartMessage()V

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendFinishMessage()V

    .line 89
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isFinished:Z

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v1, :cond_4

    .line 75
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_1

    .line 77
    :cond_4
    const-string v1, "AsyncHttpRequest"

    const-string v2, "makeRequestWithRetries returned error, but handler is null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
