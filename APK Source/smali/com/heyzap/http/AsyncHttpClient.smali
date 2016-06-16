.class public Lcom/heyzap/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/http/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field public static final DEFAULT_MAX_RETRIES:I = 0x5

.field public static final DEFAULT_RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field public static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final LOG_TAG:Ljava/lang/String; = "AsyncHttpClient"

.field public static final VERSION:Ljava/lang/String; = "1.4.5"


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private isUrlEncodingEnabled:Z

.field private maxConnections:I

.field private final requestLock:Ljava/lang/Object;

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/http/RequestHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/heyzap/http/AsyncHttpClient;-><init>(ZII)V

    .line 120
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/heyzap/http/AsyncHttpClient;-><init>(ZII)V

    .line 129
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/heyzap/http/AsyncHttpClient;-><init>(ZII)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v4, p0, Lcom/heyzap/http/AsyncHttpClient;->maxConnections:I

    .line 106
    const/16 v0, 0x2710

    iput v0, p0, Lcom/heyzap/http/AsyncHttpClient;->timeout:I

    .line 113
    iput-boolean v3, p0, Lcom/heyzap/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->requestLock:Ljava/lang/Object;

    .line 196
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 198
    iget v1, p0, Lcom/heyzap/http/AsyncHttpClient;->timeout:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 199
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v2, p0, Lcom/heyzap/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 200
    invoke-static {v0, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 202
    iget v1, p0, Lcom/heyzap/http/AsyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 203
    iget v1, p0, Lcom/heyzap/http/AsyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 204
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 205
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 207
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 208
    const-string v1, "android-async-http/%s (http://loopj.com/android-async-http)"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "1.4.5"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 210
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 213
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 214
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 215
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 217
    new-instance v2, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 218
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 219
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/heyzap/http/AsyncHttpClient$1;

    invoke-direct {v1, p0}, Lcom/heyzap/http/AsyncHttpClient$1;-><init>(Lcom/heyzap/http/AsyncHttpClient;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 231
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/heyzap/http/AsyncHttpClient$2;

    invoke-direct {v1, p0}, Lcom/heyzap/http/AsyncHttpClient$2;-><init>(Lcom/heyzap/http/AsyncHttpClient;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 250
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/heyzap/http/RetryHandler;

    const/4 v2, 0x5

    const/16 v3, 0x5dc

    invoke-direct {v1, v2, v3}, Lcom/heyzap/http/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 251
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1

    .prologue
    .line 149
    invoke-static {p1, p2, p3}, Lcom/heyzap/http/AsyncHttpClient;->getDefaultSchemeRegistry(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/http/AsyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/http/AsyncHttpClient;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0

    .prologue
    .line 994
    if-eqz p2, :cond_0

    .line 995
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 998
    :cond_0
    return-object p1
.end method

.method public static allowRetryExceptionClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 254
    if-eqz p0, :cond_0

    .line 255
    invoke-static {p0}, Lcom/heyzap/http/RetryHandler;->addClassToWhitelist(Ljava/lang/Class;)V

    .line 257
    :cond_0
    return-void
.end method

.method public static blockRetryExceptionClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 260
    if-eqz p0, :cond_0

    .line 261
    invoke-static {p0}, Lcom/heyzap/http/RetryHandler;->addClassToBlacklist(Ljava/lang/Class;)V

    .line 263
    :cond_0
    return-void
.end method

.method private static getDefaultSchemeRegistry(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 160
    if-eqz p0, :cond_0

    .line 164
    :cond_0
    if-ge p1, v1, :cond_3

    .line 165
    const/16 v0, 0x50

    .line 169
    :goto_0
    if-ge p2, v1, :cond_2

    .line 170
    const/16 v1, 0x1bb

    .line 177
    :goto_1
    if-eqz p0, :cond_1

    .line 178
    invoke-static {}, Lcom/heyzap/http/MySSLSocketFactory;->getFixedSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    .line 182
    :goto_2
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 183
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 184
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-direct {v0, v4, v2, v1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 186
    return-object v3

    .line 180
    :cond_1
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    goto :goto_2

    :cond_2
    move v1, p2

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method public static getUrlWithQueryString(ZLjava/lang/String;Lcom/heyzap/http/RequestParams;)Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "?"

    .line 943
    if-eqz p0, :cond_2

    .line 944
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 946
    :goto_0
    if-eqz p2, :cond_0

    .line 947
    invoke-virtual {p2}, Lcom/heyzap/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v1

    .line 948
    const-string v2, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    :cond_0
    :goto_1
    return-object v0

    .line 951
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private paramsToEntity(Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 966
    .line 969
    if-eqz p1, :cond_1

    .line 970
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/heyzap/http/RequestParams;->getEntity(Lcom/heyzap/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 979
    :goto_0
    return-object v0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    if-eqz p2, :cond_0

    .line 974
    const/4 v1, 0x0

    invoke-interface {p2, v1, v2, v2, v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    .line 976
    :cond_0
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 492
    if-eqz v0, :cond_1

    .line 493
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/http/RequestHandle;

    .line 494
    invoke-virtual {v0, p2}, Lcom/heyzap/http/RequestHandle;->cancel(Z)Z

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_1
    return-void
.end method

.method public clearBasicAuth()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    .line 478
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 840
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 870
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/heyzap/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/heyzap/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 871
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 854
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 855
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/heyzap/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 618
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/heyzap/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/heyzap/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/heyzap/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 633
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/heyzap/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/heyzap/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 634
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/heyzap/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/heyzap/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public getMaxConnections()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/heyzap/http/AsyncHttpClient;->maxConnections:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/heyzap/http/AsyncHttpClient;->timeout:I

    return v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 548
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/heyzap/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/heyzap/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/heyzap/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 563
    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/heyzap/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/heyzap/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 564
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/heyzap/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/heyzap/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public isUrlEncodingEnabled()Z
    .locals 1

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 6

    .prologue
    .line 675
    invoke-direct {p0, p3, p4}, Lcom/heyzap/http/AsyncHttpClient;->paramsToEntity(Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/heyzap/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 692
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/heyzap/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/heyzap/http/RequestParams;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 710
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 711
    if-eqz p4, :cond_0

    invoke-direct {p0, p4, p6}, Lcom/heyzap/http/AsyncHttpClient;->paramsToEntity(Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 712
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 734
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/heyzap/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 735
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/heyzap/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/heyzap/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 6

    .prologue
    .line 775
    invoke-direct {p0, p3, p4}, Lcom/heyzap/http/AsyncHttpClient;->paramsToEntity(Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/heyzap/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 793
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/heyzap/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 7

    .prologue
    .line 812
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/heyzap/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 813
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/heyzap/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 750
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/heyzap/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/heyzap/http/RequestHandle;
    .locals 4

    .prologue
    .line 890
    if-eqz p4, :cond_0

    .line 891
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_0
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/heyzap/http/ResponseHandlerInterface;->setRequestHeaders([Lorg/apache/http/Header;)V

    .line 895
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/heyzap/http/ResponseHandlerInterface;->setRequestURI(Ljava/net/URI;)V

    .line 897
    new-instance v0, Lcom/heyzap/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/heyzap/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/heyzap/http/ResponseHandlerInterface;)V

    .line 898
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 899
    new-instance v1, Lcom/heyzap/http/RequestHandle;

    invoke-direct {v1, v0}, Lcom/heyzap/http/RequestHandle;-><init>(Lcom/heyzap/http/AsyncHttpRequest;)V

    .line 901
    if-eqz p6, :cond_4

    .line 903
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 904
    if-nez v0, :cond_1

    .line 905
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 906
    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2, p6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :cond_1
    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpClient;->requestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 911
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 913
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 914
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/http/RequestHandle;

    invoke-virtual {p0}, Lcom/heyzap/http/RequestHandle;->shouldBeGarbageCollected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 915
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 921
    :cond_4
    return-object v1
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 457
    invoke-virtual {p0, p1, p2, v0}, Lcom/heyzap/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 458
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2

    .prologue
    .line 469
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 471
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public setEnableRedirects(Z)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/heyzap/http/AsyncHttpClient$3;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/http/AsyncHttpClient$3;-><init>(Lcom/heyzap/http/AsyncHttpClient;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 320
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 349
    const/16 v0, 0xa

    .line 350
    :goto_0
    iput v0, p0, Lcom/heyzap/http/AsyncHttpClient;->maxConnections:I

    .line 351
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 352
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v2, p0, Lcom/heyzap/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 353
    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public setMaxRetriesAndTimeout(II)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/heyzap/http/RetryHandler;

    invoke-direct {v1, p1, p2}, Lcom/heyzap/http/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 427
    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 386
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 387
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 388
    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 389
    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p3, p4}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 403
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 404
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 405
    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 406
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 417
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 305
    return-void
.end method

.method public setTimeout(I)V
    .locals 3

    .prologue
    .line 370
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 371
    const/16 v0, 0x2710

    .line 372
    :goto_0
    iput v0, p0, Lcom/heyzap/http/AsyncHttpClient;->timeout:I

    .line 373
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 374
    iget v1, p0, Lcom/heyzap/http/AsyncHttpClient;->timeout:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 375
    iget v1, p0, Lcom/heyzap/http/AsyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 376
    iget v1, p0, Lcom/heyzap/http/AsyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 377
    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public setURLEncodingEnabled(Z)V
    .locals 0

    .prologue
    .line 931
    iput-boolean p1, p0, Lcom/heyzap/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 932
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 330
    return-void
.end method
