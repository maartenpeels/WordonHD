.class public Lcom/heyzap/sdk/ads/VideoAd;
.super Ljava/lang/Object;
.source "VideoAd.java"


# static fields
.field private static AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sput-object v0, Lcom/heyzap/sdk/ads/VideoAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static display(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/heyzap/sdk/ads/VideoAd;->display(Landroid/app/Activity;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static display(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/heyzap/sdk/ads/VideoAd;->display(Landroid/app/Activity;Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V

    .line 99
    return-void
.end method

.method static display(Landroid/app/Activity;Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/ads/VideoAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p2, p0, v0, p1}, Lcom/heyzap/mediation/MediationManager;->display(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fetch()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/VideoAd;->fetch(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static fetch(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/heyzap/sdk/ads/VideoAd;->fetch(Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V

    .line 38
    return-void
.end method

.method static fetch(Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/ads/VideoAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p1, v0, p0}, Lcom/heyzap/mediation/MediationManager;->fetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/VideoAd;->isAvailable(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailable(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/ads/VideoAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->isAvailable(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static setCampaignId(I)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public static setCreativeId(I)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public static setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 2

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/ads/VideoAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setTargetCreativeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
