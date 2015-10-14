.class public Lcom/facebook/BoltsMeasurementEventListener;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final BOLTS_MEASUREMENT_EVENT_PREFIX:Ljava/lang/String; = "bf_"

.field private static final MEASUREMENT_EVENT_ARGS_KEY:Ljava/lang/String; = "event_args"

.field private static final MEASUREMENT_EVENT_NAME_KEY:Ljava/lang/String; = "event_name"

.field private static final MEASUREMENT_EVENT_NOTIFICATION_NAME:Ljava/lang/String; = "com.parse.bolts.measurement_event"

.field private static _instance:Lcom/facebook/BoltsMeasurementEventListener;


# instance fields
.field private applicationContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/BoltsMeasurementEventListener;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method private close()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/BoltsMeasurementEventListener;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lc/m/x/a/gv/w;->a(Landroid/content/Context;)Lc/m/x/a/gv/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/m/x/a/gv/w;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/facebook/BoltsMeasurementEventListener;
    .locals 1

    sget-object v0, Lcom/facebook/BoltsMeasurementEventListener;->_instance:Lcom/facebook/BoltsMeasurementEventListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/BoltsMeasurementEventListener;->_instance:Lcom/facebook/BoltsMeasurementEventListener;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/BoltsMeasurementEventListener;

    invoke-direct {v0, p0}, Lcom/facebook/BoltsMeasurementEventListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/BoltsMeasurementEventListener;->_instance:Lcom/facebook/BoltsMeasurementEventListener;

    invoke-direct {v0}, Lcom/facebook/BoltsMeasurementEventListener;->open()V

    sget-object v0, Lcom/facebook/BoltsMeasurementEventListener;->_instance:Lcom/facebook/BoltsMeasurementEventListener;

    goto :goto_0
.end method

.method private open()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/BoltsMeasurementEventListener;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lc/m/x/a/gv/w;->a(Landroid/content/Context;)Lc/m/x/a/gv/w;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.parse.bolts.measurement_event"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lc/m/x/a/gv/w;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/BoltsMeasurementEventListener;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v8, ""

    invoke-static {p1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bf_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "event_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_args"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v5, "[^0-9a-zA-Z _-]"

    const-string v6, "-"

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^[ -]*"

    const-string v7, ""

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[ -]*$"

    const-string v7, ""

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
