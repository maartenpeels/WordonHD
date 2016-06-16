.class Lcom/urbanairship/analytics/AnalyticsPreferences;
.super Lcom/urbanairship/Preferences;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/Preferences;-><init>(Landroid/content/Context;)V

    const-string v0, "com.urbanairship.analytics"

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(III)I
    .locals 1

    if-le p0, p1, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    if-ge p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 2

    const-string v0, "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

    const/high16 v1, 0x500000

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final a(I)V
    .locals 2

    const/high16 v0, 0x500000

    const/16 v1, 0x2800

    invoke-static {p1, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(III)I

    move-result v0

    const-string v1, "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method final a(J)V
    .locals 2

    const-string v0, "com.urbanairship.analytics.LAST_SEND"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method final b()I
    .locals 2

    const-string v0, "com.urbanairship.analytics.MAX_BATCH_SIZE"

    const v1, 0x7d000

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final b(I)V
    .locals 2

    const v0, 0x7d000

    const/16 v1, 0x400

    invoke-static {p1, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(III)I

    move-result v0

    const-string v1, "com.urbanairship.analytics.MAX_BATCH_SIZE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method final c()I
    .locals 2

    const-string v0, "com.urbanairship.analytics.MAX_WAIT"

    const v1, 0x48190800

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final c(I)V
    .locals 2

    const v0, 0x48190800

    const v1, 0x240c8400

    invoke-static {p1, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(III)I

    move-result v0

    const-string v1, "com.urbanairship.analytics.MAX_WAIT"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method final d()I
    .locals 2

    const-string v0, "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

    const v1, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final d(I)V
    .locals 2

    const v0, 0x240c8400

    const v1, 0xea60

    invoke-static {p1, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(III)I

    move-result v0

    const-string v1, "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method final e()J
    .locals 3

    const-string v0, "com.urbanairship.analytics.LAST_SEND"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/urbanairship/analytics/AnalyticsPreferences;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
