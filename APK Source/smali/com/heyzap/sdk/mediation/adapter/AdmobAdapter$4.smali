.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;
.super Ljava/lang/Object;
.source "AdmobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

.field final synthetic val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

.field final synthetic val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    .line 167
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v2, "Ad not ready"

    invoke-direct {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$200()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->attemptNextFetch()V
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V

    .line 179
    :cond_1
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v1, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    .line 170
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->clickListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v1, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->clickListener:Lcom/heyzap/internal/SettableFuture;

    .line 171
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->closeListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v1, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->closeListener:Lcom/heyzap/internal/SettableFuture;

    .line 172
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v1, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    .line 173
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto :goto_0
.end method
