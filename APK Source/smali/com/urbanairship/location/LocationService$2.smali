.class Lcom/urbanairship/location/LocationService$2;
.super Lcom/urbanairship/location/ILocationService$Stub;


# instance fields
.field final synthetic a:Lcom/urbanairship/location/LocationService;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-direct {p0}, Lcom/urbanairship/location/ILocationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->f(Lcom/urbanairship/location/LocationService;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/location/Criteria;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    iput-object p1, v0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->g(Lcom/urbanairship/location/LocationService;)V

    return-void
.end method

.method public final a(Landroid/location/Location;II)V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->b(Lcom/urbanairship/location/LocationService;Landroid/location/Location;)Landroid/location/Location;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/analytics/LocationEvent;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v2}, Lcom/urbanairship/location/LocationService;->f(Lcom/urbanairship/location/LocationService;)Landroid/location/Location;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->b:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/urbanairship/analytics/LocationEvent;-><init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method

.method public final b()Landroid/location/Criteria;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    iget-object v0, v0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    return-object v0
.end method

.method public final b(Landroid/location/Criteria;)V
    .locals 6

    const-string v0, "Requesting a single update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->b(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->h(Lcom/urbanairship/location/LocationService;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->c(Lcom/urbanairship/location/LocationService;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    iget-object v0, v0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    invoke-virtual {v0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    :goto_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v1}, Lcom/urbanairship/location/LocationService;->b(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v2, v0}, Lcom/urbanairship/location/LocationService;->a(Lcom/urbanairship/location/LocationService;I)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->i(Lcom/urbanairship/location/LocationService;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v5}, Lcom/urbanairship/location/LocationService;->j(Lcom/urbanairship/location/LocationService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v1}, Lcom/urbanairship/location/LocationService;->i(Lcom/urbanairship/location/LocationService;)Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v0, "There are no available location providers. Retrieving last known location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->k(Lcom/urbanairship/location/LocationService;)V

    goto :goto_2
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->c(Lcom/urbanairship/location/LocationService;)V

    invoke-static {}, Lcom/urbanairship/location/LocationService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->d(Lcom/urbanairship/location/LocationService;)V

    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->b(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->e(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
