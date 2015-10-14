.class public Lcom/heyzap/house/request/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# static fields
.field public static DEFAULT_INCENTIVE_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

.field public static DEFAULT_STATUS_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;


# instance fields
.field private adModel:Lcom/heyzap/house/model/AdModel;

.field private auctionType:Lcom/heyzap/internal/Constants$AuctionType;

.field private campaignId:Ljava/lang/Integer;

.field private cancelled:Z

.field private creativeId:Ljava/lang/Integer;

.field private creativeTypes:I

.field private debug:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private debuggable:Ljava/lang/Boolean;

.field private incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

.field private isImmediate:Z

.field private statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

.field private tag:Ljava/lang/String;

.field private userIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/heyzap/house/request/AdRequest$1;

    invoke-direct {v0}, Lcom/heyzap/house/request/AdRequest$1;-><init>()V

    sput-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_STATUS_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 41
    new-instance v0, Lcom/heyzap/house/request/AdRequest$2;

    invoke-direct {v0}, Lcom/heyzap/house/request/AdRequest$2;-><init>()V

    sput-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_INCENTIVE_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->debuggable:Ljava/lang/Boolean;

    .line 53
    iput-object v2, p0, Lcom/heyzap/house/request/AdRequest;->userIdentifier:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_STATUS_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 56
    sget-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_INCENTIVE_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    .line 58
    iput-object v2, p0, Lcom/heyzap/house/request/AdRequest;->auctionType:Lcom/heyzap/internal/Constants$AuctionType;

    .line 59
    iput-boolean v1, p0, Lcom/heyzap/house/request/AdRequest;->isImmediate:Z

    .line 60
    iput-boolean v1, p0, Lcom/heyzap/house/request/AdRequest;->cancelled:Z

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/heyzap/house/request/AdRequest;->creativeTypes:I

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->debug:Ljava/util/HashMap;

    .line 66
    iput-object p2, p0, Lcom/heyzap/house/request/AdRequest;->tag:Ljava/lang/String;

    .line 67
    iput p1, p0, Lcom/heyzap/house/request/AdRequest;->creativeTypes:I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/house/request/AdRequest;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/heyzap/house/request/AdRequest;->cancelled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/heyzap/house/request/AdRequest;Lcom/heyzap/house/model/AdModel;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/heyzap/house/request/AdRequest;->setAdModel(Lcom/heyzap/house/model/AdModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/house/request/AdRequest;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/heyzap/house/request/AdRequest;->isImmediate:Z

    return v0
.end method

.method private setAdModel(Lcom/heyzap/house/model/AdModel;)V
    .locals 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    .line 116
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p0}, Lcom/heyzap/house/model/AdModel;->setAdRequest(Lcom/heyzap/house/request/AdRequest;)V

    .line 117
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onAvailable(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method private static startActivity(Landroid/app/Activity;Lcom/heyzap/house/model/AdModel;)V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/heyzap/house/request/AdRequest$4;

    invoke-direct {v0, p1, p0}, Lcom/heyzap/house/request/AdRequest$4;-><init>(Lcom/heyzap/house/model/AdModel;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    .line 273
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/house/request/AdRequest;->cancelled:Z

    .line 274
    return-void
.end method

.method public fetch(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {p0}, Lcom/heyzap/house/request/FetchRequest$Factory;->build(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/house/request/FetchRequest;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/heyzap/house/request/AdRequest$3;

    invoke-direct {v1, p0}, Lcom/heyzap/house/request/AdRequest$3;-><init>(Lcom/heyzap/house/request/AdRequest;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setResponseHandler(Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;)V

    .line 164
    invoke-virtual {v0, p1}, Lcom/heyzap/house/request/FetchRequest;->execute(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method public getAdModel()Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method public getAuctionType()Lcom/heyzap/internal/Constants$AuctionType;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->auctionType:Lcom/heyzap/internal/Constants$AuctionType;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->creativeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreativeTypes()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/heyzap/house/request/AdRequest;->creativeTypes:I

    return v0
.end method

.method public getDebuggable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->debuggable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOnIncentiveListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    return-object v0
.end method

.method public getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isImmediate()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/heyzap/house/request/AdRequest;->isImmediate:Z

    return v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->isReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setAuctionType(Lcom/heyzap/internal/Constants$AuctionType;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->auctionType:Lcom/heyzap/internal/Constants$AuctionType;

    .line 250
    return-void
.end method

.method public setCampaignId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->campaignId:Ljava/lang/Integer;

    .line 108
    return-void
.end method

.method public setCreativeId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->creativeId:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method public setDebugable(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->debuggable:Ljava/lang/Boolean;

    .line 100
    return-void
.end method

.method public setIsImmediate(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/heyzap/house/request/AdRequest;->isImmediate:Z

    .line 96
    return-void
.end method

.method public setOnIncentiveListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V
    .locals 1

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_INCENTIVE_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    goto :goto_0
.end method

.method public setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 1

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    sget-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_STATUS_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    goto :goto_0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->tag:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Lcom/heyzap/house/model/AdModel;->setTag(Ljava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->userIdentifier:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-static {p0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/heyzap/analytics/Event;->showAd(Z)Lcom/heyzap/analytics/Event;

    move-result-object v1

    .line 172
    invoke-static {p1}, Lcom/heyzap/internal/Connectivity;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const-string v0, "NO CONNECTIVITY"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 174
    const-string v0, "no-connectivity"

    invoke-virtual {v1, v0}, Lcom/heyzap/analytics/Event;->showAdResult(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 175
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    iget-object v1, p0, Lcom/heyzap/house/request/AdRequest;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToShow(Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->isReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p2, v2}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 190
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p0}, Lcom/heyzap/house/model/AdModel;->setAdRequest(Lcom/heyzap/house/request/AdRequest;)V

    .line 192
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p2}, Lcom/heyzap/house/model/AdModel;->setAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 193
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p3}, Lcom/heyzap/house/model/AdModel;->setTag(Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/heyzap/house/request/FetchRequest;->updateOrientation(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getFormat()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/heyzap/house/model/VideoModel;->FORMAT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    .line 198
    iget v2, v0, Lcom/heyzap/house/model/VideoModel;->size:I

    invoke-virtual {v1, v2}, Lcom/heyzap/analytics/Event;->videoSize(I)Lcom/heyzap/analytics/Event;

    move-result-object v2

    iget v0, v0, Lcom/heyzap/house/model/VideoModel;->percentDownloaded:I

    invoke-virtual {v2, v0}, Lcom/heyzap/analytics/Event;->showAdDownload(I)Lcom/heyzap/analytics/Event;

    .line 201
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/analytics/Event;->showAdTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v2}, Lcom/heyzap/house/model/AdModel;->getImpressionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/heyzap/analytics/Event;->impressionId(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    const-string v2, "fully-cached"

    invoke-virtual {v0, v2}, Lcom/heyzap/analytics/Event;->showAdResult(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    .line 204
    invoke-virtual {v1}, Lcom/heyzap/analytics/Event;->commit()V

    .line 206
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-static {p1, v0}, Lcom/heyzap/house/request/AdRequest;->startActivity(Landroid/app/Activity;Lcom/heyzap/house/model/AdModel;)V

    goto :goto_0

    .line 209
    :cond_4
    const-string v0, "video-not-downloaded-nothing-shown"

    invoke-virtual {v1, v0}, Lcom/heyzap/analytics/Event;->showAdResult(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    .line 210
    invoke-virtual {v1}, Lcom/heyzap/analytics/Event;->commit()V

    .line 212
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    invoke-interface {v0, p3}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToShow(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
