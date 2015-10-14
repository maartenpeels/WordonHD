.class Lcom/heyzap/sdk/ads/MediationTestActivity$5;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity;->makeSecondaryUI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

.field final synthetic val$adType:Landroid/widget/RadioGroup;

.field final synthetic val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/RadioGroup;Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$adType:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$adType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    # invokes: Lcom/heyzap/sdk/ads/MediationTestActivity;->getAdUnit(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {v1, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$000(Lcom/heyzap/sdk/ads/MediationTestActivity;Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getFetchRequestStore()Lcom/heyzap/mediation/FetchRequestStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/FetchRequestStore;->add(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 214
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    new-array v2, v4, [Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isStarted(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    new-array v2, v4, [Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->start(Ljava/util/List;)Lcom/heyzap/internal/SettableFuture;

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$5$1;

    invoke-direct {v1, p0, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity$5$1;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity$5;Lcom/heyzap/internal/SettableFuture;)V

    iget-object v2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    # getter for: Lcom/heyzap/sdk/ads/MediationTestActivity;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v2}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 231
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$5$2;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$5$2;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method
