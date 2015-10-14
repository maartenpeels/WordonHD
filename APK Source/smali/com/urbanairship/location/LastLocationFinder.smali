.class public Lcom/urbanairship/location/LastLocationFinder;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lcom/urbanairship/location/LastLocationFinder;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/location/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/urbanairship/location/LastLocationFinder;->a:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final a(JLandroid/location/Criteria;)Landroid/location/Location;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/urbanairship/location/LastLocationFinder;->a:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v7

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/urbanairship/location/LastLocationFinder;->a:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    :cond_1
    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_4

    move-object v0, v7

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_3

    move-object v0, v7

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_1

    :cond_6
    move-object v0, v7

    goto :goto_2
.end method
