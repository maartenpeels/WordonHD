.class Lcom/google/android/gms/tagmanager/ce;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final YX:Ljava/lang/String;

.field private static final YY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/a;->O:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ce;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->da:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ce;->YX:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->cZ:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ce;->YY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/ce;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public jX()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation

    const-wide/16 v1, 0x0

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    sget-object v0, Lcom/google/android/gms/tagmanager/ce;->YX:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/d$a;

    sget-object v0, Lcom/google/android/gms/tagmanager/ce;->YY:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lT()Lcom/google/android/gms/internal/d$a;

    move-result-object v5

    if-eq p0, v5, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lT()Lcom/google/android/gms/internal/d$a;

    move-result-object v5

    if-eq v0, v5, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->k(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/dg;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->k(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/dg;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lR()Lcom/google/android/gms/tagmanager/dg;

    move-result-object v6

    if-eq v5, v6, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lR()Lcom/google/android/gms/tagmanager/dg;

    move-result-object v6

    if-eq v0, v6, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    move-result-wide v7

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_0

    move-wide v0, v7

    move-wide v2, v5

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    return-object v0

    :cond_0
    move-wide v9, v3

    move-wide v11, v1

    move-wide v2, v11

    move-wide v0, v9

    goto :goto_0
.end method
