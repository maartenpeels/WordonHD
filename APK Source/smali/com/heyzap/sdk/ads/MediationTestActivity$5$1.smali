.class Lcom/heyzap/sdk/ads/MediationTestActivity$5$1;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$5;

.field final synthetic val$fetchResultFuture:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$5;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$5;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5$1;->val$fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5$1;->val$fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v3, "future failure"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/heyzap/internal/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    .line 227
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$5;

    iget-object v1, v1, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "available"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void

    .line 227
    :cond_0
    const-string v0, "not "

    goto :goto_0
.end method
