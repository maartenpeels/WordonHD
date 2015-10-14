.class final Lcom/google/android/gms/identity/intents/Address$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$b",
        "<",
        "Lcom/google/android/gms/internal/gw;",
        "Lcom/google/android/gms/identity/intents/Address$AddressOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/fc;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .locals 8

    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/identity/intents/Address$AddressOptions;

    move-object v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/identity/intents/Address$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/identity/intents/Address$AddressOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/gw;

    move-result-object v1

    return-object v1
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/identity/intents/Address$AddressOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/gw;
    .locals 8

    instance-of v1, p1, Landroid/app/Activity;

    const-string v2, "An Activity must be used for Address APIs"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fq;->b(ZLjava/lang/Object;)V

    if-nez p4, :cond_0

    new-instance v1, Lcom/google/android/gms/identity/intents/Address$AddressOptions;

    invoke-direct {v1}, Lcom/google/android/gms/identity/intents/Address$AddressOptions;-><init>()V

    move-object v3, v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/gw;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/fc;->getAccountName()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Lcom/google/android/gms/identity/intents/Address$AddressOptions;->theme:I

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/gw;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;I)V

    return-object v1

    :cond_0
    move-object v3, p4

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method
