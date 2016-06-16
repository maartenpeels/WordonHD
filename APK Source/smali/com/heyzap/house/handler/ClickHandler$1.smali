.class Lcom/heyzap/house/handler/ClickHandler$1;
.super Ljava/lang/Object;
.source "ClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/handler/ClickHandler;->doClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/handler/ClickHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$customPackageName:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/heyzap/house/handler/ClickHandler$1;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    iput-object p2, p0, Lcom/heyzap/house/handler/ClickHandler$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/heyzap/house/handler/ClickHandler$1;->val$customPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/heyzap/house/handler/ClickHandler$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 41
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$1;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    # getter for: Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;
    invoke-static {v0}, Lcom/heyzap/house/handler/ClickHandler;->access$000(Lcom/heyzap/house/handler/ClickHandler;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->adClicked(Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->adClickedTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 44
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$1;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    # getter for: Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;
    invoke-static {v0}, Lcom/heyzap/house/handler/ClickHandler;->access$000(Lcom/heyzap/house/handler/ClickHandler;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/handler/ClickHandler$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/heyzap/house/handler/ClickHandler$1;->val$customPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/house/model/AdModel;->onClick(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$1;->val$context:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "Loading..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/heyzap/house/handler/ClickHandler$1$1;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/house/handler/ClickHandler$1$1;-><init>(Lcom/heyzap/house/handler/ClickHandler$1;Landroid/app/ProgressDialog;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$1;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    # getter for: Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;
    invoke-static {v0}, Lcom/heyzap/house/handler/ClickHandler;->access$000(Lcom/heyzap/house/handler/ClickHandler;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$1;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    # getter for: Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;
    invoke-static {v0}, Lcom/heyzap/house/handler/ClickHandler;->access$000(Lcom/heyzap/house/handler/ClickHandler;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/handler/ClickHandler$1;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    # getter for: Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;
    invoke-static {v1}, Lcom/heyzap/house/handler/ClickHandler;->access$000(Lcom/heyzap/house/handler/ClickHandler;)Lcom/heyzap/house/model/AdModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/house/model/AdModel;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onClick(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$1;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    iget-object v1, p0, Lcom/heyzap/house/handler/ClickHandler$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/heyzap/house/handler/ClickHandler$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/house/handler/ClickHandler;->gotoMarket(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :cond_1
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
