.class Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;
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
    .line 104
    iput-object p1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iput-object p2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iput-object p3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/internal/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 108
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    # getter for: Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->incentiveListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->access$100(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    .line 109
    if-eqz v1, :cond_0

    .line 110
    iget-object v3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;->val$tag:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;->val$tag:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;->onIncomplete(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method
