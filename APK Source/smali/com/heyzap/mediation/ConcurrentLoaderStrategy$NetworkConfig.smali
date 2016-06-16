.class public Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;
.super Ljava/lang/Object;
.source "ConcurrentLoaderStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkConfig"
.end annotation


# static fields
.field private static DEFAULT_TTL:I


# instance fields
.field public adUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field public adapterName:Ljava/lang/String;

.field public data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public load:D

.field public loadingFuture:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x2710

    sput v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->DEFAULT_TTL:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DI",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    .line 141
    sget v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->DEFAULT_TTL:I

    iput v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->ttl:I

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->data:Ljava/util/Map;

    .line 170
    iput-object p1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adapterName:Ljava/lang/String;

    .line 171
    iput-wide p2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    .line 172
    iput p4, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->ttl:I

    .line 173
    iput-object p5, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adUnits:Ljava/util/List;

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-wide v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    .line 141
    sget v1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->DEFAULT_TTL:I

    iput v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->ttl:I

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->data:Ljava/util/Map;

    .line 148
    const-string v1, "network"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adapterName:Ljava/lang/String;

    .line 149
    const-string v1, "load"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    .line 150
    const-string v1, "ttl"

    sget v2, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->DEFAULT_TTL:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->ttl:I

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adUnits:Ljava/util/List;

    .line 152
    const-string v1, "ad_units"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 153
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adUnits:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/heyzap/internal/Constants$AdUnit;->valueOf(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 158
    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 160
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 162
    instance-of v1, v2, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 163
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "key not a string"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_1
    iget-object v5, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->data:Ljava/util/Map;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 168
    :cond_2
    return-void
.end method
