.class public Lcom/urbanairship/location/LocationService;
.super Landroid/app/Service;


# static fields
.field private static final b:Ljava/lang/String;

.field private static m:Z

.field private static n:Z


# instance fields
.field a:Landroid/location/Criteria;

.field private c:Landroid/content/Context;

.field private d:Lcom/urbanairship/location/LastLocationFinder;

.field private e:Landroid/location/Location;

.field private f:Landroid/location/LocationManager;

.field private g:Landroid/app/PendingIntent;

.field private h:Landroid/app/PendingIntent;

.field private i:Lcom/urbanairship/location/LocationService$ProviderListener;

.field private j:Lcom/urbanairship/location/LocationService$ProviderListener;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final o:Lcom/urbanairship/location/ILocationService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->b:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/location/LocationService;->b:Ljava/lang/String;

    sput-boolean v2, Lcom/urbanairship/location/LocationService;->m:Z

    sput-boolean v2, Lcom/urbanairship/location/LocationService;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/urbanairship/location/LocationService$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/LocationService$2;-><init>(Lcom/urbanairship/location/LocationService;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->o:Lcom/urbanairship/location/ILocationService$Stub;

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/location/LocationService;)Lcom/urbanairship/location/LastLocationFinder;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->d:Lcom/urbanairship/location/LastLocationFinder;

    return-object v0
.end method

