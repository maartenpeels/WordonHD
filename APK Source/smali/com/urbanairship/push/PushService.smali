.class public Lcom/urbanairship/push/PushService;
.super Landroid/app/IntentService;


# static fields
.field private static final b:Landroid/util/SparseArray;

.field private static c:I


# instance fields
.field private a:Lcom/urbanairship/push/PushPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/urbanairship/push/PushService;->b:Landroid/util/SparseArray;

    const/4 v0, 0x0

    sput v0, Lcom/urbanairship/push/PushService;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "PushService"

    invoke-direct {p0, v0}, Lcom/urbanairship/push/PushService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized a()I
    .locals 4

    const-class v1, Lcom/urbanairship/push/PushService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "UA_GCM_WAKE_LOCK"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    sget-object v2, Lcom/urbanairship/push/PushService;->b:Landroid/util/SparseArray;

    sget v3, Lcom/urbanairship/push/PushService;->c:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/urbanairship/push/PushService;->c:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget v0, Lcom/urbanairship/push/PushService;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(I)V
    .locals 3

    const-class v1, Lcom/urbanairship/push/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/push/PushService;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/urbanairship/push/PushService;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "PushService startService"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    const-class v0, Lcom/urbanairship/push/PushService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "com.urbanairship.push.WAKE_LOCK_ID"

    invoke-static {}, Lcom/urbanairship/push/PushService;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.APID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-static {v1, v0, v2, v3}, Lcom/urbanairship/util/IntentUtils;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->b(Landroid/app/Application;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/PushService;->a:Lcom/urbanairship/push/PushPreferences;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x258

    const/16 v7, 0x1f4

    const-string v0, "Delete request failed. Response status: "

    const-string v0, "com.urbanairship.push.UPDATE_APID"

    const-string v0, "com.urbanairship.push.DELETE_APID"

    if-nez p1, :cond_1

    const-string v0, "PushService started with a null intent. Ending task."

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.urbanairship.push.WAKE_LOCK_ID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.urbanairship.push.WAKE_LOCK_ID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "com.urbanairship.push.DELETE_APID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "com.urbanairship.push.APID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/urbanairship/push/PushService;->a:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/urbanairship/push/PushService;->a:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/urbanairship/AirshipConfigOptions;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api/apids/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/urbanairship/restclient/AppAuthenticatedRequest;

    const-string v4, "DELETE"

    invoke-direct {v3, v4, v2}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;->a()Lcom/urbanairship/restclient/Response;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "Error deleting APID. Scheduling retry."

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    const-string v2, "com.urbanairship.push.DELETE_APID"

    invoke-static {v2, v0}, Lcom/urbanairship/push/PushService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    if-ltz v1, :cond_0

    invoke-static {v1}, Lcom/urbanairship/push/PushService;->a(I)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delete APID status code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_5

    const/16 v3, 0x194

    if-ne v2, v3, :cond_7

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Delete request succeeded with status: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-ltz v1, :cond_6

    invoke-static {v1}, Lcom/urbanairship/push/PushService;->a(I)V

    :cond_6
    throw v0

    :cond_7
    if-lt v2, v7, :cond_8

    if-ge v2, v8, :cond_8

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delete request failed. Response status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (will retry)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    const-string v2, "com.urbanairship.push.DELETE_APID"

    invoke-static {v2, v0}, Lcom/urbanairship/push/PushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Delete request failed. Response status: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v2, "com.urbanairship.push.UPDATE_APID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/urbanairship/push/PushService;->a:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/urbanairship/push/PushService;->a:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v0, "Push is not enabled, so skipping stale APID update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating APID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "No APID. Cannot update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/urbanairship/AirshipConfigOptions;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api/apids/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushRegistrationBuilder;->a()Lcom/urbanairship/push/PushRegistrationPayload;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :try_start_3
    invoke-virtual {v3}, Lcom/urbanairship/push/PushRegistrationPayload;->a()Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    :try_start_4
    new-instance v4, Lcom/urbanairship/restclient/AppAuthenticatedRequest;

    const-string v5, "PUT"

    invoke-direct {v4, v5, v2}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "application/json"

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Body: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    invoke-virtual {v4}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;->a()Lcom/urbanairship/restclient/Response;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v2, "Error registering APID. Scheduling a retry."

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    const-string v2, "com.urbanairship.push.UPDATE_APID"

    invoke-static {v2, v0}, Lcom/urbanairship/push/PushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Error creating JSON Registration body."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string v2, "Error setting registrationRequest entity."

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-virtual {v2}, Lcom/urbanairship/restclient/Response;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Registration status code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Registration result "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v4, v3, :cond_d

    const-string v0, "Registration request succeeded."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/PushService;->a:Lcom/urbanairship/push/PushPreferences;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/PushPreferences;->d(Z)V

    iget-object v0, p0, Lcom/urbanairship/push/PushService;->a:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/push/PushPreferences;->a(J)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->h()V

    goto/16 :goto_1

    :cond_d
    if-lt v4, v7, :cond_e

    if-ge v4, v8, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Registration request response status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (will retry)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    const-string v2, "com.urbanairship.push.UPDATE_APID"

    invoke-static {v2, v0}, Lcom/urbanairship/push/PushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Registration request response status: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {p1}, Lcom/urbanairship/push/GCMRegistrar;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_10
    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {p1}, Lcom/urbanairship/push/GCMMessageHandler;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_11
    const-string v2, "com.urbanairship.push.GCM_REGISTRATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->a()V

    goto/16 :goto_1

    :cond_12
    const-string v2, "com.urbanairship.push.START_SERVICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Push enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v2

    if-nez v2, :cond_13

    const-string v0, "Push is disabled.  Not starting Push Service."

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->o()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_14

    const-wide/32 v7, 0x5265c00

    add-long/2addr v3, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_15

    :cond_14
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/urbanairship/push/PushPreferences;->d(Z)V

    :cond_15
    invoke-virtual {v2}, Lcom/urbanairship/AirshipConfigOptions;->a()Lcom/urbanairship/AirshipConfigOptions$TransportType;

    move-result-object v0

    sget-object v2, Lcom/urbanairship/AirshipConfigOptions$TransportType;->a:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    if-ne v0, v2, :cond_16

    const-string v0, "The Helium transport is no longer supported."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    sget-object v2, Lcom/urbanairship/AirshipConfigOptions$TransportType;->c:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    if-ne v0, v2, :cond_17

    const-string v0, "The Hybrid transport is no longer supported. Using GCM."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_17
    const-string v0, "Starting GCM"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method
