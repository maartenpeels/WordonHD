.class Lcom/heyzap/http/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static exceptionBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static exceptionWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I

.field private final retrySleepTimeMS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/heyzap/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/heyzap/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    .line 50
    sget-object v0, Lcom/heyzap/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/heyzap/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/heyzap/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/heyzap/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/heyzap/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/heyzap/http/RetryHandler;->maxRetries:I

    .line 67
    iput p2, p0, Lcom/heyzap/http/RetryHandler;->retrySleepTimeMS:I

    .line 68
    return-void
.end method

.method static addClassToBlacklist(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/heyzap/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method static addClassToWhitelist(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/heyzap/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method protected isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 118
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    .line 74
    const-string v0, "http.request_sent"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 75
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 77
    :goto_0
    iget v1, p0, Lcom/heyzap/http/RetryHandler;->maxRetries:I

    if-le p2, v1, :cond_1

    move v1, v2

    .line 91
    :goto_1
    if-eqz v1, :cond_4

    .line 93
    const-string v0, "http.request"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 94
    if-nez v0, :cond_4

    move v0, v2

    .line 105
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    .line 80
    :cond_1
    sget-object v1, Lcom/heyzap/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {p0, v1, p1}, Lcom/heyzap/http/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    sget-object v1, Lcom/heyzap/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {p0, v1, p1}, Lcom/heyzap/http/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-nez v0, :cond_6

    move v1, v3

    .line 88
    goto :goto_1

    .line 99
    :cond_4
    if-eqz v1, :cond_5

    .line 100
    iget v0, p0, Lcom/heyzap/http/RetryHandler;->retrySleepTimeMS:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :goto_3
    move v0, v1

    .line 105
    goto :goto_2

    .line 102
    :cond_5
    invoke-static {p1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_1
.end method
