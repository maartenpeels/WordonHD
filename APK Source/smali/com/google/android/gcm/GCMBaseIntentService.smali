.class public abstract Lcom/google/android/gcm/GCMBaseIntentService;
.super Landroid/app/IntentService;


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;

.field private static final b:Ljava/lang/Object;

.field private static d:I

.field private static final e:Ljava/util/Random;

.field private static final f:I

.field private static final g:Ljava/lang/String;


# instance fields
.field private final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/android/gcm/GCMBaseIntentService;

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->d:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Ljava/util/Random;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->f:I

    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->g:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const-string v0, "DynamicSenderIds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCMIntentService-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/gcm/GCMBaseIntentService;->d:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/gcm/GCMBaseIntentService;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Intent service name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->c:[Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "GCM_LIB"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->a:Landroid/os/PowerManager$WakeLock;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "GCMBaseIntentService"

    const-string v1, "Acquiring wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sender id not set on constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->c:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract b(Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "com.google.android.gcm.intent.RETRY"

    const-string v0, "Wakelock reference is null"

    const-string v0, "Releasing wakelock"

    const-string v0, "GCMBaseIntentService"

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->e(Landroid/content/Context;)V

    const-string v1, "registration_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unregistered"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GCMBaseIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleRegistration: registrationId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", unregistered = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->j(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gcm/GCMBaseIntentService;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_b

    const-string v1, "GCMBaseIntentService"

    const-string v2, "Releasing wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    return-void

    :cond_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->j(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->h(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_c

    const-string v2, "GCMBaseIntentService"

    const-string v3, "Releasing wakelock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_2
    :try_start_4
    const-string v1, "GCMBaseIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Registration error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->k(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/google/android/gcm/GCMBaseIntentService;->e:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "GCMBaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scheduling registration retry, backoff = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "token"

    sget-object v5, Lcom/google/android/gcm/GCMBaseIntentService;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {p0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget v2, Lcom/google/android/gcm/GCMBaseIntentService;->f:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/gcm/GCMBaseIntentService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "message_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v0, "deleted_messages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "total_deleted"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "GCMBaseIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received deleted messages notification: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_6
    const-string v1, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GCM returned invalid number of deleted messages: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v0, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received unknown special message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "token"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v0, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received invalid token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_8

    const-string v1, "GCMBaseIntentService"

    const-string v2, "Releasing wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_8
    :try_start_8
    const-string v1, "GCMBaseIntentService"

    const-string v2, "Wakelock reference is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :cond_9
    :try_start_9
    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->d(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->b(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_b
    :try_start_a
    const-string v1, "GCMBaseIntentService"

    const-string v2, "Wakelock reference is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_c
    :try_start_b
    const-string v2, "GCMBaseIntentService"

    const-string v3, "Wakelock reference is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method
