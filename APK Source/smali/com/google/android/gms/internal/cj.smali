.class public final Lcom/google/android/gms/internal/cj;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/cl;",
        ">;"
    }
.end annotation


# static fields
.field private static final oC:Lcom/google/android/gms/internal/cj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cj;->oC:Lcom/google/android/gms/internal/cj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdOverlayCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ck;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/cj;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Using AdOverlay from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cc;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/cj;->oC:Lcom/google/android/gms/internal/cj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cj;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/ck;
    :try_end_0
    .catch Lcom/google/android/gms/internal/cj$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cj$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cj$a;
        }
    .end annotation

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cj$a;

    const-string v1, "Ad overlay requires the useClientJar flag in intent extras."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cj$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/app/Activity;)Lcom/google/android/gms/internal/ck;
    .locals 4

    const/4 v2, 0x0

    const-string v3, "Could not create remote AdOverlay."

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cj;->z(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cl;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/cl;->a(Lcom/google/android/gms/dynamic/d;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ck$a;->m(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ck;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not create remote AdOverlay."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Could not create remote AdOverlay."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cj;->l(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cl;

    move-result-object v0

    return-object v0
.end method

.method protected l(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cl;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/cl$a;->n(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cl;

    move-result-object v0

    return-object v0
.end method
