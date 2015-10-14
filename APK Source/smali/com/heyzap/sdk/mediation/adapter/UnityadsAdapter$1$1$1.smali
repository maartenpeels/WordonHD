.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;
.super Ljava/lang/Object;
.source "UnityadsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

.field final synthetic val$fetchHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->val$fetchHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->val$fetchHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    sget-object v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->NOT_READY:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/internal/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$000()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->retry()V

    .line 113
    :cond_0
    return-void
.end method
