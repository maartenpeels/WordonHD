.class public Lcom/urbanairship/analytics/LocationEvent;
.super Lcom/urbanairship/analytics/Event;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/urbanairship/analytics/LocationEvent$UpdateType;


# direct methods
.method public constructor <init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V
    .locals 6

    new-instance v1, Lcom/urbanairship/analytics/DefaultEnvironment;

    invoke-direct {v1}, Lcom/urbanairship/analytics/DefaultEnvironment;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/analytics/LocationEvent;-><init>(Lcom/urbanairship/analytics/Environment;Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/analytics/Environment;Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "NONE"

    const-string v4, "%.6f"

    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/Event;-><init>(Lcom/urbanairship/analytics/Environment;)V

    const-string v0, "%.6f"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->b:Ljava/lang/String;

    const-string v0, "%.6f"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->c:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->values()[Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    move-result-object v1

    array-length v2, v1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->d:Ljava/lang/String;

    if-ltz p4, :cond_2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->e:Ljava/lang/String;

    if-ltz p5, :cond_3

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Environment;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "true"

    :goto_4
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/analytics/LocationEvent;->h:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const-string v0, "New location at lat: %s, long: %s found with provider: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->b:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->c:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->d:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "NONE"

    move-object v0, v7

    goto :goto_2

    :cond_3
    const-string v0, "NONE"

    move-object v0, v7

    goto :goto_3

    :cond_4
    const-string v0, "false"

    goto :goto_4
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "location"

    return-object v0
.end method

.method final b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/urbanairship/analytics/LocationEvent;->d()Lcom/urbanairship/analytics/Environment;

    move-result-object v1

    :try_start_0
    const-string v2, "session_id"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "push_enabled"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->n()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "notification_types"

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lat"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "long"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "requested_accuracy"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "update_type"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->h:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {v2}, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "provider"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "h_accuracy"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "v_accuracy"

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "foreground"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "update_dist"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "Error constructing JSON data for location"

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
