.class public Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;
.super Ljava/lang/Object;
.source "ConcurrentLoaderStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field private static defaultMaxLoad:D


# instance fields
.field public final maxLoad:D

.field public final networkConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->defaultMaxLoad:D

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->maxLoad:D

    .line 133
    iput-object p2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->networkConfigs:Ljava/util/List;

    .line 134
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "max_load"

    sget-wide v1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->defaultMaxLoad:D

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->maxLoad:D

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->networkConfigs:Ljava/util/List;

    .line 120
    const-string v0, "networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v1, v6

    .line 121
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->networkConfigs:Ljava/util/List;

    new-instance v3, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "failed to load loader config:"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 126
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 129
    :cond_0
    return-void
.end method
