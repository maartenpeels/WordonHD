.class final Lcom/urbanairship/location/UALocationManager$1;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->f()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->a(Lcom/urbanairship/location/UALocationManager;)Lcom/urbanairship/location/LocationPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->a()Z

    move-result v0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->f()Lcom/urbanairship/location/UALocationManager;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/location/UALocationManager;->a(Lcom/urbanairship/location/UALocationManager;)Lcom/urbanairship/location/LocationPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/location/LocationPreferences;->b()Z

    move-result v1

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->f()Lcom/urbanairship/location/UALocationManager;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->a(Lcom/urbanairship/location/UALocationManager;)Lcom/urbanairship/location/LocationPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/location/LocationPreferences;->c()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/urbanairship/analytics/Analytics;->b:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->g()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/urbanairship/analytics/Analytics;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->h()V

    goto :goto_0
.end method
