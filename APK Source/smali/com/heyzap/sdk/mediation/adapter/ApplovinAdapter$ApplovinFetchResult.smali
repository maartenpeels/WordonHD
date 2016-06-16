.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;
.source "ApplovinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplovinFetchResult"
.end annotation


# instance fields
.field public final cachedAd:Lcom/applovin/sdk/AppLovinAd;

.field public final incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;)V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->cachedAd:Lcom/applovin/sdk/AppLovinAd;

    .line 257
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->success:Z

    .line 259
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->errorCode:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    .line 249
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->errorMessage:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->success:Z

    .line 251
    iput-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->cachedAd:Lcom/applovin/sdk/AppLovinAd;

    .line 252
    iput-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 253
    return-void
.end method
