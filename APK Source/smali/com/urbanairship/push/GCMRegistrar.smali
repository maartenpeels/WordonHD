.class abstract Lcom/urbanairship/push/GCMRegistrar;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/urbanairship/push/GCMRegistrar;->a:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Push is not enabled. Canceling GCM registration."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->d()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->m()I

    move-result v3

    if-eq v2, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version code changed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->d()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". GCM re-registration required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    move v1, v4

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using GCM Registration ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->i()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/urbanairship/util/Device;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Device ID changed. GCM re-registration required."

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM not supported in API level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    move v1, v6

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :try_start_0
    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-direct {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->a()Ljava/lang/String;
    :try_end_0
    .catch Lcom/urbanairship/push/embedded/BoxOfficeClient$FirstRunForbiddenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->h:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "app"

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.google.android.gsf"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sender"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/urbanairship/push/GCMRegistrar;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Sent GCM registration, sender: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "qnx"

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "BlackBerry"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "RIM"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "Urban Airship Android library does not support BlackBerry. Canceling GCM registration."

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    move v1, v6

    goto/16 :goto_2

    :cond_8
    const-string v1, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v1}, Lcom/urbanairship/push/GCMRegistrar;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager. Note that an AVD emulator may not support GCM."

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    const-string v1, "If you\'re running in an emulator, you need to install the appropriate image through the Android SDK and AVM manager. See http://developer.android.com/guide/google/gcm/ for further details."

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    move v1, v6

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->h:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string v1, "The GCM sender ID is not set. Unable to register."

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    move v1, v6

    goto/16 :goto_2

    :cond_a
    move v1, v4

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firstrun failed, will retry. Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->d()V

    goto/16 :goto_0
.end method

.method static a(Landroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, 0x2710

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v0

    const-string v1, "registration_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unregistered"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Received GCM error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const-string v0, "Failed to register with GCM."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GCM Failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    const-string v0, "INVALID_SENDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Your GCM sender ID is invalid. Please check your AirshipConfig."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_0
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->d()V

    :goto_0
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->f()Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v3

    if-eqz v1, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.urbanairship.push.REGISTRATION_FINISHED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.APID"

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.REGISTRATION_VALID"

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.REGISTRATION_ERROR"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->b(Ljava/lang/String;)V

    sput-wide v4, Lcom/urbanairship/push/GCMRegistrar;->a:J

    goto :goto_0

    :cond_3
    const-string v0, "Failed to unregister with GCM."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unregistered from GCM: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    :cond_5
    :goto_2
    sput-wide v4, Lcom/urbanairship/push/GCMRegistrar;->a:J

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received GCM Registration ID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    new-instance v2, Lcom/urbanairship/analytics/PushServiceStartedEvent;

    invoke-direct {v2}, Lcom/urbanairship/analytics/PushServiceStartedEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method static b()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "app"

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.google.android.gsf"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/urbanairship/push/GCMRegistrar;->b(Landroid/content/Intent;)Z

    return-void
.end method

.method private static b(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "GCMRegistrar startService"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A security exception occurred when starting service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An exception occurred when starting service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    goto :goto_0
.end method

.method static c()V
    .locals 9

    const/16 v4, 0x10

    const/4 v6, 0x0

    const-string v8, " declaration missing required "

    const-string v7, "AndroidManifest.xml\'s "

    const-class v5, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-static {}, Lcom/urbanairship/UAirship;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-static {v2}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/String;)V

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-static {v2}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/String;)V

    const-string v2, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v2}, Lcom/urbanairship/push/GCMRegistrar;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v2}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/urbanairship/UAirship;->d()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    iget v3, v3, Lcom/urbanairship/AirshipConfigOptions;->q:I

    if-lt v3, v4, :cond_1

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v4, :cond_1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".permission.C2D_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/push/GCMRegistrar;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-class v2, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-static {v5}, Lcom/urbanairship/util/ManifestUtils;->c(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AndroidManifest.xml\'s "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " declaration missing required "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " filter with category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AndroidManifest.xml\'s "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " declaration missing required "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " filter with category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-class v3, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidManifest.xml\'s "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " declaration missing required filter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Your app may not be able to reset the GCM ID on app upgrade."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string v2, "Required permission com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager."

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Required permission "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is unknown to PackageManager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidManifest.xml missing required receiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static d()V
    .locals 5

    sget-wide v0, Lcom/urbanairship/push/GCMRegistrar;->a:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x4e2000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/urbanairship/push/GCMRegistrar;->a:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheduling GCM registration in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/urbanairship/push/GCMRegistrar;->a:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.GCM_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    sget-wide v2, Lcom/urbanairship/push/GCMRegistrar;->a:J

    invoke-static {v1, v0, v2, v3}, Lcom/urbanairship/util/IntentUtils;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    return-void
.end method
