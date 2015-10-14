.class Lcom/heyzap/house/model/AdModel$2;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "AdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/AdModel;->onImpression(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/model/AdModel;


# direct methods
.method constructor <init>(Lcom/heyzap/house/model/AdModel;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    # getter for: Lcom/heyzap/house/model/AdModel;->adRequest:Lcom/heyzap/house/request/AdRequest;
    invoke-static {v0}, Lcom/heyzap/house/model/AdModel;->access$100(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    # getter for: Lcom/heyzap/house/model/AdModel;->adRequest:Lcom/heyzap/house/request/AdRequest;
    invoke-static {v0}, Lcom/heyzap/house/model/AdModel;->access$100(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    .line 198
    instance-of v1, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;

    if-eqz v1, :cond_0

    .line 199
    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->onImpressed()V

    .line 204
    :cond_0
    :try_start_0
    const-string v0, "status"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 205
    const-string v0, "(IMPRESSION) %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/heyzap/house/model/AdModel;->sentImpression:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$202(Lcom/heyzap/house/model/AdModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
