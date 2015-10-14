.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$2;
.super Ljava/lang/Object;
.source "AdcolonyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;

.field final synthetic val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$2;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$2;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/internal/SettableFuture;

    sget-object v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->NOT_READY:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/internal/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1100(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->retry()V

    .line 226
    :cond_0
    return-void
.end method
