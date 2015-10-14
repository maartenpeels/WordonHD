.class final Lcom/google/android/gms/wallet/Wallet$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Wallet;
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
        "Lcom/google/android/gms/internal/jg;",
        "Lcom/google/android/gms/wallet/Wallet$WalletOptions;",
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

    check-cast v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-object v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/wallet/Wallet$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/wallet/Wallet$WalletOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/jg;

    move-result-object v1

    return-object v1
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/wallet/Wallet$WalletOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/jg;
    .locals 9

    instance-of v1, p1, Landroid/app/Activity;

    const-string v2, "An Activity must be used for Wallet APIs"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fq;->b(ZLjava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    if-eqz p4, :cond_0

    move-object v3, p4

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/jg;

    iget v6, v3, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->environment:I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/fc;->getAccountName()Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->theme:I

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;ILjava/lang/String;I)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$1;)V

    move-object v3, v1

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method
