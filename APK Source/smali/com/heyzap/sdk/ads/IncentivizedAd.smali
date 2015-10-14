.class public Lcom/heyzap/sdk/ads/IncentivizedAd;
.super Ljava/lang/Object;
.source "IncentivizedAd.java"


# static fields
.field private static AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

.field private static final CREATIVE_TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile ads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static campaignId:Ljava/lang/Integer;

.field private static creativeId:Ljava/lang/Integer;

.field private static creativeType:Ljava/lang/String;

.field private static debugEnabled:Ljava/lang/Boolean;

.field private static lastDisplayTimeMillis:J

.field private static volatile loadingAds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static minimumDisplayIntervalMillis:J

.field private static userIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->ads:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->loadingAds:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "video"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "interstitial_video"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->CREATIVE_TYPES:Ljava/util/ArrayList;

    .line 35
    sput-object v5, Lcom/heyzap/sdk/ads/IncentivizedAd;->userIdentifier:Ljava/lang/String;

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->creativeId:Ljava/lang/Integer;

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->campaignId:Ljava/lang/Integer;

    .line 38
    sput-object v5, Lcom/heyzap/sdk/ads/IncentivizedAd;->creativeType:Ljava/lang/String;

    .line 39
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->debugEnabled:Ljava/lang/Boolean;

    .line 41
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->lastDisplayTimeMillis:J

    .line 43
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->minimumDisplayIntervalMillis:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static display(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->display(Landroid/app/Activity;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static display(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->display(Landroid/app/Activity;Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V

    .line 120
    return-void
.end method

.method static display(Landroid/app/Activity;Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p2, p0, v0, p1}, Lcom/heyzap/mediation/MediationManager;->display(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fetch()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->fetch(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static fetch(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->fetch(Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V

    .line 61
    return-void
.end method

.method static fetch(Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p1, v0, p0}, Lcom/heyzap/mediation/MediationManager;->fetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->isAvailable(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailable(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/ads/IncentivizedAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->isAvailable(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static setCampaignId(I)V
    .locals 1

    .prologue
    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->campaignId:Ljava/lang/Integer;

    .line 183
    return-void
.end method

.method public static setCreativeId(I)V
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->creativeId:Ljava/lang/Integer;

    .line 178
    return-void
.end method

.method public static setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heyzap/mediation/MediationManager;->setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V

    .line 173
    return-void
.end method

.method public static setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 2

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/ads/IncentivizedAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setTargetCreativeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    sput-object p0, Lcom/heyzap/sdk/ads/IncentivizedAd;->creativeType:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 148
    :goto_0
    sput-object v0, Lcom/heyzap/sdk/ads/IncentivizedAd;->userIdentifier:Ljava/lang/String;

    .line 149
    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
