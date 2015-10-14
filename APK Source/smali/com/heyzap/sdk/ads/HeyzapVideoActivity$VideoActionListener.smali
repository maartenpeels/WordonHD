.class Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;
.super Ljava/lang/Object;
.source "HeyzapVideoActivity.java"

# interfaces
.implements Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/HeyzapVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;Lcom/heyzap/sdk/ads/HeyzapVideoActivity$1;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;-><init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    return-void
.end method


# virtual methods
.method public click()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onClick()V

    .line 256
    return-void
.end method

.method public clickUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    invoke-static {p1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public completed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 268
    const-string v0, "(FINISH VIDEO)"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    # invokes: Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onAudioFinished()V
    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$300(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    .line 271
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    .line 273
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAdComplete:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$502(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 274
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    # getter for: Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;
    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$600(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->postRollInterstitial:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0, v2}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->switchToView(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public error()V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/heyzap/internal/Logger;->trace()V

    .line 284
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    # invokes: Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onAudioFinished()V
    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$300(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    .line 285
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    .line 287
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isApplicationOnTop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->hide()V

    .line 298
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    # getter for: Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;
    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$700(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->postRollInterstitial:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    # getter for: Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;
    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$800(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->onInterstitialFallback()V

    .line 294
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->switchToView(I)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onHide()V

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "(FINISH VIDEO)"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    # invokes: Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onAudioFinished()V
    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$300(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    .line 244
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    .line 246
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    # getter for: Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;
    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$400(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->postRollInterstitial:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onHide()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->switchToView(I)V

    goto :goto_0
.end method

.method public installHeyzap()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "(STARTING VIDEO)"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    .line 235
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    # invokes: Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onAudioStarted()V
    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$200(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    .line 236
    return-void
.end method
