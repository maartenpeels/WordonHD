.class public abstract Lcom/google/android/gms/wearable/WearableListenerService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/WearableListenerService$1;,
        Lcom/google/android/gms/wearable/WearableListenerService$a;
    }
.end annotation


# static fields
.field public static final BIND_LISTENER_INTENT_ACTION:Ljava/lang/String; = "com.google.android.gms.wearable.BIND_LISTENER"


# instance fields
.field private DB:Landroid/os/IBinder;

.field private volatile adu:I

.field private adv:Ljava/lang/String;

.field private adw:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->adu:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->adv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/WearableListenerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->md()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->adw:Landroid/os/Handler;

    return-object v0
.end method

.method private cM(I)Z
    .locals 5

    const/4 v4, 0x0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v2, v4

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method private md()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->adu:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/WearableListenerService;->cM(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->adu:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "com.google.android.gms.wearable.BIND_LISTENER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->DB:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    const-string v2, "WearableLS"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "WearableLS"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WearableLS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->adv:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WearableListenerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->adw:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/WearableListenerService$a;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/WearableListenerService$1;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->DB:Landroid/os/IBinder;

    return-void
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/b;)V
    .locals 0
    .param p1, "dataEvents"    # Lcom/google/android/gms/wearable/b;

    .prologue
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->adw:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/wearable/e;)V
    .locals 0
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/e;

    .prologue
    return-void
.end method

.method public onPeerConnected(Lcom/google/android/gms/wearable/f;)V
    .locals 0
    .param p1, "peer"    # Lcom/google/android/gms/wearable/f;

    .prologue
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/android/gms/wearable/f;)V
    .locals 0
    .param p1, "peer"    # Lcom/google/android/gms/wearable/f;

    .prologue
    return-void
.end method
