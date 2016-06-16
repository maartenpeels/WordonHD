.class public Lcom/urbanairship/push/PushManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/urbanairship/push/PushManager;


# instance fields
.field private b:Lcom/urbanairship/push/PushNotificationBuilder;

.field private c:Ljava/lang/Class;

.field private d:Lcom/urbanairship/push/PushPreferences;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/push/PushManager;

    invoke-direct {v0}, Lcom/urbanairship/push/PushManager;-><init>()V

    sput-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/PushManager;->e:Z

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PushManager init"

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    new-instance v1, Lcom/urbanairship/push/PushPreferences;

    invoke-direct {v1}, Lcom/urbanairship/push/PushPreferences;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    new-instance v1, Lcom/urbanairship/push/BasicPushNotificationBuilder;

    invoke-direct {v1}, Lcom/urbanairship/push/BasicPushNotificationBuilder;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/push/PushManager;->b:Lcom/urbanairship/push/PushNotificationBuilder;

    invoke-static {}, Lcom/urbanairship/push/PushManager;->n()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UAirship.takeOff must be called before PushManager.init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Lcom/urbanairship/push/PushManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    return-object v0
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Z)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->n()V

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting APID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "No APID. Cannot delete."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.DELETE_APID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.APID"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static d()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/PushPreferences;->a(Z)V

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->b()V

    :cond_0
    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/PushPreferences;->c(Z)V

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/push/PushPreferences;->a(J)V

    :cond_1
    return-void
.end method

.method public static m()V
    .locals 0

    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->c()V

    return-void
.end method

.method private static n()V
    .locals 3

    const-string v0, "PushManager startService"

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.push.START_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->d(Z)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.UPDATE_APID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method final a(Lcom/urbanairship/push/PushMessage;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v0, v0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Received a push when push is disabled! Ignoring."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v1, v1, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v4

    :goto_1
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received a push addressed to a different APID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    :goto_2
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received a duplicate push with canonical ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/util/List;)V

    :cond_6
    :goto_3
    move v0, v4

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/util/List;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v1

    new-instance v2, Lcom/urbanairship/analytics/PushArrivedEvent;

    invoke-direct {v2, v0}, Lcom/urbanairship/analytics/PushArrivedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->h()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/actions/Situation;->b:Lcom/urbanairship/actions/Situation;

    invoke-static {v0, v1}, Lcom/urbanairship/actions/ActionService;->a(Landroid/os/Bundle;Lcom/urbanairship/actions/Situation;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Received UA Ping"

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Notification expired, ignoring."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->l:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "Received a Rich Push."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    new-instance v2, Lcom/urbanairship/push/PushManager$1;

    invoke-direct {v2, p0, v0}, Lcom/urbanairship/push/PushManager$1;-><init>(Lcom/urbanairship/push/PushManager;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Lcom/urbanairship/richpush/RichPushManager;->a(Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    const-wide/32 v1, 0xea60

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_4
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->g()I

    move-result v0

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->c:Ljava/lang/Class;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.urbanairship.push.PUSH_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->h()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Interrupted while waiting for rich push messages to refresh"

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public final a(Lcom/urbanairship/push/PushNotificationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/PushManager;->b:Lcom/urbanairship/push/PushNotificationBuilder;

    return-void
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->c()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/urbanairship/push/PushManager;->c:Ljava/lang/Class;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "The receiver class passed to PushManager.setIntentReceiver() is not declared in the manifest."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidManifest.xml missing required receiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/urbanairship/push/PushManager;->o()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tags must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->j()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/urbanairship/push/PushManager;->o()V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->d()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(I)V

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/util/Device;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/urbanairship/push/PushManager;->o()V

    :cond_0
    return-void
.end method

.method public final e()Lcom/urbanairship/push/PushNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->b:Lcom/urbanairship/push/PushNotificationBuilder;

    return-object v0
.end method

.method public final f()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public final g()Lcom/urbanairship/push/PushPreferences;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    return-object v0
.end method

.method final h()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1, v4}, Lcom/urbanairship/push/PushPreferences;->c(Z)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->l:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->e()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/push/PushManager;->a:Lcom/urbanairship/push/PushManager;

    iget-object v1, v1, Lcom/urbanairship/push/PushManager;->c:Ljava/lang/Class;

    if-eqz v1, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.urbanairship.push.REGISTRATION_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.APID"

    iget-object v3, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.REGISTRATION_VALID"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.urbanairship.push.GCM_REGISTRATION_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->f()V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/push/PushManager;->o()V

    :cond_0
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->d:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/PushManager;->e:Z

    return v0
.end method
