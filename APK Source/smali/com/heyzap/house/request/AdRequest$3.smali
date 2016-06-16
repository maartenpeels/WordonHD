.class Lcom/heyzap/house/request/AdRequest$3;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/request/AdRequest;->fetch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/request/AdRequest;


# direct methods
.method constructor <init>(Lcom/heyzap/house/request/AdRequest;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest$3;->this$0:Lcom/heyzap/house/request/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchResponse(Ljava/util/List;Lcom/heyzap/house/request/FetchRequest;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;",
            "Lcom/heyzap/house/request/FetchRequest;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/AdModel;

    .line 145
    iget-object v2, p0, Lcom/heyzap/house/request/AdRequest$3;->this$0:Lcom/heyzap/house/request/AdRequest;

    # getter for: Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;
    invoke-static {v2}, Lcom/heyzap/house/request/AdRequest;->access$000(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/house/model/AdModel;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/heyzap/house/request/AdRequest$3;->this$0:Lcom/heyzap/house/request/AdRequest;

    # getter for: Lcom/heyzap/house/request/AdRequest;->cancelled:Z
    invoke-static {v2}, Lcom/heyzap/house/request/AdRequest;->access$100(Lcom/heyzap/house/request/AdRequest;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/heyzap/house/request/AdRequest$3;->this$0:Lcom/heyzap/house/request/AdRequest;

    # invokes: Lcom/heyzap/house/request/AdRequest;->setAdModel(Lcom/heyzap/house/model/AdModel;)V
    invoke-static {v2, v0}, Lcom/heyzap/house/request/AdRequest;->access$200(Lcom/heyzap/house/request/AdRequest;Lcom/heyzap/house/model/AdModel;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest$3;->this$0:Lcom/heyzap/house/request/AdRequest;

    # getter for: Lcom/heyzap/house/request/AdRequest;->isImmediate:Z
    invoke-static {v0}, Lcom/heyzap/house/request/AdRequest;->access$300(Lcom/heyzap/house/request/AdRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p2}, Lcom/heyzap/house/request/FetchRequest;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->showAd(Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    .line 153
    if-nez p3, :cond_4

    .line 154
    const-string v1, "not-cached-and-attempted-fetch-no-fill"

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->showAdResult(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    .line 159
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest$3;->this$0:Lcom/heyzap/house/request/AdRequest;

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/request/AdRequest$3;->this$0:Lcom/heyzap/house/request/AdRequest;

    invoke-virtual {v1}, Lcom/heyzap/house/request/AdRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToFetch(Ljava/lang/String;)V

    .line 161
    :cond_3
    return-void

    .line 156
    :cond_4
    const-string v1, "not-cached-and-attempted-fetch-failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->showAdResult(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    goto :goto_1
.end method

.method public onModelsReceived(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/AdModel;

    .line 137
    iget-object v2, p0, Lcom/heyzap/house/request/AdRequest$3;->this$0:Lcom/heyzap/house/request/AdRequest;

    invoke-virtual {v0, v2}, Lcom/heyzap/house/model/AdModel;->setAdRequest(Lcom/heyzap/house/request/AdRequest;)V

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method
