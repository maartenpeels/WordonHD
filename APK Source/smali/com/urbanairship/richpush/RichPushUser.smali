.class public Lcom/urbanairship/richpush/RichPushUser;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/urbanairship/richpush/RichPushUserPreferences;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/richpush/RichPushUserPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->a:Lcom/urbanairship/richpush/RichPushUserPreferences;

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating user attributes for id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v2

    iget-object v2, v2, Lcom/urbanairship/richpush/RichPushUser;->a:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v2, v1, v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Unable to update user. Missing user ID or user token."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/richpush/RichPushUser;->a:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/richpush/RichPushUser;->a:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushUserPreferences;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->a:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/richpush/RichPushUserPreferences;->a(J)V

    return-void
.end method

.method final c()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/user/%s/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushUser;->a:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUserPreferences;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized d()Lcom/urbanairship/richpush/RichPushInbox;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/urbanairship/richpush/RichPushInbox;->a()Lcom/urbanairship/richpush/RichPushInbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->a:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->a:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()J
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->a:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->c()J

    move-result-wide v0

    return-wide v0
.end method
