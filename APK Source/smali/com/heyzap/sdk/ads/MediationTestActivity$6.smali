.class Lcom/heyzap/sdk/ads/MediationTestActivity$6;
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
    .line 241
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->val$adType:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->val$adType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    # invokes: Lcom/heyzap/sdk/ads/MediationTestActivity;->getAdUnit(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {v1, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$000(Lcom/heyzap/sdk/ads/MediationTestActivity;Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->val$status:Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    sget-object v2, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-virtual {v1, v0, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    move-result-object v0

    .line 248
    iget-object v1, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity$6;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V

    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    # getter for: Lcom/heyzap/sdk/ads/MediationTestActivity;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 259
    return-void
.end method
