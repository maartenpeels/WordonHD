.class public Lcom/urbanairship/UAirship;
.super Ljava/lang/Object;


# static fields
.field private static final f:Lcom/urbanairship/UAirship;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/urbanairship/AirshipConfigOptions;

.field c:Lcom/urbanairship/analytics/Analytics;

.field d:Lcom/urbanairship/ApplicationMetrics;

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/UAirship;

    invoke-direct {v0}, Lcom/urbanairship/UAirship;-><init>()V

    sput-object v0, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/UAirship;->e:Z

    return-void
.end method

.method public static a()Lcom/urbanairship/UAirship;
    .locals 1

    sget-object v0, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V
    .locals 5

    const-class v0, Lcom/urbanairship/UAirship;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Application argument must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    iget-boolean v1, v1, Lcom/urbanairship/UAirship;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "You can only call UAirship.takeOff once."

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    sget-object v1, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/urbanairship/UAirship;->a:Landroid/content/Context;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->a()V

    if-nez p1, :cond_7

    invoke-static {v2}, Lcom/urbanairship/AirshipConfigOptions;->a(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    :goto_1
    sget-object v2, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    iput-object v1, v2, Lcom/urbanairship/UAirship;->b:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v1}, Lcom/urbanairship/AirshipConfigOptions;->d()I

    move-result v2

    sput v2, Lcom/urbanairship/Logger;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - UALib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/urbanairship/Logger;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Airship Take Off! Lib Version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    const-string v3, "4.0.2 / App key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/urbanairship/AirshipConfigOptions;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In Production? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/urbanairship/AirshipConfigOptions;->e()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "AirshipConfigOptions are not valid. Unable to take off! Check your airshipconfig.properties file for the errors listed above."

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Application configuration is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-boolean v2, v1, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    invoke-direct {v2}, Lcom/urbanairship/UAirship;->n()V

    :cond_3
    sget-object v2, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/urbanairship/UAirship;->e:Z

    iget-boolean v2, v1, Lcom/urbanairship/AirshipConfigOptions;->k:Z

    if-eqz v2, :cond_4

    const-string v2, "Initializing Push."

    invoke-static {v2}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->a()V

    sget v2, Lcom/urbanairship/Logger;->a:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v2, v1, Lcom/urbanairship/AirshipConfigOptions;->l:Z

    if-eqz v2, :cond_5

    const-string v2, "Initializing Rich Push."

    invoke-static {v2}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->c()V

    :cond_5
    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    iget-boolean v1, v1, Lcom/urbanairship/LocationOptions;->a:Z

    if-eqz v1, :cond_6

    const-string v1, "Initializing Location."

    invoke-static {v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->a()V

    :cond_6
    const-string v1, "Registering default Actions."

    invoke-static {v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/actions/ActionRegistry;->a()Lcom/urbanairship/actions/ActionRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionRegistry;->b()V

    const-string v1, "Initializing Analytics."

    invoke-static {v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    new-instance v2, Lcom/urbanairship/ApplicationMetrics;

    invoke-direct {v2, p0}, Lcom/urbanairship/ApplicationMetrics;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/urbanairship/UAirship;->d:Lcom/urbanairship/ApplicationMetrics;

    sget-object v1, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    new-instance v2, Lcom/urbanairship/analytics/Analytics;

    invoke-direct {v2, p0}, Lcom/urbanairship/analytics/Analytics;-><init>(Landroid/app/Application;)V

    iput-object v2, v1, Lcom/urbanairship/UAirship;->c:Lcom/urbanairship/analytics/Analytics;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_7
    move-object v1, p1

    goto/16 :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    iget-object v0, v0, Lcom/urbanairship/UAirship;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Landroid/content/pm/PackageManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    iget-object v0, v0, Lcom/urbanairship/UAirship;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static d()Landroid/content/pm/PackageInfo;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NameNotFound for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Disabling."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/urbanairship/UAirship;->m()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->m()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()I
    .locals 1

    invoke-static {}, Lcom/urbanairship/UAirship;->m()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    const-string v0, "4.0.2"

    return-object v0
.end method

.method private static m()Landroid/content/pm/ApplicationInfo;
    .locals 1

    sget-object v0, Lcom/urbanairship/UAirship;->f:Lcom/urbanairship/UAirship;

    iget-object v0, v0, Lcom/urbanairship/UAirship;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 8

    const/high16 v5, 0x10000000

    const/4 v4, 0x0

    const-string v7, "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION"

    const-string v6, "android.intent.category.DEFAULT"

    const-string v3, "AndroidManifest.xml missing required service: "

    const-string v0, "android.permission.INTERNET"

    invoke-static {v0}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/urbanairship/UAirship$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/UAirship$1;-><init>(Lcom/urbanairship/UAirship;)V

    const-class v0, Lcom/urbanairship/CoreReceiver;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AndroidManifest.xml missing required receiver: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/urbanairship/CoreReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/UAirship;->b:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->m:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/urbanairship/analytics/EventService;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AndroidManifest.xml missing required service: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/urbanairship/analytics/EventService;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/UAirship;->b:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->k:Z

    if-eqz v0, :cond_3

    const-class v0, Lcom/urbanairship/push/PushService;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AndroidManifest.xml missing required service: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/urbanairship/push/PushManager;->m()V

    :cond_3
    iget-object v0, p0, Lcom/urbanairship/UAirship;->b:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->l:Z

    if-eqz v0, :cond_4

    const-class v0, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AndroidManifest.xml missing required service: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_4
    const-class v0, Lcom/urbanairship/actions/ActionService;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AndroidManifest.xml missing required service: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/urbanairship/actions/ActionService;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_5
    const-class v0, Lcom/urbanairship/actions/ActionActivity;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "AndroidManifest.xml missing ActionActivity.  Action.startActivityForResult will not work."

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION"

    const-string v2, "http://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->c()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme http.  Landing page action may not function properly."

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION"

    const-string v2, "https://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->c()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme https Landing page action may not function properly."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/urbanairship/UAirship;->m()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "A separate process is detected for: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". In the AndroidManifest.xml, remove the android:process attribute."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/urbanairship/UAirship;->m()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    :cond_b
    const-class v0, Lcom/urbanairship/UrbanAirshipProvider;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to resolve UrbanAirshipProvider. Please check that the provider is defined in your AndroidManifest.xml, and that the authority string is set to  \"YOUR_PACKAGENAME.urbanairship.provider\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public final g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/UAirship;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final h()Lcom/urbanairship/AirshipConfigOptions;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/UAirship;->b:Lcom/urbanairship/AirshipConfigOptions;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/UAirship;->e:Z

    return v0
.end method

.method public final k()Lcom/urbanairship/analytics/Analytics;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/UAirship;->c:Lcom/urbanairship/analytics/Analytics;

    return-object v0
.end method

.method public final l()Lcom/urbanairship/ApplicationMetrics;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/UAirship;->d:Lcom/urbanairship/ApplicationMetrics;

    return-object v0
.end method
