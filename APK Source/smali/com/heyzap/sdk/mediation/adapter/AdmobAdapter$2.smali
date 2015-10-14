.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;
.super Ljava/lang/Object;
.source "AdmobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetch()Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

.field final synthetic val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$000(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 116
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iput-object v0, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 117
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitId:Ljava/lang/String;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 119
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 120
    const-string v2, "39A0D0AC94EE1E08823DA7384DA220C3"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 122
    return-void
.end method
