.class Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$3;
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

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$3;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iput-object p2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$3;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$3;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    # getter for: Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->statusListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->access$000(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 99
    iget-object v2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$3;->val$tag:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onClick(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method
