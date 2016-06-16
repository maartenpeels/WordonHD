.class public Lcom/urbanairship/analytics/Analytics;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field c:Ljava/util/concurrent/Executor;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Lcom/urbanairship/analytics/ActivityMonitor;

.field private final h:Lcom/urbanairship/analytics/EventDataManager;

.field private final i:Lcom/urbanairship/analytics/AnalyticsPreferences;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/analytics/Analytics;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".urbanairship.analytics.APP_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/analytics/Analytics;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/analytics/Analytics;-><init>(Landroid/app/Application;B)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;B)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->c:Ljava/util/concurrent/Executor;

    iput-boolean v2, p0, Lcom/urbanairship/analytics/Analytics;->j:Z

    iput-boolean v2, p0, Lcom/urbanairship/analytics/Analytics;->k:Z

    new-instance v0, Lcom/urbanairship/analytics/Analytics$4;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/Analytics$4;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->n:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/urbanairship/analytics/EventDataManager;

    invoke-direct {v0}, Lcom/urbanairship/analytics/EventDataManager;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->h:Lcom/urbanairship/analytics/EventDataManager;

    new-instance v0, Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-direct {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->i:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget v0, v0, Lcom/urbanairship/AirshipConfigOptions;->q:I

    iput v0, p0, Lcom/urbanairship/analytics/Analytics;->l:I

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->m:Z

    iput-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->m:Z

    iput-boolean v4, p0, Lcom/urbanairship/analytics/Analytics;->d:Z

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->f:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/urbanairship/analytics/Analytics;->m:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to send analytics to an empty server. Disabling analytics."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/urbanairship/analytics/Analytics;->m:Z

    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/analytics/Analytics;->f()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/urbanairship/analytics/Analytics$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/Analytics$2;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    invoke-static {p1, v0}, Lcom/urbanairship/analytics/LifeCycleCallbacks;->a(Landroid/app/Application;Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;)V

    iput-boolean v4, p0, Lcom/urbanairship/analytics/Analytics;->k:Z

    :cond_1
    new-instance v0, Lcom/urbanairship/analytics/ActivityMonitor;

    iget v1, p0, Lcom/urbanairship/analytics/Analytics;->l:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v3, p0, Lcom/urbanairship/analytics/Analytics;->m:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/urbanairship/analytics/ActivityMonitor;-><init>(IIZ)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->g:Lcom/urbanairship/analytics/ActivityMonitor;

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->g:Lcom/urbanairship/analytics/ActivityMonitor;

    new-instance v1, Lcom/urbanairship/analytics/Analytics$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/analytics/Analytics$1;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/ActivityMonitor;->a(Lcom/urbanairship/analytics/ActivityMonitor$Listener;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.BROADCAST_STICKY"

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/urbanairship/analytics/Analytics;->j:Z

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/analytics/Analytics;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/analytics/Analytics;->f()V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/analytics/Analytics;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/analytics/Analytics;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/urbanairship/analytics/Analytics;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/urbanairship/analytics/Analytics;->j:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/urbanairship/analytics/Analytics;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/urbanairship/analytics/Analytics;->j:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/urbanairship/analytics/Analytics;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/ActivityMonitor;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->g:Lcom/urbanairship/analytics/ActivityMonitor;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->k:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/urbanairship/analytics/ActivityStartedEvent;

    invoke-direct {v0, p1}, Lcom/urbanairship/analytics/ActivityStartedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->g:Lcom/urbanairship/analytics/ActivityMonitor;

    sget-object v1, Lcom/urbanairship/analytics/ActivityMonitor$Source;->a:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    invoke-virtual {v0, p1, v1}, Lcom/urbanairship/analytics/ActivityMonitor;->a(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/urbanairship/analytics/Analytics;->l:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "activityStarted call is no longer necessary starting with SDK 14 - ICE CREAM SANDWICH. Analytics is auto-instrumented for you."

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/urbanairship/analytics/Event;)V
    .locals 2

    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->m:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/analytics/Analytics$3;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/analytics/Analytics$3;-><init>(Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/analytics/Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting push conversion id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->e:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->k:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/urbanairship/analytics/ActivityStoppedEvent;

    invoke-direct {v0, p1}, Lcom/urbanairship/analytics/ActivityStoppedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->g:Lcom/urbanairship/analytics/ActivityMonitor;

    sget-object v1, Lcom/urbanairship/analytics/ActivityMonitor$Source;->a:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    invoke-virtual {v0, p1, v1}, Lcom/urbanairship/analytics/ActivityMonitor;->b(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/urbanairship/analytics/Analytics;->l:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "activityStopped call is no longer necessary starting with SDK 14 - ICE CREAM SANDWICH. Analytics is auto-instrumented for you."

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->f:Ljava/lang/String;

    return-object v0
.end method

.method final d()Lcom/urbanairship/analytics/EventDataManager;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->h:Lcom/urbanairship/analytics/EventDataManager;

    return-object v0
.end method

.method final e()Lcom/urbanairship/analytics/AnalyticsPreferences;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->i:Lcom/urbanairship/analytics/AnalyticsPreferences;

    return-object v0
.end method
