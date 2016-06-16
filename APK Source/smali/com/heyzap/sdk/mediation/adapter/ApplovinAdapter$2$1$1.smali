.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->val$fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    sget-object v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->NOT_READY:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/internal/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->createFetchFuture()Lcom/heyzap/internal/SettableFuture;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->retry()V

    .line 154
    :cond_0
    return-void
.end method