.method static synthetic a(Lcom/urbanairship/location/LocationService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/location/LocationService;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.ACTION_SINGLE_LOCATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.urbanairship.location.REQUESTED_ACCURACY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->h:Landroid/app/PendingIntent;

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 3

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->b()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager;->d()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ".urbanairship.location.LOCATION_UPDATE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.urbanairship.location.LOCATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/location/LocationService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/location/LocationService;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->a(Landroid/location/Location;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/urbanairship/LocationOptions;Lcom/urbanairship/location/LocationService$ProviderListener;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    iget-wide v1, p2, Lcom/urbanairship/LocationOptions;->d:J

    const-wide/16 v3, 0x3e8

    mul-long v2, v1, v3

    iget v1, p2, Lcom/urbanairship/LocationOptions;->c:I

    int-to-float v4, v1

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to request location updates for provider "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->m:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/urbanairship/location/LocationService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/location/LocationService;->e:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic b(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->k:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/urbanairship/location/LocationService;->n:Z

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->e()V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    invoke-virtual {v0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/urbanairship/location/LocationService;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/urbanairship/location/LocationService;->m:Z

    if-eqz v0, :cond_1

    const-string v0, "Location service already started."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/urbanairship/location/LocationService;->m:Z

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->f()V

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->g()V

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->h()V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    iget-boolean v1, v0, Lcom/urbanairship/LocationOptions;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/urbanairship/location/LocationService;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/urbanairship/location/LocationService$ProviderListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/urbanairship/location/LocationService$ProviderListener;-><init>(Lcom/urbanairship/location/LocationService;B)V

    iput-object v1, p0, Lcom/urbanairship/location/LocationService;->j:Lcom/urbanairship/location/LocationService$ProviderListener;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->j:Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/urbanairship/location/LocationService;->a(Ljava/lang/String;Lcom/urbanairship/LocationOptions;Lcom/urbanairship/location/LocationService$ProviderListener;)V

    :cond_2
    sget-object v1, Lcom/urbanairship/location/LocationService;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/urbanairship/location/LocationService;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/urbanairship/location/LocationService$ProviderListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/urbanairship/location/LocationService$ProviderListener;-><init>(Lcom/urbanairship/location/LocationService;B)V

    iput-object v1, p0, Lcom/urbanairship/location/LocationService;->i:Lcom/urbanairship/location/LocationService$ProviderListener;

    sget-object v1, Lcom/urbanairship/location/LocationService;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->i:Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/urbanairship/location/LocationService;->a(Ljava/lang/String;Lcom/urbanairship/LocationOptions;Lcom/urbanairship/location/LocationService$ProviderListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->f()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->i:Lcom/urbanairship/location/LocationService$ProviderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->i:Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->j:Lcom/urbanairship/location/LocationService$ProviderListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->j:Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    sget-boolean v0, Lcom/urbanairship/location/LocationService;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/LocationService;->m:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/LocationService;->n:Z

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->i()V

    return-void
.end method

.method static synthetic e(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    invoke-virtual {v0}, Lcom/urbanairship/LocationOptions;->a()Z

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    iput-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    iget v1, v0, Lcom/urbanairship/LocationOptions;->g:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    iget v2, v0, Lcom/urbanairship/LocationOptions;->f:I

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    :goto_0
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    iget v2, v0, Lcom/urbanairship/LocationOptions;->h:I

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    iget-boolean v2, v0, Lcom/urbanairship/LocationOptions;->l:Z

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    iget-boolean v2, v0, Lcom/urbanairship/LocationOptions;->i:Z

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    iget-boolean v2, v0, Lcom/urbanairship/LocationOptions;->k:Z

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    iget-boolean v0, v0, Lcom/urbanairship/LocationOptions;->j:Z

    invoke-virtual {v1, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    iget v2, v0, Lcom/urbanairship/LocationOptions;->g:I

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/urbanairship/location/LocationService;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->e:Landroid/location/Location;

    return-object v0
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    iget-boolean v0, v0, Lcom/urbanairship/LocationOptions;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/urbanairship/location/LocationService;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->k:Ljava/lang/String;

    :goto_1
    const-string v0, "Current location provider: %s, best location provider: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->k:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/urbanairship/location/LocationService;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/urbanairship/location/LocationService;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->l:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->k:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private g()V
    .locals 2

    const-string v0, "Invoking last location finder."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/location/LastLocationFinder;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/urbanairship/location/LastLocationFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->d:Lcom/urbanairship/location/LastLocationFinder;

    new-instance v0, Lcom/urbanairship/location/LocationService$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/LocationService$1;-><init>(Lcom/urbanairship/location/LocationService;)V

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to execute findLastLocationTask."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->h()V

    return-void
.end method

.method private h()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.ACTION_LOCATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.urbanairship.location.REQUESTED_ACCURACY"

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    invoke-virtual {v2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->g:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic h(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->e()V

    return-void
.end method

.method static synthetic i(Lcom/urbanairship/location/LocationService;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    return-object v0
.end method

.method private i()V
    .locals 8

    const-string v0, "Removing location update requests with the old provider"

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/urbanairship/location/LocationService;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v4, v0, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requesting location updates with the new provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/urbanairship/location/LocationService;->g:Landroid/app/PendingIntent;

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    iget-wide v2, v4, Lcom/urbanairship/LocationOptions;->d:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    iget v4, v4, Lcom/urbanairship/LocationOptions;->c:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to request location updates for provider "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "There are no available providers, waiting to request updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/urbanairship/location/LocationService;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->h:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic k(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->g()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->o:Lcom/urbanairship/location/ILocationService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->b(Landroid/app/Application;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LocationService started prior to a UAirship.takeOff() call."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UAirship.takeOff() must be called every time Application.onCreate() is invoked."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->n:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->b()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "Location service destroyed"

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->d()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8

    const-string v6, "com.urbanairship.location.STOP"

    const-string v0, "com.urbanairship.location.REQUESTED_CRITERIA"

    const-string v3, "com.urbanairship.location.ACTION_SINGLE_LOCATION_CHANGED"

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.urbanairship.location.STOP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Location Service stopping."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->d()V

    goto :goto_0

    :cond_2
    const-string v1, "com.urbanairship.location.START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "Location Service starting."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->m:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->c()V

    :cond_3
    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->b()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager;->c()Lcom/urbanairship/location/LocationPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->i()V

    goto :goto_0

    :cond_4
    const-string v1, "com.urbanairship.location.RECORD_CURRENT_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "Location Service recording current location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->m:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->c()V

    :cond_5
    :try_start_0
    const-string v0, "com.urbanairship.location.REQUESTED_CRITERIA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "com.urbanairship.location.REQUESTED_CRITERIA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->o:Lcom/urbanairship/location/ILocationService$Stub;

    invoke-virtual {v1, v0}, Lcom/urbanairship/location/ILocationService$Stub;->b(Landroid/location/Criteria;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->o:Lcom/urbanairship/location/ILocationService$Stub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/ILocationService$Stub;->b(Landroid/location/Criteria;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_7
    const-string v1, "com.urbanairship.location.ACTION_SINGLE_LOCATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.urbanairship.location.ACTION_LOCATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_0

    const-string v1, "Received a location update."

    invoke-static {v1}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->a:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const-string v2, "com.urbanairship.location.ACTION_SINGLE_LOCATION_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v1, "Received a single-shot location update."

    invoke-static {v1}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->f:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->h:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->b:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const/4 v2, 0x0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->b()Lcom/urbanairship/location/UALocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/location/UALocationManager;->c()Lcom/urbanairship/location/LocationPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/location/LocationPreferences;->c()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->e()V

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/content/Context;

    const-class v5, Lcom/urbanairship/location/LocationService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.urbanairship.location.STOP"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "LocationService stopService"

    invoke-static {v4}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/urbanairship/location/LocationService;->c:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move v7, v2

    move-object v2, v1

    move v1, v7

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->e:Landroid/location/Location;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/analytics/LocationEvent;

    const-string v5, "com.urbanairship.location.REQUESTED_ACCURACY"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v4, v0, v2, v5, v1}, Lcom/urbanairship/analytics/LocationEvent;-><init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V

    invoke-virtual {v3, v4}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->e:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/urbanairship/location/LocationService;->a(Landroid/location/Location;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    iget-object v2, v2, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    iget v2, v2, Lcom/urbanairship/LocationOptions;->c:I

    move v7, v2

    move-object v2, v1

    move v1, v7

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v7, v2

    move-object v2, v1

    move v1, v7

    goto :goto_1
.end method
