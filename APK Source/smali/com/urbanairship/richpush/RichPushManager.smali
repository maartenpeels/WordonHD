.class public Lcom/urbanairship/richpush/RichPushManager;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/urbanairship/richpush/RichPushResolver;

.field private static final b:Lcom/urbanairship/richpush/RichPushManager;


# instance fields
.field private c:Lcom/urbanairship/richpush/RichPushUser;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/richpush/RichPushManager;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushManager;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/RichPushManager;->b:Lcom/urbanairship/richpush/RichPushManager;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->e:Ljava/util/List;

    new-instance v0, Lcom/urbanairship/richpush/RichPushResolver;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    return-void
.end method

.method public static a()Lcom/urbanairship/richpush/RichPushManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->b:Lcom/urbanairship/richpush/RichPushManager;

    return-object v0
.end method

.method static synthetic a(Lcom/urbanairship/richpush/RichPushManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic a(Lcom/urbanairship/richpush/RichPushManager;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "Messages update succeeded"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/richpush/RichPushManager$Listener;

    :try_start_0
    invoke-interface {p0}, Lcom/urbanairship/richpush/RichPushManager$Listener;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "RichPushManager unable to complete onUpdateMessages() callback."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-string v0, "Messages update failed"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3

    const-string v0, "RichPushManager startUpdateService"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v2, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private a(ZLcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const-string v0, "Skipping refreshing messages, already refreshing."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string v1, "com.urbanairship.richpush.MESSAGES_UPDATE"

    new-instance v2, Lcom/urbanairship/richpush/RichPushManager$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/urbanairship/richpush/RichPushManager$2;-><init>(Lcom/urbanairship/richpush/RichPushManager;ILcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    invoke-static {v1, v2}, Lcom/urbanairship/richpush/RichPushManager;->a(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/urbanairship/richpush/RichPushManager;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "User update succeeded"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->c:Lcom/urbanairship/richpush/RichPushUser;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/richpush/RichPushUser;->a(J)V

    :goto_0
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/richpush/RichPushManager$Listener;

    :try_start_0
    invoke-interface {p0}, Lcom/urbanairship/richpush/RichPushManager$Listener;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "RichPushManager unable to complete onUpdateUser() callback."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-string v0, "User update failed"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->c:Lcom/urbanairship/richpush/RichPushUser;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/richpush/RichPushUser;->a(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized c()V
    .locals 4

    const-class v0, Lcom/urbanairship/richpush/RichPushManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->l:Z

    if-eqz v1, :cond_0

    const-string v1, "Initializing Rich Push."

    invoke-static {v1}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/richpush/RichPushManager;->b:Lcom/urbanairship/richpush/RichPushManager;

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->f()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sget-object v2, Lcom/urbanairship/analytics/Analytics;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/richpush/RichPushManager$1;

    invoke-direct {v3}, Lcom/urbanairship/richpush/RichPushManager$1;-><init>()V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic g()Lcom/urbanairship/richpush/RichPushManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->b:Lcom/urbanairship/richpush/RichPushManager;

    return-object v0
.end method

.method private h()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/urbanairship/richpush/RichPushManager;->a(ZLcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    return-void
.end method

.method public final declared-synchronized b()Lcom/urbanairship/richpush/RichPushUser;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->c:Lcom/urbanairship/richpush/RichPushUser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/richpush/RichPushUser;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushUser;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->c:Lcom/urbanairship/richpush/RichPushUser;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->c:Lcom/urbanairship/richpush/RichPushUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushManager;->a(ZLcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "com.urbanairship.richpush.USER_UPDATE"

    new-instance v1, Lcom/urbanairship/richpush/RichPushManager$3;

    invoke-direct {v1, p0}, Lcom/urbanairship/richpush/RichPushManager$3;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    invoke-static {v0, v1}, Lcom/urbanairship/richpush/RichPushManager;->a(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public final f()V
    .locals 6

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->g()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushManager;->e()V

    :cond_1
    return-void
.end method
