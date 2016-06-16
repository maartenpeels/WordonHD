.class public Lcom/milkmangames/extensions/android/push/PushAutopilot;
.super Lcom/urbanairship/Autopilot;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/urbanairship/Autopilot;-><init>()V

    const-string v0, "[EPAPInternal]"

    const-string v1, "Init."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v9, "[EPAPInternal]"

    const-string v0, "[EPAPInternal]"

    const-string v0, "Cold start."

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-string v2, "[EPAPInternal]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pnpref"

    invoke-virtual {v2, v3, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ask"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "[EPAPInternal]"

    const-string v0, "cold start aborted."

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sput-boolean v12, Lc/m/x/a/ep/p;->c:Z

    const-string v4, "ass"

    invoke-interface {v2, v4, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "asd"

    invoke-interface {v2, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "asa"

    invoke-interface {v2, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "asb"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "asc"

    invoke-interface {v2, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-boolean v7, Lc/m/x/a/ep/p;->d:Z

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/AirshipConfigOptions;->a(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v7

    if-eqz v5, :cond_2

    iput-object v3, v7, Lcom/urbanairship/AirshipConfigOptions;->c:Ljava/lang/String;

    iput-object v4, v7, Lcom/urbanairship/AirshipConfigOptions;->d:Ljava/lang/String;

    iput-boolean v10, v7, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    :goto_1
    const-string v3, "gcm"

    iput-object v3, v7, Lcom/urbanairship/AirshipConfigOptions;->i:Ljava/lang/String;

    iput-object v2, v7, Lcom/urbanairship/AirshipConfigOptions;->h:Ljava/lang/String;

    const/16 v2, 0xe

    iput v2, v7, Lcom/urbanairship/AirshipConfigOptions;->q:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-string v4, "[EPAPInternal]"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Takeoff start "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v7}, Lcom/urbanairship/UAirship;->a(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/urbanairship/push/PushManager;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    const-class v1, Lcom/milkmangames/extensions/android/push/MmgPushReceiver;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->a(Ljava/lang/Class;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-static {}, Lc/m/x/a/ep/o;->a()Lc/m/x/a/ep/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->a(Lcom/urbanairship/push/PushNotificationBuilder;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    const-string v1, "[EPAPInternal]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "AIRSHIP->App APID: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v12}, Lcom/urbanairship/push/PushPreferences;->b(Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-string v4, "[EPAPInternal]"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Takeoff complete:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iput-object v3, v7, Lcom/urbanairship/AirshipConfigOptions;->a:Ljava/lang/String;

    iput-object v4, v7, Lcom/urbanairship/AirshipConfigOptions;->b:Ljava/lang/String;

    iput-boolean v12, v7, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    goto/16 :goto_1
.end method
