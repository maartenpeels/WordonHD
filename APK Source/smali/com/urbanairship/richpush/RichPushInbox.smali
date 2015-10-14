.class public Lcom/urbanairship/richpush/RichPushInbox;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/urbanairship/richpush/RichPushInbox;

.field private static final c:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Lcom/urbanairship/richpush/RichPushMessageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/RichPushInbox;->c:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->e:Ljava/util/List;

    new-instance v0, Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->c()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/urbanairship/richpush/RichPushInbox;
    .locals 2

    const-class v0, Lcom/urbanairship/richpush/RichPushInbox;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->b:Lcom/urbanairship/richpush/RichPushInbox;

    if-nez v1, :cond_0

    new-instance v1, Lcom/urbanairship/richpush/RichPushInbox;

    invoke-direct {v1}, Lcom/urbanairship/richpush/RichPushInbox;-><init>()V

    sput-object v1, Lcom/urbanairship/richpush/RichPushInbox;->b:Lcom/urbanairship/richpush/RichPushInbox;

    :cond_0
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->b:Lcom/urbanairship/richpush/RichPushInbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/richpush/RichPushMessage;->a(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->e:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushResolver;->a()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/urbanairship/richpush/RichPushInbox;->a(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->e()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v4, v2}, Lcom/urbanairship/richpush/RichPushMessageCache;->b(Lcom/urbanairship/richpush/RichPushMessage;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/richpush/RichPushMessageCache;->a(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v4, v2}, Lcom/urbanairship/richpush/RichPushMessageCache;->a(Lcom/urbanairship/richpush/RichPushMessage;)V

    monitor-exit v3

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v5, v4}, Lcom/urbanairship/richpush/RichPushMessageCache;->b(Lcom/urbanairship/richpush/RichPushMessage;)V

    iget-boolean v4, v4, Lcom/urbanairship/richpush/RichPushMessage;->c:Z

    iput-boolean v4, v2, Lcom/urbanairship/richpush/RichPushMessage;->c:Z

    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v4, v2}, Lcom/urbanairship/richpush/RichPushMessageCache;->a(Lcom/urbanairship/richpush/RichPushMessage;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox$4;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushInbox$4;-><init>(Lcom/urbanairship/richpush/RichPushInbox;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/urbanairship/richpush/RichPushInbox$3;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/richpush/RichPushInbox$3;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v3, v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->a(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/urbanairship/richpush/RichPushMessage;->b:Z

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->f:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v3, v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->b(Lcom/urbanairship/richpush/RichPushMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->d()V

    return-void
.end method

.method final b()V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->c()V

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->d()V

    return-void
.end method
