.class Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetch()Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

.field final synthetic val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$000(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->placementId:Ljava/lang/String;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iput-object v0, v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 140
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setImpressionListener(Lcom/facebook/ads/ImpressionListener;)V

    .line 143
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    .line 144
    return-void
.end method
