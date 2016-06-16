.class public Lcom/urbanairship/analytics/EventService;
.super Landroid/app/IntentService;


# static fields
.field private static a:J


# instance fields
.field private b:Lcom/urbanairship/analytics/EventAPIClient;

.field private c:Lcom/urbanairship/analytics/EventDataManager;

.field private d:Lcom/urbanairship/analytics/AnalyticsPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/urbanairship/analytics/EventService;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "EventService"

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/EventService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/urbanairship/analytics/EventAPIClient;

    invoke-direct {v0}, Lcom/urbanairship/analytics/EventAPIClient;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/analytics/EventService;-><init>(Ljava/lang/String;Lcom/urbanairship/analytics/EventAPIClient;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/urbanairship/analytics/EventAPIClient;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/analytics/EventAPIClient;

    invoke-direct {v0}, Lcom/urbanairship/analytics/EventAPIClient;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/EventService;->b:Lcom/urbanairship/analytics/EventAPIClient;

    iput-object p2, p0, Lcom/urbanairship/analytics/EventService;->b:Lcom/urbanairship/analytics/EventAPIClient;

    return-void
.end method

.method private a()J
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->e()J

    move-result-wide v0

    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/analytics/AnalyticsPreferences;->d()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Lcom/urbanairship/analytics/EventService;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Lcom/urbanairship/restclient/Response;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/urbanairship/restclient/Response;->a(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse String: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "as an int."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private static a(J)V
    .locals 5

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.analytics.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static a(Lcom/urbanairship/analytics/Event;)V
    .locals 4

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.analytics.ADD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/urbanairship/analytics/EventService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "com.urbanairship.analytics.TYPE_EXTRA"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.urbanairship.analytics.CONTENT_VALUES_EXTRA"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->c()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to start analytics service. Check that the event service is added to the manifest."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->b(Landroid/app/Application;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->d()Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->e()Lcom/urbanairship/analytics/AnalyticsPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    const-wide/16 v6, 0x0

    const-string v5, "activity_stopped"

    const-string v4, "activity_started"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.urbanairship.analytics.ADD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.urbanairship.analytics.TYPE_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.urbanairship.analytics.CONTENT_VALUES_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v2}, Lcom/urbanairship/analytics/EventDataManager;->c()I

    move-result v2

    iget-object v3, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a()I

    move-result v3

    if-le v2, v3, :cond_5

    const-string v2, "activity_started"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "activity_stopped"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v0, "Database full. Not logging activity start/stop events"

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->a()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/EventService;->a(J)V

    goto :goto_0

    :cond_4
    const-string v2, "DB size exceeded. Deleting non-critical events."

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    const-string v2, "Deleting activity start and stop events"

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    const-string v3, "activity_started"

    invoke-virtual {v2, v4}, Lcom/urbanairship/analytics/EventDataManager;->a(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    const-string v3, "activity_stopped"

    invoke-virtual {v2, v5}, Lcom/urbanairship/analytics/EventDataManager;->a(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v2}, Lcom/urbanairship/analytics/EventDataManager;->c()I

    move-result v2

    iget-object v3, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a()I

    move-result v3

    if-le v2, v3, :cond_5

    const-string v2, "Deleting oldest session."

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v2}, Lcom/urbanairship/analytics/EventDataManager;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v3, v2}, Lcom/urbanairship/analytics/EventDataManager;->b(Ljava/lang/String;)Z

    :cond_5
    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v2, v0}, Lcom/urbanairship/analytics/EventDataManager;->a(Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-gtz v0, :cond_6

    const-string v0, "Unable to insert event into database."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_6
    const-string v0, "location_updated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/analytics/AnalyticsPreferences;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    iget-object v2, v2, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    iget-wide v2, v2, Lcom/urbanairship/LocationOptions;->e:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/analytics/Analytics;->a()Z

    move-result v4

    if-nez v4, :cond_3

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    sub-long v0, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocationEvent was inserted, but may not be updated until "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms have passed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(J)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->b()I

    move-result v0

    if-gtz v0, :cond_8

    const-string v0, "No events to send. Ending analytics upload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/EventDataManager;->c()I

    move-result v1

    div-int/2addr v1, v0

    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    iget-object v3, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/analytics/AnalyticsPreferences;->b()I

    move-result v3

    div-int v1, v3, v1

    invoke-virtual {v2, v1}, Lcom/urbanairship/analytics/EventDataManager;->a(I)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/analytics/EventService;->b:Lcom/urbanairship/analytics/EventAPIClient;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/analytics/EventAPIClient;->a(Ljava/util/Collection;)Lcom/urbanairship/restclient/Response;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Uploading events: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_e

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_f

    iget-object v4, p0, Lcom/urbanairship/analytics/EventService;->c:Lcom/urbanairship/analytics/EventDataManager;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/analytics/EventDataManager;->a(Ljava/util/Set;)Z

    sput-wide v6, Lcom/urbanairship/analytics/EventService;->a:J

    :goto_3
    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_a

    :cond_9
    const-string v0, "Scheduling next event batch upload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/EventService;->a(J)V

    :cond_a
    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warp 9 response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    const-string v0, "X-UA-Max-Total"

    invoke-static {v2, v0}, Lcom/urbanairship/analytics/EventService;->a(Lcom/urbanairship/restclient/Response;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "X-UA-Max-Batch"

    invoke-static {v2, v1}, Lcom/urbanairship/analytics/EventService;->a(Lcom/urbanairship/restclient/Response;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "X-UA-Max-Wait"

    invoke-static {v2, v3}, Lcom/urbanairship/analytics/EventService;->a(Lcom/urbanairship/restclient/Response;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "X-UA-Min-Batch-Interval"

    invoke-static {v2, v4}, Lcom/urbanairship/analytics/EventService;->a(Lcom/urbanairship/restclient/Response;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(I)V

    :cond_b
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->b(I)V

    :cond_c
    if-eqz v3, :cond_d

    iget-object v0, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->c(I)V

    :cond_d
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->d(I)V

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_f
    sget-wide v4, Lcom/urbanairship/analytics/EventService;->a:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v4}, Lcom/urbanairship/analytics/AnalyticsPreferences;->d()I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/urbanairship/analytics/EventService;->a:J

    goto/16 :goto_3

    :cond_10
    sget-wide v4, Lcom/urbanairship/analytics/EventService;->a:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/urbanairship/analytics/EventService;->d:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v6}, Lcom/urbanairship/analytics/AnalyticsPreferences;->c()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    sput-wide v4, Lcom/urbanairship/analytics/EventService;->a:J

    goto/16 :goto_3
.end method
