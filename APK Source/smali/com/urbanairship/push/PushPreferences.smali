.class public Lcom/urbanairship/push/PushPreferences;
.super Lcom/urbanairship/Preferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/Preferences;-><init>(Landroid/content/Context;)V

    const-string v0, "com.urbanairship.push"

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static r()V
    .locals 2

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/analytics/PushPreferencesChangedEvent;

    invoke-direct {v1}, Lcom/urbanairship/analytics/PushPreferencesChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const-string v0, "com.urbanairship.push.APP_VERSION"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method final a(J)V
    .locals 2

    const-string v0, "com.urbanairship.push.LAST_APID_REGISTRATION_TIME"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/Date;Ljava/util/Date;)V
    .locals 11

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v4, -0x1

    const-string v10, "com.urbanairship.push.QuietTime.END_MINUTE"

    const-string v9, "com.urbanairship.push.QuietTime.END_HOUR"

    const-string v0, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {p0, v0, v4}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {p0, v1, v4}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {p0, v9, v4}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {p0, v10, v4}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v0, v5, :cond_0

    if-ne v1, v4, :cond_0

    if-ne v2, v7, :cond_0

    if-eq v3, v6, :cond_1

    :cond_0
    const-string v0, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/urbanairship/push/PushPreferences;->r()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "com.urbanairship.push.LAST_CANONICAL_IDS"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "com.urbanairship.push.TAGS"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final a(Z)V
    .locals 2

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    const-string v0, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "com.urbanairship.push.PUSH_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/urbanairship/push/PushPreferences;->r()V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    const-string v0, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Z)V
    .locals 2

    const-string v1, "com.urbanairship.push.SOUND_ENABLED"

    const-string v0, "com.urbanairship.push.SOUND_ENABLED"

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "com.urbanairship.push.SOUND_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/urbanairship/push/PushPreferences;->r()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    const-string v0, "com.urbanairship.push.SOUND_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.urbanairship.push.APID"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v0, "PushPreferences - attempted to save malformed APID."

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(Z)V
    .locals 2

    const-string v0, "com.urbanairship.push.APID_READY"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Z
    .locals 2

    const-string v0, "com.urbanairship.push.VIBRATE_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "com.urbanairship.push.BOX_OFFICE_SECRET"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "PushPreferences - attempted to save malformed secret."

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.urbanairship.push.ALIAS"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method final d(Z)V
    .locals 2

    const-string v0, "com.urbanairship.push.APID_UPDATE_NEEDED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method final d()Z
    .locals 2

    const-string v0, "com.urbanairship.push.APID_READY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.APID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.urbanairship.push.DEVICE_ID"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()Z
    .locals 2

    const-string v0, "com.urbanairship.push.QuietTime.ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final g()Z
    .locals 11

    const/16 v10, 0xb

    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v0, "com.urbanairship.push.QuietTime.ENABLED"

    invoke-virtual {p0, v0, v7}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {p0, v1, v6}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {p0, v2, v6}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {p0, v3, v6}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {p0, v4, v6}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v4

    if-eq v6, v1, :cond_1

    if-eq v6, v2, :cond_1

    if-eq v6, v3, :cond_1

    if-ne v6, v4, :cond_2

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v5, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v5, v1, v7}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v10, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v5, v9, v6}, Ljava/util/Calendar;->add(II)V

    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->add(II)V

    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v8

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_0
.end method

.method public final h()[Ljava/util/Date;
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v0, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {p0, v0, v4}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {p0, v1, v4}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {p0, v2, v4}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {p0, v3, v4}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v4, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v8, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v4, v1, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v8, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->set(II)V

    if-ge v2, v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {v4, v0, v6}, Ljava/util/Calendar;->add(II)V

    :cond_2
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/Date;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    move-object v0, v2

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.ALIAS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/Set;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "com.urbanairship.push.TAGS"

    const-string v2, "[]"

    invoke-virtual {p0, v1, v2}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final l()Z
    .locals 2

    const-string v0, "com.urbanairship.push.APID_UPDATE_NEEDED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 2

    const-string v0, "com.urbanairship.push.APP_VERSION"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.DEVICE_ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final o()J
    .locals 3

    const-string v0, "com.urbanairship.push.LAST_APID_REGISTRATION_TIME"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.urbanairship.push.LAST_CANONICAL_IDS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    return-object v0
.end method
