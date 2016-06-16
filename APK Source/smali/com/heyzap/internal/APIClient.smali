.class public Lcom/heyzap/internal/APIClient;
.super Ljava/lang/Object;
.source "APIClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/APIClient$GlobalCookieSpecFactory;,
        Lcom/heyzap/internal/APIClient$GlobalCookieSpec;
    }
.end annotation


# static fields
.field public static final API_STATUS_NOT_LOGGED_IN:I = 0x1f8

.field private static final BASE_ENDPOINT:Ljava/lang/String; = "/in_game_api/ads/"

.field public static final BASE_URL:Ljava/lang/String;

.field public static DOMAIN:Ljava/lang/String; = null

.field private static final USER_AGENT:Ljava/lang/String; = "Heyzap Android Client"

.field private static client:Lcom/heyzap/http/AsyncHttpClient;

.field private static cookieStore:Lcom/heyzap/http/SDKCookieStore;

.field public static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "global"

    .line 33
    new-instance v0, Lcom/heyzap/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/heyzap/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    .line 36
    const-string v0, "ads.heyzap.com"

    sput-object v0, Lcom/heyzap/internal/APIClient;->DOMAIN:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/APIClient;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heyzap/internal/APIClient;->BASE_URL:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/heyzap/internal/APIClient;->lock:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/heyzap/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/heyzap/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    .line 47
    sget-object v0, Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/http/AsyncHttpClient;->setThreadPool(Ljava/util/concurrent/ExecutorService;)V

    .line 49
    sget-object v0, Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/heyzap/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v0

    const-string v1, "global"

    new-instance v1, Lcom/heyzap/internal/APIClient$GlobalCookieSpecFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/heyzap/internal/APIClient$GlobalCookieSpecFactory;-><init>(Lcom/heyzap/internal/APIClient$1;)V

    invoke-virtual {v0, v3, v1}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 50
    sget-object v0, Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/heyzap/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.cookie-policy"

    const-string v2, "global"

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/heyzap/internal/APIClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/heyzap/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    return-object v0
.end method

.method public static augmentParams(Lcom/heyzap/http/RequestParams;Landroid/content/Context;)Lcom/heyzap/http/RequestParams;
    .locals 4

    .prologue
    .line 150
    sget-object v1, Lcom/heyzap/internal/APIClient;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    if-nez p0, :cond_1

    .line 152
    :try_start_0
    new-instance v0, Lcom/heyzap/http/RequestParams;

    invoke-direct {v0}, Lcom/heyzap/http/RequestParams;-><init>()V

    move-object v2, v0

    .line 155
    :goto_0
    invoke-static {p1}, Lcom/heyzap/internal/Utils;->extraParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :cond_1
    move-object v2, p0

    goto :goto_0
.end method

.method public static cancelRequests(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/heyzap/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 131
    return-void
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/heyzap/internal/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    invoke-virtual {v0}, Lcom/heyzap/http/SDKCookieStore;->clear()V

    .line 136
    new-instance v0, Lcom/heyzap/http/SDKCookieStore;

    invoke-direct {v0, p0}, Lcom/heyzap/http/SDKCookieStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/heyzap/internal/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    .line 137
    sget-object v0, Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    sget-object v1, Lcom/heyzap/internal/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    invoke-virtual {v0, v1}, Lcom/heyzap/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 138
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/heyzap/internal/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 63
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/heyzap/internal/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 67
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 2

    .prologue
    .line 70
    invoke-static {p0}, Lcom/heyzap/internal/APIClient;->init(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/internal/APIClient$1;

    invoke-direct {v1, p2, p0, p1, p3}, Lcom/heyzap/internal/APIClient$1;-><init>(Lcom/heyzap/http/RequestParams;Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method private static getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    if-eqz p0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heyzap/internal/APIClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :cond_0
    if-eqz p0, :cond_2

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p0

    .line 143
    goto :goto_0

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heyzap/internal/APIClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/in_game_api/ads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/heyzap/internal/APIClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heyzap/internal/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/heyzap/http/SDKCookieStore;

    invoke-direct {v1, p0}, Lcom/heyzap/http/SDKCookieStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/heyzap/internal/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    .line 56
    sget-object v1, Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    sget-object v2, Lcom/heyzap/internal/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    invoke-virtual {v1, v2}, Lcom/heyzap/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit v0

    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 85
    return-void
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 89
    return-void
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 2

    .prologue
    .line 92
    invoke-static {p0}, Lcom/heyzap/internal/APIClient;->init(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/internal/APIClient$2;

    invoke-direct {v1, p2, p0, p1, p3}, Lcom/heyzap/internal/APIClient$2;-><init>(Lcom/heyzap/http/RequestParams;Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public static postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 2

    .prologue
    .line 105
    invoke-static {p0}, Lcom/heyzap/internal/APIClient;->init(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/internal/APIClient$3;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/heyzap/internal/APIClient$3;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method
