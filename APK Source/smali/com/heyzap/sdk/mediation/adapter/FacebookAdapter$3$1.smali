.class Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    # getter for: Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$200()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 159
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetch()Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    move-result-object v0

    .line 160
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3$1$1;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 169
    return-void
.end method
