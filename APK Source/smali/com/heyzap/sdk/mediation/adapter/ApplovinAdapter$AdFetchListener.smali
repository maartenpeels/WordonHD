.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdFetchListener"
.end annotation


# instance fields
.field private final fetchFuture:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;"
        }
    .end annotation
.end field

.field private final incentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/SettableFuture;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;",
            "Lcom/applovin/adview/AppLovinIncentivizedInterstitial;",
            ")V"
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/internal/SettableFuture;

    .line 268
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->incentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 269
    return-void
.end method

.method private getFetchFailureReason(I)Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;
    .locals 1

    .prologue
    .line 282
    sparse-switch p1, :sswitch_data_0

    .line 296
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    :goto_0
    return-object v0

    .line 285
    :sswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 288
    :sswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 290
    :sswitch_2
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 292
    :sswitch_3
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 294
    :sswitch_4
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f4 -> :sswitch_1
        -0x190 -> :sswitch_3
        -0x12c -> :sswitch_0
        -0x66 -> :sswitch_1
        -0x6 -> :sswitch_2
        -0x1 -> :sswitch_4
        0xcc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->incentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-direct {v1, p1, v2}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;-><init>(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;

    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->getFetchFailureReason(I)Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method
