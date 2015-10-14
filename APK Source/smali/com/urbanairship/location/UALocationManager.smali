.class public Lcom/urbanairship/location/UALocationManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/urbanairship/location/UALocationManager;

.field private static b:Z

.field private static c:Landroid/content/Context;

.field private static d:Lcom/urbanairship/location/ILocationService;


# instance fields
.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/ServiceConnection;

.field private g:Lcom/urbanairship/location/LocationPreferences;

.field private h:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/location/UALocationManager;

    invoke-direct {v0}, Lcom/urbanairship/location/UALocationManager;-><init>()V

    sput-object v0, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/UALocationManager;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/location/ILocationService;)Lcom/urbanairship/location/ILocationService;
    .locals 0

    sput-object p0, Lcom/urbanairship/location/UALocationManager;->d:Lcom/urbanairship/location/ILocationService;

    return-object p0
.end method

.method static synthetic a(Lcom/urbanairship/location/UALocationManager;)Lcom/urbanairship/location/LocationPreferences;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->g:Lcom/urbanairship/location/LocationPreferences;

    return-object v0
.end method

.method public static a()V
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    new-instance v1, Lcom/urbanairship/location/LocationPreferences;

    invoke-direct {v1}, Lcom/urbanairship/location/LocationPreferences;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/location/UALocationManager;->g:Lcom/urbanairship/location/LocationPreferences;

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->g:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->g:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->j()V

    :goto_0
    sget-object v0, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    new-instance v1, Lcom/urbanairship/location/UALocationManager$1;

    invoke-direct {v1}, Lcom/urbanairship/location/UALocationManager$1;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/location/UALocationManager;->e:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    new-instance v1, Lcom/urbanairship/location/UALocationManager$2;

    invoke-direct {v1}, Lcom/urbanairship/location/UALocationManager$2;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/location/UALocationManager;->f:Landroid/content/ServiceConnection;

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

    sget-object v2, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    iget-object v2, v2, Lcom/urbanairship/location/UALocationManager;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    const-string v0, "Location or background location are not enabled - deferring service start until foreground event."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UAirship.takeOff must be called before UALocationManager.init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/urbanairship/location/UALocationManager;->b:Z

    return p0
.end method

.method public static b()Lcom/urbanairship/location/UALocationManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    return-object v0
.end method

.method static synthetic b(Lcom/urbanairship/location/UALocationManager;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->h:Ljava/lang/Class;

    return-object v0
.end method

.method public static e()V
    .locals 4

    sget-boolean v0, Lcom/urbanairship/location/UALocationManager;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    iget-object v1, v1, Lcom/urbanairship/location/UALocationManager;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    sget-object v0, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->h:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    sget-object v3, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    iget-object v3, v3, Lcom/urbanairship/location/UALocationManager;->h:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.location.LOCATION_SERVICE_UNBOUND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/UALocationManager;->b:Z

    return-void
.end method

.method static synthetic f()Lcom/urbanairship/location/UALocationManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    return-object v0
.end method

.method static synthetic g()V
    .locals 3

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->e()V

    const-string v0, "UALocationManager stopService"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic h()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->j()V

    sget-boolean v0, Lcom/urbanairship/location/UALocationManager;->b:Z

    if-nez v0, :cond_0

    sput-boolean v3, Lcom/urbanairship/location/UALocationManager;->b:Z

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    sget-object v2, Lcom/urbanairship/location/UALocationManager;->a:Lcom/urbanairship/location/UALocationManager;

    iget-object v2, v2, Lcom/urbanairship/location/UALocationManager;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method static synthetic i()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static j()V
    .locals 3

    const-string v0, "UALocationManager startService"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final c()Lcom/urbanairship/location/LocationPreferences;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->g:Lcom/urbanairship/location/LocationPreferences;

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->h:Ljava/lang/Class;

    return-object v0
.end method
