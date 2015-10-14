.class Lcom/urbanairship/location/LocationService$1;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/urbanairship/location/LocationService;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/location/LocationService$1;->a:Lcom/urbanairship/location/LocationService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$1;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v1}, Lcom/urbanairship/location/LocationService;->a(Lcom/urbanairship/location/LocationService;)Lcom/urbanairship/location/LastLocationFinder;

    move-result-object v1

    iget-wide v2, v0, Lcom/urbanairship/LocationOptions;->d:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$1;->a:Lcom/urbanairship/location/LocationService;

    iget-object v0, v0, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    invoke-virtual {v1, v2, v3, v0}, Lcom/urbanairship/location/LastLocationFinder;->a(JLandroid/location/Criteria;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Last best location found at lat: %f, long: %f with provider: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/urbanairship/analytics/LocationEvent;

    sget-object v2, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->a:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    iget-object v3, p0, Lcom/urbanairship/location/LocationService$1;->a:Lcom/urbanairship/location/LocationService;

    iget-object v3, v3, Lcom/urbanairship/location/LocationService;->a:Landroid/location/Criteria;

    invoke-virtual {v3}, Landroid/location/Criteria;->getAccuracy()I

    move-result v3

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v4

    iget-object v4, v4, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    iget v4, v4, Lcom/urbanairship/LocationOptions;->c:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/urbanairship/analytics/LocationEvent;-><init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$1;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v1, v0}, Lcom/urbanairship/location/LocationService;->a(Lcom/urbanairship/location/LocationService;Landroid/location/Location;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "No last best location found."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
