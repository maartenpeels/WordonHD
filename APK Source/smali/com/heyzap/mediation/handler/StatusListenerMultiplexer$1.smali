.class Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;
.super Ljava/lang/Object;
.source "StatusListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->addDisplay(Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

.field final synthetic val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iput-object p2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iput-object p3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    .line 64
    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->success:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v0

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    # getter for: Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->statusListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->access$000(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 71
    if-eqz v1, :cond_1

    .line 72
    iget-object v3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;->val$tag:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onShow(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-boolean v3, v3, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->usesAudio:Z

    if-eqz v3, :cond_0

    .line 74
    invoke-interface {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onAudioStarted()V

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;->val$tag:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToShow(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_2
    return-void
.end method
