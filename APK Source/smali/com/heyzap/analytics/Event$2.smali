.class Lcom/heyzap/analytics/Event$2;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/analytics/Event;->commit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/analytics/Event;

.field final synthetic val$flush:Z


# direct methods
.method constructor <init>(Lcom/heyzap/analytics/Event;Z)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/heyzap/analytics/Event$2;->this$0:Lcom/heyzap/analytics/Event;

    iput-boolean p2, p0, Lcom/heyzap/analytics/Event$2;->val$flush:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v0, "framework"

    .line 303
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    const-string v1, "com.heyzap.analytics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/heyzap/analytics/Event$2;->this$0:Lcom/heyzap/analytics/Event;

    iget-object v1, v1, Lcom/heyzap/analytics/Event;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/heyzap/analytics/Event$2;->this$0:Lcom/heyzap/analytics/Event;

    invoke-virtual {v2}, Lcom/heyzap/analytics/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    iget-boolean v1, p0, Lcom/heyzap/analytics/Event$2;->val$flush:Z

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 313
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 315
    :try_start_1
    iget-object v3, p0, Lcom/heyzap/analytics/Event$2;->this$0:Lcom/heyzap/analytics/Event;

    invoke-virtual {v3}, Lcom/heyzap/analytics/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 316
    const-string v3, "metrics"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->framework:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 318
    const-string v2, "framework"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    :goto_1
    sget-object v2, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    const-string v3, "/in_game_api/metrics/export"

    new-instance v4, Lcom/heyzap/analytics/Event$2$1;

    invoke-direct {v4, p0, v0}, Lcom/heyzap/analytics/Event$2$1;-><init>(Lcom/heyzap/analytics/Event$2;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {v2, v3, v1, v4}, Lcom/heyzap/internal/APIClient;->postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 340
    :cond_0
    return-void

    .line 308
    :catch_0
    move-exception v1

    .line 309
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 320
    :cond_1
    :try_start_2
    const-string v2, "framework"

    sget-object v3, Lcom/heyzap/sdk/ads/HeyzapAds;->framework:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 322
    :catch_1
    move-exception v2

    .line 323
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
