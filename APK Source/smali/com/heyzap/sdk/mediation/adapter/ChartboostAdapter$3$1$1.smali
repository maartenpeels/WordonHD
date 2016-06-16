.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;

.field final synthetic val$localFetch:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;->val$localFetch:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->checkReady(Lcom/heyzap/internal/Constants$AdUnit;)Z
    invoke-static {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1900(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;->val$localFetch:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;->val$localFetch:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;->retry()V

    .line 224
    :cond_1
    return-void
.end method
