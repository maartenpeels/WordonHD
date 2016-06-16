.class Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "MediatedDisplayConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Display config loader failed to load /mediate"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;

    iget-object v0, v0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->val$displayConfigFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string v0, "Retrying /mediate"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;

    invoke-virtual {v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->retry()V

    .line 72
    :cond_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lcom/heyzap/mediation/display/DisplayConfig;

    invoke-direct {v0, p3}, Lcom/heyzap/mediation/display/DisplayConfig;-><init>(Lorg/json/JSONObject;)V

    .line 55
    iget-object v1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;

    iget-object v1, v1, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->val$displayConfigFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Display config loader got json exception"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;

    iget-object v0, v0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->val$displayConfigFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string v0, "Retrying /mediate"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;

    invoke-virtual {v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->retry()V

    goto :goto_0
.end method
