.class public Lcom/urbanairship/location/LocationPreferences;
.super Lcom/urbanairship/Preferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/Preferences;-><init>(Landroid/content/Context;)V

    const-string v0, "com.urbanairship.location"

    invoke-virtual {p0, v0}, Lcom/urbanairship/location/LocationPreferences;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const-string v0, "com.urbanairship.location.LOCATION_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/location/LocationPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    const-string v0, "com.urbanairship.location.BACKGROUND_LOCATION_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/location/LocationPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "com.urbanairship.location.BACKGROUND_LOCATION_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/location/LocationPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.urbanairship.location.FOREGROUND_LOCATION_ENABLED"

    invoke-virtual {p0, v0, v2}, Lcom/urbanairship/location/LocationPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
