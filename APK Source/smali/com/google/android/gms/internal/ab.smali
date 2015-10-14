.class public final Lcom/google/android/gms/internal/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static final lw:J


# instance fields
.field private lA:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/y;",
            ">;"
        }
    .end annotation
.end field

.field private final li:Ljava/lang/Object;

.field private final ll:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/dh;",
            ">;"
        }
    .end annotation
.end field

.field private lm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final ln:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final lo:Lcom/google/android/gms/internal/z;

.field private final lp:Landroid/content/Context;

.field private final lq:Lcom/google/android/gms/internal/ad;

.field private lr:Z

.field private final ls:Landroid/view/WindowManager;

.field private final lt:Landroid/os/PowerManager;

.field private final lu:Landroid/app/KeyguardManager;

.field private lv:Lcom/google/android/gms/internal/ac;

.field private lx:J

.field private ly:Z

.field private lz:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ab;->lw:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dh;)V
    .locals 6

    iget-object v0, p2, Lcom/google/android/gms/internal/dh;->oj:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->bK()Lcom/google/android/gms/internal/dx;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/dh;->oj:Lcom/google/android/gms/internal/dz;

    new-instance v5, Lcom/google/android/gms/internal/ae;

    iget-object v0, p2, Lcom/google/android/gms/internal/dh;->oj:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/dh;->oj:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dz;->bK()Lcom/google/android/gms/internal/dx;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dx;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ab;-><init>(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/dx;Landroid/view/View;Lcom/google/android/gms/internal/ad;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/dx;Landroid/view/View;Lcom/google/android/gms/internal/ad;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->li:Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ab;->lx:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->lA:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->ll:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->ln:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->lm:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ab;->ly:Z

    new-instance v0, Lcom/google/android/gms/internal/z;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ak;->lS:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gms/internal/dh;->qs:Lorg/json/JSONObject;

    invoke-direct {v0, v1, p3, v2, v3}, Lcom/google/android/gms/internal/z;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/dx;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->lo:Lcom/google/android/gms/internal/z;

    iput-object p5, p0, Lcom/google/android/gms/internal/ab;->lq:Lcom/google/android/gms/internal/ad;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->ls:Landroid/view/WindowManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->lt:Landroid/os/PowerManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->lu:Landroid/app/KeyguardManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->lp:Landroid/content/Context;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ab;->a(Lcom/google/android/gms/internal/ad;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lq:Lcom/google/android/gms/internal/ad;

    new-instance v1, Lcom/google/android/gms/internal/ab$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ab$1;-><init>(Lcom/google/android/gms/internal/ab;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/ad$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lq:Lcom/google/android/gms/internal/ad;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ab;->b(Lcom/google/android/gms/internal/ad;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking ad unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->lo:Lcom/google/android/gms/internal/z;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/z;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->x(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ab;)Lcom/google/android/gms/internal/ad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lq:Lcom/google/android/gms/internal/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ab;->lr:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ab;)Lcom/google/android/gms/internal/z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lo:Lcom/google/android/gms/internal/z;

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/ac;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->li:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ab;->lv:Lcom/google/android/gms/internal/ac;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected a(Lcom/google/android/gms/internal/ad;)V
    .locals 1

    const-string v0, "http://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ad;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dz;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/dz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ab;->d(Z)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lA:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "units"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lq:Lcom/google/android/gms/internal/ad;

    const-string v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected a(Landroid/view/View;Z)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lt:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lu:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ap()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->li:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->lz:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ab$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ab$2;-><init>(Lcom/google/android/gms/internal/ab;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ab;->lz:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/gms/internal/ab;->lp:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ab;->lz:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected aq()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->li:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->lz:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->lp:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ab;->lz:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ab;->lz:Landroid/content/BroadcastReceiver;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ar()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->li:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ab;->ly:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ab;->av()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ab;->aq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ab;->ax()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ab;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ab;->ly:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ab;->as()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untracked ad unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ab;->lo:Lcom/google/android/gms/internal/z;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/z;->ao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->x(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "JSON Failure while processing active view data."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected as()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lv:Lcom/google/android/gms/internal/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lv:Lcom/google/android/gms/internal/ac;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ac;->a(Lcom/google/android/gms/internal/ab;)V

    :cond_0
    return-void
.end method

.method public at()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->li:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ab;->ly:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected au()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->ln:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->lm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ab;->lm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected av()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected aw()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "afmaVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/ab;->lo:Lcom/google/android/gms/internal/z;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/z;->am()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "activeViewJSON"

    iget-object v3, p0, Lcom/google/android/gms/internal/ab;->lo:Lcom/google/android/gms/internal/z;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/z;->an()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timestamp"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adFormat"

    iget-object v3, p0, Lcom/google/android/gms/internal/ab;->lo:Lcom/google/android/gms/internal/z;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/z;->al()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hashCode"

    iget-object v3, p0, Lcom/google/android/gms/internal/ab;->lo:Lcom/google/android/gms/internal/z;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/z;->ao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected ax()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ab;->aw()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "doneReasonCode"

    const-string v2, "u"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/ad;)V
    .locals 2

    const-string v0, "/updateActiveView"

    new-instance v1, Lcom/google/android/gms/internal/ab$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ab$3;-><init>(Lcom/google/android/gms/internal/ab;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    const-string v0, "/activeViewPingSent"

    new-instance v1, Lcom/google/android/gms/internal/ab$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ab$4;-><init>(Lcom/google/android/gms/internal/ab;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    const-string v0, "/visibilityChanged"

    new-instance v1, Lcom/google/android/gms/internal/ab$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ab$5;-><init>(Lcom/google/android/gms/internal/ab;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    const-string v0, "/viewabilityChanged"

    sget-object v1, Lcom/google/android/gms/internal/ba;->mG:Lcom/google/android/gms/internal/bb;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    return-void
.end method

.method protected c(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x2

    const-string v13, "top"

    const-string v12, "right"

    const-string v11, "left"

    const-string v10, "bottom"

    new-array v0, v1, [I

    new-array v1, v1, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ab;->aw()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    aget v4, v0, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    aget v0, v0, v4

    iput v0, v3, Landroid/graphics/Rect;->top:I

    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->right:I

    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ab;->ls:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ab;->ls:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v7, "viewBox"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "top"

    iget v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v8, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "bottom"

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "left"

    iget v9, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v8, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "right"

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v0

    invoke-virtual {v8, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "adBox"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "top"

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v8, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "bottom"

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "left"

    iget v9, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v8, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "right"

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-virtual {v8, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "globalVisibleBox"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "top"

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual {v7, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "bottom"

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual {v7, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "left"

    iget v8, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual {v7, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "right"

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v7, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "localVisibleBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "top"

    iget v7, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v7, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v7

    invoke-virtual {v4, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "bottom"

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v7

    invoke-virtual {v4, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "left"

    iget v7, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v7, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v7

    invoke-virtual {v4, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "right"

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v6, v2}, Lcom/google/android/gms/internal/ab;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "screenDensity"

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v2

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "isVisible"

    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/ab;->a(Landroid/view/View;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1
.end method

.method protected c(Lcom/google/android/gms/internal/ad;)V
    .locals 1

    const-string v0, "/viewabilityChanged"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ad;->e(Ljava/lang/String;)V

    const-string v0, "/visibilityChanged"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ad;->e(Ljava/lang/String;)V

    const-string v0, "/activeViewPingSent"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ad;->e(Ljava/lang/String;)V

    const-string v0, "/updateActiveView"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ad;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lA:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/y;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/ab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Z)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/internal/ab;->li:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ab;->lr:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ab;->ly:Z

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    if-eqz p1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ab;->lx:J

    sget-wide v5, Lcom/google/android/gms/internal/ab;->lw:J

    add-long/2addr v3, v5

    cmp-long v3, v3, v0

    if-lez v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ab;->lx:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->ll:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->ln:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ab;->ar()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ab;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ab;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ab;->au()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ab;->as()V

    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Active view update failed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ab;->d(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ab;->d(Z)V

    return-void
.end method
