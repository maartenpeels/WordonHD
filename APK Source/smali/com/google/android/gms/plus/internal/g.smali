.class public final Lcom/google/android/gms/plus/internal/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/g$a;
    }
.end annotation


# static fields
.field private static Sz:Landroid/content/Context;

.field private static Uj:Lcom/google/android/gms/plus/internal/c;


# direct methods
.method private static D(Landroid/content/Context;)Lcom/google/android/gms/plus/internal/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/plus/internal/g$a;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/fq;->f(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/g;->Uj:Lcom/google/android/gms/plus/internal/c;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/plus/internal/g;->Sz:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/plus/internal/g;->Sz:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/plus/internal/g;->Sz:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    const-string v1, "Could not get remote context."

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/plus/internal/g;->Sz:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/plus/internal/c$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/plus/internal/g;->Uj:Lcom/google/android/gms/plus/internal/c;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    sget-object v0, Lcom/google/android/gms/plus/internal/g;->Uj:Lcom/google/android/gms/plus/internal/c;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    const-string v1, "Could not load creator class."

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    const-string v1, "Could not instantiate creator."

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    const-string v1, "Could not access creator."

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;I)Landroid/view/View;
    .locals 7

    if-nez p3, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v1, Lcom/google/android/gms/plus/PlusOneDummyView;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/plus/internal/g;->D(Landroid/content/Context;)Lcom/google/android/gms/plus/internal/c;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/plus/internal/c;->a(Lcom/google/android/gms/dynamic/d;IILjava/lang/String;I)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->d(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object p0, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p0

    goto :goto_0
.end method
