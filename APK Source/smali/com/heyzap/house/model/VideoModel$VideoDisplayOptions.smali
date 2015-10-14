.class public Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;
.super Ljava/lang/Object;
.source "VideoModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/model/VideoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoDisplayOptions"
.end annotation


# instance fields
.field public allowClick:Ljava/lang/Boolean;

.field public allowHide:Ljava/lang/Boolean;

.field public allowSkip:Ljava/lang/Boolean;

.field public allowStreamingFallback:Ljava/lang/Boolean;

.field public forceStreaming:Ljava/lang/Boolean;

.field public lockoutTime:Ljava/lang/Integer;

.field public postRollInterstitial:Ljava/lang/Boolean;

.field public requiredDownloadPercent:Ljava/lang/Double;

.field public showCountdown:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/heyzap/house/model/VideoModel;


# direct methods
.method public constructor <init>(Lcom/heyzap/house/model/VideoModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 322
    iput-object p1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->this$0:Lcom/heyzap/house/model/VideoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->lockoutTime:Ljava/lang/Integer;

    .line 324
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowSkip:Ljava/lang/Boolean;

    .line 325
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowHide:Ljava/lang/Boolean;

    .line 326
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowClick:Ljava/lang/Boolean;

    .line 327
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowStreamingFallback:Ljava/lang/Boolean;

    .line 328
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->forceStreaming:Ljava/lang/Boolean;

    .line 329
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->postRollInterstitial:Ljava/lang/Boolean;

    .line 330
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->showCountdown:Ljava/lang/Boolean;

    .line 331
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->requiredDownloadPercent:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setOptions(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 334
    const-string v0, "lockout_time"

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->lockoutTime:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->lockoutTime:Ljava/lang/Integer;

    .line 335
    const-string v0, "allow_skip"

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowSkip:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowSkip:Ljava/lang/Boolean;

    .line 336
    const-string v0, "allow_hide"

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowHide:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowHide:Ljava/lang/Boolean;

    .line 337
    const-string v0, "allow_click"

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowClick:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowClick:Ljava/lang/Boolean;

    .line 338
    const-string v0, "post_roll_interstitial"

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->postRollInterstitial:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->postRollInterstitial:Ljava/lang/Boolean;

    .line 339
    const-string v0, "allow_streaming_fallback"

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowStreamingFallback:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowStreamingFallback:Ljava/lang/Boolean;

    .line 340
    const-string v0, "force_streaming"

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->forceStreaming:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->forceStreaming:Ljava/lang/Boolean;

    .line 341
    const-string v0, "show_countdown"

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->showCountdown:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->showCountdown:Ljava/lang/Boolean;

    .line 342
    const-string v0, "required_download_percent"

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->requiredDownloadPercent:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->requiredDownloadPercent:Ljava/lang/Double;

    .line 343
    return-void
.end method
