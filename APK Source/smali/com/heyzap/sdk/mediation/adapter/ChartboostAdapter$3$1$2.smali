.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 227
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;->val$localFetch:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;->val$localFetch:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    sget-object v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->NOT_READY:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/internal/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->retry()V

    .line 234
    :cond_0
    return-void
.end method
