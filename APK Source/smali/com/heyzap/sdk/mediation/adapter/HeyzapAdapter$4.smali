.class Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;
.super Ljava/lang/Object;
.source "HeyzapAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->start(Ljava/util/List;)Lcom/heyzap/internal/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

.field final synthetic val$retFuture:Lcom/heyzap/internal/SettableFuture;

.field final synthetic val$updatedUnits:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Ljava/util/Set;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->val$updatedUnits:Ljava/util/Set;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->val$retFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->val$updatedUnits:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 176
    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    invoke-static {v3, v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 177
    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    iget-object v3, v3, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v3, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/internal/FutureUtils;->allOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->val$retFuture:Lcom/heyzap/internal/SettableFuture;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/heyzap/internal/FutureUtils;->bind(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 180
    return-void
.end method
