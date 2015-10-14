.class Lcom/google/android/gms/tagmanager/ai;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->bv(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$i;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    if-nez v0, :cond_0

    const-string v0, "supplemental missing experimentSupplemental"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    invoke-static {p0, v0}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    invoke-static {p0, v0}, Lcom/google/android/gms/tagmanager/ai;->b(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    invoke-static {p0, v0}, Lcom/google/android/gms/tagmanager/ai;->c(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V

    goto :goto_0
.end method

.method private static b(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/ai;->c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/d$a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a map value, ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Ljava/util/Map;

    move-object v0, p0

    goto :goto_0
.end method

.method private static c(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/c$d;)V
    .locals 12

    iget-object v2, p1, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    array-length v3, v2

    const/4 p1, 0x0

    move v4, p1

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    iget-object p1, v5, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "GaExperimentRandom: No key"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p1, v4, 0x1

    move v4, p1

    goto :goto_0

    :cond_0
    iget-object p1, v5, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of p1, v1, Ljava/lang/Number;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    :goto_2
    iget-wide v6, v5, Lcom/google/android/gms/internal/c$c;->eN:J

    iget-wide v8, v5, Lcom/google/android/gms/internal/c$c;->eO:J

    iget-boolean v10, v5, Lcom/google/android/gms/internal/c$c;->eP:Z

    if-eqz v10, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-ltz v10, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long p1, v10, v8

    if-lez p1, :cond_8

    :cond_1
    cmp-long p1, v6, v8

    if-gtz p1, :cond_4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    sub-long/2addr v8, v6

    long-to-double v8, v8

    mul-double/2addr v8, v10

    long-to-double v6, v6

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_3
    iget-object v1, v5, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->bv(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-wide v6, v5, Lcom/google/android/gms/internal/c$c;->eQ:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_2

    const-string p1, "gtm"

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "gtm"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "lifetime"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, v5, Lcom/google/android/gms/internal/c$c;->eQ:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, "GaExperimentRandom: random range invalid"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string p1, "gtm"

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v6, p1, Ljava/util/Map;

    if-eqz v6, :cond_6

    check-cast p1, Ljava/util/Map;

    const-string v6, "lifetime"

    iget-wide v7, v5, Lcom/google/android/gms/internal/c$c;->eQ:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const-string p1, "GaExperimentRandom: gtm not a map"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    move-object p1, v1

    goto :goto_3
.end method
