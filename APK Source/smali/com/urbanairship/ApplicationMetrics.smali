.class public Lcom/urbanairship/ApplicationMetrics;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/urbanairship/Preferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/urbanairship/Preferences;

    invoke-direct {v0, p1}, Lcom/urbanairship/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->a:Lcom/urbanairship/Preferences;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/urbanairship/ApplicationMetrics$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/ApplicationMetrics$1;-><init>(Lcom/urbanairship/ApplicationMetrics;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/ApplicationMetrics;)Lcom/urbanairship/Preferences;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->a:Lcom/urbanairship/Preferences;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->a:Lcom/urbanairship/Preferences;

    const-string v1, "com.urbanairship.application.metrics.LAST_OPEN"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/Preferences;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
