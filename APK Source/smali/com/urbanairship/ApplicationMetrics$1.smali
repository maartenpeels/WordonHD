.class Lcom/urbanairship/ApplicationMetrics$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/urbanairship/ApplicationMetrics;


# direct methods
.method constructor <init>(Lcom/urbanairship/ApplicationMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/ApplicationMetrics$1;->a:Lcom/urbanairship/ApplicationMetrics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/ApplicationMetrics$1;->a:Lcom/urbanairship/ApplicationMetrics;

    invoke-static {v0}, Lcom/urbanairship/ApplicationMetrics;->a(Lcom/urbanairship/ApplicationMetrics;)Lcom/urbanairship/Preferences;

    move-result-object v0

    const-string v1, "com.urbanairship.application.metrics.LAST_OPEN"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/Preferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
