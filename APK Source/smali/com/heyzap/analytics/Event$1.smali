.class Lcom/heyzap/analytics/Event$1;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/analytics/Event;->adClickedTime(J)Lcom/heyzap/analytics/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/analytics/Event;

.field final synthetic val$in:J


# direct methods
.method constructor <init>(Lcom/heyzap/analytics/Event;J)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/heyzap/analytics/Event$1;->this$0:Lcom/heyzap/analytics/Event;

    iput-wide p2, p0, Lcom/heyzap/analytics/Event$1;->val$in:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 222
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    const-string v1, "com.heyzap.clicks"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/heyzap/analytics/Event$1;->this$0:Lcom/heyzap/analytics/Event;

    iget-object v2, v2, Lcom/heyzap/analytics/Event;->impressionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/heyzap/analytics/Event$1;->this$0:Lcom/heyzap/analytics/Event;

    invoke-virtual {v3}, Lcom/heyzap/analytics/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ad-clicked-time"

    iget-wide v5, p0, Lcom/heyzap/analytics/Event$1;->val$in:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 229
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 231
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
