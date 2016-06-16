.class public Lcom/heyzap/internal/FileFetchClient;
.super Ljava/lang/Object;
.source "FileFetchClient.java"


# static fields
.field private static client:Lcom/heyzap/http/AsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/heyzap/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/heyzap/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/heyzap/internal/FileFetchClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    .line 15
    sget-object v0, Lcom/heyzap/internal/FileFetchClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/http/AsyncHttpClient;->setThreadPool(Ljava/util/concurrent/ExecutorService;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/FileAsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/heyzap/internal/FileFetchClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/heyzap/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method
