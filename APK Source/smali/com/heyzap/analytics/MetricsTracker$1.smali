.class final Lcom/heyzap/analytics/MetricsTracker$1;
.super Ljava/lang/Object;
.source "MetricsTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/analytics/MetricsTracker;->sendMetrics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 113
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    const-string v1, "com.heyzap.analytics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 115
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 116
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 117
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    const-string v4, "start"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 129
    const-string v0, "metrics"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :goto_1
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    const-string v3, "/in_game_api/metrics/export"

    new-instance v4, Lcom/heyzap/analytics/MetricsTracker$1$1;

    invoke-direct {v4, p0, v1}, Lcom/heyzap/analytics/MetricsTracker$1$1;-><init>(Lcom/heyzap/analytics/MetricsTracker$1;Landroid/content/SharedPreferences;)V

    invoke-static {v0, v3, v2, v4}, Lcom/heyzap/internal/APIClient;->postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 148
    return-void

    .line 130
    :catch_1
    move-exception v0

    .line 131
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
