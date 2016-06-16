.class Lcom/heyzap/house/model/InterstitialModel$1;
.super Ljava/lang/Object;
.source "InterstitialModel.java"

# interfaces
.implements Lcom/heyzap/internal/GenericCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/InterstitialModel;->doPostFetchActions(Landroid/content/Context;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/model/InterstitialModel;

.field final synthetic val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;


# direct methods
.method constructor <init>(Lcom/heyzap/house/model/InterstitialModel;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/heyzap/house/model/InterstitialModel$1;->this$0:Lcom/heyzap/house/model/InterstitialModel;

    iput-object p2, p0, Lcom/heyzap/house/model/InterstitialModel$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 116
    const-string v0, "(HTML ASSETS CACHED) %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/house/model/InterstitialModel$1;->this$0:Lcom/heyzap/house/model/InterstitialModel;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/heyzap/house/model/InterstitialModel$1;->this$0:Lcom/heyzap/house/model/InterstitialModel;

    invoke-virtual {v0, v4}, Lcom/heyzap/house/model/InterstitialModel;->setIsFullyCached(Z)V

    .line 119
    iget-object v0, p0, Lcom/heyzap/house/model/InterstitialModel$1;->this$0:Lcom/heyzap/house/model/InterstitialModel;

    invoke-virtual {v0, v4}, Lcom/heyzap/house/model/InterstitialModel;->setIsReady(Z)V

    .line 121
    iget-object v0, p0, Lcom/heyzap/house/model/InterstitialModel$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/heyzap/house/model/InterstitialModel$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    iget-object v1, p0, Lcom/heyzap/house/model/InterstitialModel$1;->this$0:Lcom/heyzap/house/model/InterstitialModel;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/model/InterstitialModel$1;->this$0:Lcom/heyzap/house/model/InterstitialModel;

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->creativeDownloadEndTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/model/InterstitialModel$1;->this$0:Lcom/heyzap/house/model/InterstitialModel;

    iget-object v1, v1, Lcom/heyzap/house/model/InterstitialModel;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->impressionId(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/model/InterstitialModel$1;->this$0:Lcom/heyzap/house/model/InterstitialModel;

    invoke-virtual {v1}, Lcom/heyzap/house/model/InterstitialModel;->getCreativeSuccess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->creativeDownloadFailedAmount(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 129
    return-void
.end method
