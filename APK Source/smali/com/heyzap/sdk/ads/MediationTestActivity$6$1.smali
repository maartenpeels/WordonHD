.class Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

.field final synthetic val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$6;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v2, "future failure"

    invoke-direct {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/heyzap/internal/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->success:Z

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const-string v1, "Display failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 257
    :cond_0
    return-void
.end method
