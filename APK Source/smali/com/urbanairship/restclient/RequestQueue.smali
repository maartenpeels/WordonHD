.class public Lcom/urbanairship/restclient/RequestQueue;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Ljava/util/HashMap;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/urbanairship/restclient/RequestQueue;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/restclient/RequestQueue;->d:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a()V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/urbanairship/restclient/RequestQueue;->d:I

    iget v1, p0, Lcom/urbanairship/restclient/RequestQueue;->c:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/restclient/Request;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "running request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Request;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/urbanairship/restclient/RequestQueue;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/urbanairship/restclient/RequestQueue;->d:I

    iget-object v1, p0, Lcom/urbanairship/restclient/RequestQueue;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/restclient/AsyncHandler;

    :try_start_0
    new-instance v2, Lcom/urbanairship/restclient/RequestQueue$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/urbanairship/restclient/RequestQueue$1;-><init>(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;)V

    invoke-virtual {v0, v2}, Lcom/urbanairship/restclient/Request;->a(Lcom/urbanairship/restclient/AsyncHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Error running request"

    invoke-static {v3, v2}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/urbanairship/restclient/AsyncHandler;->a(Ljava/lang/Exception;)V

    invoke-direct {p0, v0}, Lcom/urbanairship/restclient/RequestQueue;->a(Lcom/urbanairship/restclient/Request;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lcom/urbanairship/restclient/Request;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removing request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Request;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/urbanairship/restclient/RequestQueue;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/urbanairship/restclient/RequestQueue;->d:I

    invoke-direct {p0}, Lcom/urbanairship/restclient/RequestQueue;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/restclient/RequestQueue;->a(Lcom/urbanairship/restclient/Request;)V

    return-void
.end method
