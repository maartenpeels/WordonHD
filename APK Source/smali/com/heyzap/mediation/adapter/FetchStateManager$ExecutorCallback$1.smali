.class Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback$1;
.super Ljava/lang/Object;
.source "FetchStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;

.field final synthetic val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback$1;->this$0:Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;

    iput-object p2, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback$1;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iput-object p3, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback$1;->this$0:Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;

    # getter for: Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;->delegate:Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;
    invoke-static {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;->access$200(Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;)Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback$1;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v2, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback$1;->val$value:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
