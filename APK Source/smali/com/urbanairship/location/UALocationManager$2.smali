.class final Lcom/urbanairship/location/UALocationManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    invoke-static {p2}, Lcom/urbanairship/location/ILocationService$Stub;->a(Landroid/os/IBinder;)Lcom/urbanairship/location/ILocationService;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->a(Lcom/urbanairship/location/ILocationService;)Lcom/urbanairship/location/ILocationService;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->a(Z)Z

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->f()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->b(Lcom/urbanairship/location/UALocationManager;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->i()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->f()Lcom/urbanairship/location/UALocationManager;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/location/UALocationManager;->b(Lcom/urbanairship/location/UALocationManager;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.location.LOCATION_SERVICE_BOUND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->a(Lcom/urbanairship/location/ILocationService;)Lcom/urbanairship/location/ILocationService;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->a(Z)Z

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->f()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->b(Lcom/urbanairship/location/UALocationManager;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->i()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->f()Lcom/urbanairship/location/UALocationManager;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/location/UALocationManager;->b(Lcom/urbanairship/location/UALocationManager;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.location.LOCATION_SERVICE_UNBOUND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const-string v0, "LocationService unbound."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    return-void
.end method
