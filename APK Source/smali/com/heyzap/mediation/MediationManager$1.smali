.class Lcom/heyzap/mediation/MediationManager$1;
.super Ljava/lang/Object;
.source "MediationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/MediationManager;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/MediationManager;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/MediationManager;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/heyzap/mediation/MediationManager$1;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$1;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$000(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/mediation/config/MediationConfigLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->start()V

    .line 70
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$1;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$100(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    move-result-object v0

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$1;->this$0:Lcom/heyzap/mediation/MediationManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/MediationManager;->fetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
