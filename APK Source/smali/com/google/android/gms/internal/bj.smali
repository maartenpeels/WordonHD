.class public final Lcom/google/android/gms/internal/bj;
.super Ljava/lang/Object;


# instance fields
.field public final nc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/bi;",
            ">;"
        }
    .end annotation
.end field

.field public final nd:J

.field public final ne:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ng:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nh:Ljava/lang/String;

.field public final ni:J

.field public nj:I

.field public nk:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/dw;->n(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation Response JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->y(Ljava/lang/String;)V

    :cond_0
    const-string v1, "ad_networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v10, v4

    move v4, v3

    move v3, v10

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/bi;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/bi;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v4, :cond_1

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/bi;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/google/android/gms/internal/bj;->nj:I

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/bj;->nk:I

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bj;->nc:Ljava/util/List;

    const-string v1, "qdata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bj;->nh:Ljava/lang/String;

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "ad_network_timeout_millis"

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/bj;->nd:J

    const-string v1, "click_urls"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bj;->ne:Ljava/util/List;

    const-string v1, "imp_urls"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bj;->nf:Ljava/util/List;

    const-string v1, "nofill_urls"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bj;->ng:Ljava/util/List;

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/bj;->ni:J

    :goto_2
    return-void

    :cond_3
    move-wide v0, v7

    goto :goto_1

    :cond_4
    iput-wide v7, p0, Lcom/google/android/gms/internal/bj;->nd:J

    iput-object v9, p0, Lcom/google/android/gms/internal/bj;->ne:Ljava/util/List;

    iput-object v9, p0, Lcom/google/android/gms/internal/bj;->nf:Ljava/util/List;

    iput-object v9, p0, Lcom/google/android/gms/internal/bj;->ng:Ljava/util/List;

    iput-wide v7, p0, Lcom/google/android/gms/internal/bj;->ni:J

    goto :goto_2
.end method

.method private a(Lcom/google/android/gms/internal/bi;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/bi;->mY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
